use serde::{Serialize, Deserialize};
use wasm_bindgen::{JsObject, JsCast};
use wasm_bindgen::describe::WasmDescribe;
use wasm_bindgen::prelude::*;
use std::marker::{Sized};
use std::hash::{Hash, Hasher};
use std::rc::Rc;
use std::cmp::Ordering;
use crate::data_structures::graph::{Graph, Edge, Vertex, VertexTrait};

impl VertexTrait for u8{
 
}

#[derive(Serialize, Deserialize)]
pub struct Wasm_Edge(u8, u8, usize);


#[wasm_bindgen]
pub fn mst_for_JS(edges_serialized: &JsValue, vertices_count: usize) -> JsValue {
    let edges: Vec<Wasm_Edge> = edges_serialized.into_serde().unwrap();
    let mut local_edges: Vec<Edge<u8>> = edges.iter().map(|edge|{ 
      return Edge::new(edge.0, edge.1, edge.2);
    }).collect();
    let mst: Vec<Wasm_Edge> = mst(&mut local_edges, vertices_count).iter().map(|edge| Wasm_Edge(edge.0.0, edge.1.0,edge.2)).collect();
    return JsValue::from_serde(&mst).unwrap();
}

pub fn mst<K: VertexTrait>(edges: &mut Vec<Edge<K>>, vertices_count: usize) -> Vec<Edge<K>> {
    //step1 sort edges by weight in non decreasing order
    edges.sort_by(|a, b| b.2.cmp(&a.2));

    let mut edge_counts: usize = 0;
    let mut mst_graph = Graph::new();
    //step3 repeat previous step until n-1 edges are added to mst graph, where n is vertices count
     while edge_counts < (vertices_count-1){
        let edge = &edges[edge_counts];
        edge_counts = edge_counts+1;
        // step2 check mst graph make cycles with current edge
        if mst_graph.is_cyclic(&edge.0, &edge.1) == false {
          mst_graph.add(&edge);
        } 
     }
     return mst_graph.to_edges();
}
