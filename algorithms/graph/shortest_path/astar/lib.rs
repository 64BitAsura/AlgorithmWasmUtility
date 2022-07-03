use serde::{Serialize, Deserialize};
use wasm_bindgen::{JsObject, JsCast};
use wasm_bindgen::describe::WasmDescribe;
use wasm_bindgen::prelude::*;
use std::string::ToString;
use std::marker::{Sized};
use std::hash::{Hash, Hasher};
use std::rc::Rc;
use std::collections::{BinaryHeap, HashMap};
use std::collections::hash_map::Entry;
use std::cmp::Reverse;
use std::cell::{Cell, RefCell};
use std::cmp::Ordering;
use crate::data_structures::graph::{Graph, Edge, EMPTY, Vertex, VertexTrait};

#[derive(PartialEq, Clone, Eq, Hash, Copy, Serialize, Deserialize, Debug)]
struct Node<K: VertexTrait + ToString + EMPTY<K>>{
    vertex: K,
    cost: usize,
    parent: K,
    f: usize
}

impl <K:VertexTrait + EMPTY<K> + ToString + Serialize> VertexTrait for Node<K>{

}

impl <K:VertexTrait+ EMPTY<K> + ToString>Ord for Node<K> {
       fn cmp(&self, other: &Node<K>) -> Ordering {
           // Notice that the we flip the ordering here
           self.f.cmp(&other.f)
       }
   }
  
   // `PartialOrd` needs to be implemented as well.
   impl <K:VertexTrait+ EMPTY<K> + ToString> PartialOrd for Node<K> {
       fn partial_cmp(&self, other: &Node<K>) -> Option<Ordering> {
           Some(self.cmp(other))
       }
   }

#[derive(Serialize, Deserialize)]
pub struct Wasm_Edge(pub u8, pub u8, pub u8);

fn init_node<K: VertexTrait+EMPTY<K>+ToString>(vertex: K)-> Node<K>{
    return Node{vertex: vertex, cost: 1, f:0, parent: vertex.empty_definition()}
}

fn init_node_with_estimated_cost<K: VertexTrait+EMPTY<K>+ToString>(vertex: K, parent: K, cost: usize, f: usize)-> Node<K>{
  return Node{vertex: vertex, cost: cost, f:f, parent: parent}
}

#[wasm_bindgen]
pub fn astar_shortest_path(edges_serialized: JsValue, start: JsValue, destination: JsValue, heuristic: &js_sys::Function)-> Result<JsValue, serde_wasm_bindgen::Error>  {
    let edges: Vec<Wasm_Edge> = serde_wasm_bindgen::from_value(edges_serialized)?;

    let start_node: u8 = serde_wasm_bindgen::from_value(start)?;
    let destination_node: u8 = serde_wasm_bindgen::from_value(destination)?;

    let mut local_edges: Vec<Edge<u8>> = edges.iter().map(|edge|{
      return Edge::new(edge.0, edge.1, edge.2.into());
    }).collect();

    let sp: Vec<u8> = shortest_path(&mut local_edges, 
      start_node, 
      destination_node, 
       heuristic);
    return serde_wasm_bindgen::to_value(&sp);
}

use std::fmt::Debug;
fn shortest_path<'a, K: VertexTrait + EMPTY<K> + ToString + Debug>
(edges: &mut Vec<Edge<K>>, 
   start: K, destination: K, 
   heuristic: &js_sys::Function)->Vec<K>{
  let mut graph = Graph::new();
  for edge in edges.iter(){
    graph.add(edge);
  }

  // create open min-heap  
  let mut open_heap: BinaryHeap<Reverse<Node<K>>> = BinaryHeap::new();
  let mut parents: HashMap<K, (K, usize)> = HashMap::new();
  open_heap.push(Reverse(init_node(start)));
  let mut path = Vec::new();
  while let Some(Reverse(Node{vertex, cost, parent, ..})) = open_heap.pop() {
    path.push(vertex);
    if vertex == destination {
      // return the found shortest path 
      return path;
    }
    // if current parent of node cost is higher than new found cost, then lets not process it
    if let Some((_, c)) = parents.get(&vertex){
      if cost > *c {
        continue;
      }
    }
   
    for (neighbour, move_cost) in graph.find_neighbours(Vertex(vertex)){
      let new_cost = cost + move_cost;
      let h:usize;
      let insert: bool;
      match parents.entry(vertex){
         Entry::Vacant(e)=>{
          h = serde_wasm_bindgen::from_value(heuristic.call1(&JsValue::undefined(), &JsValue::from_str(&vertex.to_string())).unwrap()).unwrap();
          e.insert((neighbour.0, new_cost));
          insert = true;
         }
         Entry::Occupied(mut e)=>{
          if e.get().1 > new_cost{
            h = serde_wasm_bindgen::from_value(heuristic.call1(&JsValue::undefined(), &JsValue::from_str(&vertex.to_string())).unwrap()).unwrap();
            e.insert((neighbour.0, new_cost));
            insert = true;
          }else {
            h=0;
            insert=false;
          }
         }
      }
      if insert == true {
        open_heap.push(Reverse(init_node_with_estimated_cost(neighbour.0, vertex, new_cost, h+new_cost)));
      }
    }
  }
  
  return Vec::new();
}
