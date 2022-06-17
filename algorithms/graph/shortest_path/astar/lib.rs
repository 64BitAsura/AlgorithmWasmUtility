use serde::{Serialize, Deserialize};
use wasm_bindgen::{JsObject, JsCast};
use wasm_bindgen::describe::WasmDescribe;
use wasm_bindgen::prelude::*;
use std::marker::{Sized};
use std::hash::{Hash, Hasher};
use std::rc::Rc;
use std::collections::{BinaryHeap, HashMap};
use std::cmp::Reverse;
use std::cell::{Cell, RefCell};
use std::cmp::Ordering;
use crate::data_structures::graph::{Graph, Edge, EMPTY, Vertex, VertexTrait};

#[derive(PartialEq, Clone, Eq, Hash, Copy, Serialize, Deserialize)]
struct Node<K: VertexTrait>{
    vertex: K,
    cost: u8,
    g: u8,
    f: u8,
    h: u8,
    closed: bool,
    visited: bool,
    parent: K
}

impl <K:VertexTrait + EMPTY<K>> VertexTrait for Node<K>{

}

impl <K:VertexTrait+ EMPTY<K>>Ord for Node<K> {
       fn cmp(&self, other: &Node<K>) -> Ordering {
           // Notice that the we flip the ordering here
           other.f.cmp(&self.f)
       }
   }
  
   // `PartialOrd` needs to be implemented as well.
   impl <K:VertexTrait+ EMPTY<K>> PartialOrd for Node<K> {
       fn partial_cmp(&self, other: &Node<K>) -> Option<Ordering> {
           Some(self.cmp(other))
       }
   }

#[derive(Serialize, Deserialize)]
pub struct Wasm_Edge(u8, u8, u8);

fn init_node<K: VertexTrait+EMPTY<K>>(vertex: K, cost: u8)-> Node<K>{
    return Node{vertex: vertex, cost: cost, g: 0, f:0, h:0, closed: false, visited: false, parent: vertex.empty_definition()}
}


#[wasm_bindgen]
pub fn astar_shortest_path(edges_serialized: JsValue, start: JsValue, destination: JsValue, heuristic: &js_sys::Function)-> Result<JsValue, serde_wasm_bindgen::Error>  {
    let mut node_dict: HashMap<u8, Node<u8>> = HashMap::new();
    let edges: Vec<Wasm_Edge> = serde_wasm_bindgen::from_value(edges_serialized)?;

    let start_node: u8 = serde_wasm_bindgen::from_value(start)?;
    let destination_node: u8 = serde_wasm_bindgen::from_value(destination)?;

    let mut local_edges: Vec<Edge<u8>> = edges.iter().map(|edge|{
      if node_dict.get(&edge.0).is_none(){
        node_dict.insert(edge.0, init_node(edge.0, edge.2));
      }
      if node_dict.get(&edge.1).is_none(){
        node_dict.insert(edge.1, init_node(edge.1, edge.2));
      }
      return Edge::new(edge.0, edge.1, edge.2.into());
    }).collect();

    let sp: Vec<K> = shortest_path(&mut local_edges, node_dict, start_node, destination_node, heuristic);
    return serde_wasm_bindgen::to_value(&sp);
}

fn shortest_path<'js, K: VertexTrait + EMPTY<K>>(edges: &mut Vec<Edge<K>>, node_dict: &mut HashMap<K, Node<K>>,
   start: &Node<K>, destination: &Node<K>, heuristic: &js_sys::Function)->Vec<K> where &'js wasm_bindgen::JsValue: From<K>{
  let mut graph = Graph::new();
  for edge in edges.iter(){
    graph.add(edge);
  }
  // create open min-heap  
  let mut open_heap = BinaryHeap::new();
  open_heap.push(Reverse(*start));
  while open_heap.len() > 0 {
      let mut current_node = open_heap.pop().unwrap().0;
      if current_node.vertex == destination.vertex {
       let mut result: Vec<K> = Vec::new();
       while current_node.parent != (&current_node).vertex.empty_definition() {
            result.push((&current_node).vertex);
            current_node = *(node_dict.get(&current_node.parent).unwrap());
       }
       return result;
      }
      current_node.closed = true;
      let current_vertex = Vertex(current_node.vertex);
      let neighbours = graph.find_neighbours(current_vertex);
      for peer in neighbours.iter(){
         let mut peer_node = node_dict.get_mut(&peer.0).unwrap();
         if peer_node.closed == true {
           continue;
         }

         let gScore = current_node.g + peer_node.cost;
         let beenVisited = peer_node.visited;
         if  !beenVisited || gScore < current_node.g {
              peer_node.visited = true;
              peer_node.parent = current_node.vertex;
              if peer_node.h == 0 {
                peer_node.h = serde_wasm_bindgen::from_value(heuristic.call1(&JsValue::undefined(), peer_node.vertex.into()).unwrap()).unwrap();
              }
              peer_node.g = gScore;
              peer_node.f = gScore + peer_node.h;
              if !beenVisited{
                open_heap.push(Reverse(*peer_node));
              }else {
                let tmp = open_heap.pop().unwrap();
                open_heap.push(tmp);
              }
         }
      }
  }
  return Vec::new();
}
