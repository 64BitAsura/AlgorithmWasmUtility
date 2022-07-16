use serde::{Serialize, Deserialize};
use wasm_bindgen::prelude::*;
use std::hash::{Hash};
use std::fmt;
use std::collections::{BinaryHeap, HashMap};
use std::collections::hash_map::Entry;
use std::cmp::Ordering;
use data_structures::{Graph, Edge, Vertex, VertexTrait};

#[cfg(feature = "wee_alloc")]
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[derive(Clone, Hash, Copy, Serialize, Deserialize)]
struct Node<K: VertexTrait>{
    vertex: K,
    cost: usize,
    f: usize
}

impl <K:VertexTrait + Serialize + fmt::Display> VertexTrait for Node<K>{
}

impl <K:VertexTrait + Serialize + fmt::Display> fmt::Display for Node<K>{
  fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
    return write!(f, "Node ( vertex: {}, cost: {}, f: {} )",self.vertex, self.cost, self.f);
  }
}

impl<K: VertexTrait> PartialEq for Node<K> {
  fn eq(&self, other: &Self) -> bool {
      self.f.eq(&other.f) && self.cost.eq(&other.cost)
  }
}

impl<K: VertexTrait> Eq for Node<K> {}

impl <K:VertexTrait>Ord for Node<K> {
       fn cmp(&self, other: &Node<K>) -> Ordering {
           // Notice that the we flip the ordering here
           match other.f.cmp(&self.f){
            Ordering::Equal => other.cost.cmp(&self.cost),
            s=>s
           }
       }
   }
  
   // `PartialOrd` needs to be implemented as well.
   impl <K:VertexTrait> PartialOrd for Node<K> {
       fn partial_cmp(&self, other: &Node<K>) -> Option<Ordering> {
           Some(self.cmp(other))
       }
   }

#[derive(Serialize, Deserialize)]
pub struct WasmEdge(pub usize, pub usize, pub usize);

fn init_node<K: VertexTrait>(vertex: K)-> Node<K>{
    return Node{vertex: vertex, cost: 1, f:0}
}

fn init_node_with_estimated_cost<K: VertexTrait>(vertex: K, cost: usize, f: usize)-> Node<K>{
  return Node{vertex: vertex, cost: cost, f:f}
}

#[wasm_bindgen]
pub fn shortest_path_for_js(edges_serialized: JsValue, start: JsValue, destination: JsValue, heuristic: &js_sys::Function)-> Result<JsValue, serde_wasm_bindgen::Error>  {
    let edges: Vec<WasmEdge> = serde_wasm_bindgen::from_value(edges_serialized)?;

    let start_node = serde_wasm_bindgen::from_value(start)?;
    let destination_node = serde_wasm_bindgen::from_value(destination)?;

    let mut local_edges: Vec<Edge<usize>> = edges.iter().map(|edge|{
      return Edge::new(edge.0, edge.1, edge.2.into());
    }).collect();

    let sp: Vec<usize> = shortest_path(&mut local_edges, 
      start_node, 
      destination_node, 
       heuristic);
    return serde_wasm_bindgen::to_value(&sp);
}

fn shortest_path<'a, K: VertexTrait>
(edges: &mut Vec<Edge<K>>, 
   start: K, destination: K, 
   heuristic: &js_sys::Function)->Vec<K>{
  let mut graph = Graph::new();
  for edge in edges.iter(){
    graph.add(edge);
  }

  // create open min-heap  
  let mut open_heap: BinaryHeap<Node<K>> = BinaryHeap::new();
  let mut parents: HashMap<K, (K, usize)> = HashMap::new();
  open_heap.push(init_node(start));
  while let Some(Node{vertex, cost, ..}) = open_heap.pop() {
    if vertex == destination {
      // return the found shortest path 
      let mut path = Vec::new();
      let mut node = destination;
      path.push(node);
      while node != start {
        node = parents.get(&node).unwrap().0;
        path.push(node);
      }
      path.reverse();
      return path;
    }
    // if current parent of node cost is higher than new found cost, then lets not process it
    if let Some((_, c)) = parents.get(&vertex){
      if cost > *c {
        continue;
      }
    }
   
    // get the neighbour vertecies 
    for (neighbour, move_cost) in graph.find_neighbours(Vertex(vertex)){
      let new_cost = cost + move_cost;
      let h:usize;
      match parents.entry(neighbour.0){
         Entry::Vacant(e)=>{
          h = serde_wasm_bindgen::from_value(heuristic.call1(&JsValue::undefined(), &JsValue::from_str(&vertex.to_string())).unwrap()).unwrap();
          e.insert((vertex, new_cost));
         }
         Entry::Occupied(mut e)=>{
          if e.get().1 > new_cost{
            h = serde_wasm_bindgen::from_value(heuristic.call1(&JsValue::undefined(), &JsValue::from_str(&vertex.to_string())).unwrap()).unwrap();
            e.insert((vertex, new_cost));
          }else {
           continue;
          }
         }
      }
      
      open_heap.push(init_node_with_estimated_cost(neighbour.0, new_cost, h+new_cost));
      
    }
  }
  
  return Vec::new();
}
