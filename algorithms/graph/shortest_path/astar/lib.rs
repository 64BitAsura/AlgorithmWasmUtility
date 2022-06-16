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

#[derive(PartialEq, Clone, Eq, Ord, PartialOrd, Hash, Copy, Serialize, Deserialize)]
struct Node<K: VertexTrait>{
    vertex: K,
    cost: usize,
    g: u8,
    f: u8,
    h: u8,
    closed: bool,
    visited: bool,
    parent: K
}

impl <K:VertexTrait + EMPTY<K>> VertexTrait for Node<K>{

}

#[derive(Serialize, Deserialize)]
pub struct Wasm_Edge(u8, u8, usize);

fn init_node<K: VertexTrait+EMPTY<K>>(vertex: K, cost: usize)-> Node<K>{
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
      return Edge::new(edge.0, edge.1, edge.2);
    }).collect();

    //let mst: Vec<Wasm_Edge> = mst(&mut local_edges, vertices_count).iter().map(|edge| Wasm_Edge(edge.0.0, edge.1.0,edge.2)).collect();
    //return serde_wasm_bindgen::to_value(&mst);
    return serde_wasm_bindgen::to_value(&edges);
}

fn shortest_path<K: VertexTrait + EMPTY<K>>(edges: &mut Vec<Edge<K>>, node_dict: &HashMap<K, Node<K>>, start: &Node<K>, destination: &Node<K>, heuristic: &js_sys::Function)->Vec<K>{
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

      }
  }
  return Vec::new();
}