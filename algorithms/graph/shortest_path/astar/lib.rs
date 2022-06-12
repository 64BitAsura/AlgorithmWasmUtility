use serde::{Serialize, Deserialize};
use wasm_bindgen::{JsObject, JsCast};
use wasm_bindgen::describe::WasmDescribe;
use wasm_bindgen::prelude::*;
use std::marker::{Sized};
use std::hash::{Hash, Hasher};
use std::rc::Rc;
use std::collections::BinaryHeap;
use std::cmp::Reverse;
use std::cell::{Cell};
use std::cmp::Ordering;
use crate::data_structures::graph::{Graph, Edge, Vertex, VertexTrait};

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

impl <K:VertexTrait> VertexTrait for Node<K>{

}


#[derive(Serialize, Deserialize)]
pub struct Wasm_Edge(u8, u8, usize);


fn init_node<K: VertexTrait>(vertex: K, parent: K, cost: usize)-> Node<K>{
    return Node{vertex: vertex, cost: cost, g: 0, f:0, h:0, closed: false, visited: false, parent: parent}
}


#[wasm_bindgen]
pub fn astar_shortest_path(edges_serialized: JsValue, start: JsValue, destination: JsValue, heuristic: &js_sys::Function)-> Result<JsValue, serde_wasm_bindgen::Error>  {
    let edges: Vec<Wasm_Edge> = serde_wasm_bindgen::from_value(edges_serialized)?;
    let mut local_edges: Vec<Edge<Node<u8>>> = edges.iter().map(|edge|{ 
      return Edge::new(init_node(edge.0, u8::MAX, edge.2), init_node(edge.1, u8::MAX, edge.2), edge.2);
    }).collect();
    let start_node: u8 = serde_wasm_bindgen::from_value(start)?;
    let destination_node: u8 = serde_wasm_bindgen::from_value(destination)?;
    //let mst: Vec<Wasm_Edge> = mst(&mut local_edges, vertices_count).iter().map(|edge| Wasm_Edge(edge.0.0, edge.1.0,edge.2)).collect();
    //return serde_wasm_bindgen::to_value(&mst);
    return serde_wasm_bindgen::to_value(&edges);
}

fn shortest_path<K: VertexTrait>(edges: &mut Vec<Edge<K>>, start: K, destination: K, heuristic: &js_sys::Function)->Vec<K>{
  let mut open_heap = BinaryHeap::new();
  open_heap.push(Reverse(start));
  return Vec::new();
}