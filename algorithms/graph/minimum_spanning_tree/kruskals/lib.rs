use serde::{Serialize, Deserialize};
use wasm_bindgen::prelude::*;
use data_structures::{Graph, Edge, VertexTrait};

#[cfg(feature = "wee_alloc")]
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[derive(Serialize, Deserialize)]
pub struct WasmEdge(usize, usize, usize);


#[wasm_bindgen]
pub fn mst_for_js(edges_serialized: JsValue, vertices_count: usize) -> Result<JsValue, serde_wasm_bindgen::Error>  {
    let edges: Vec<WasmEdge> = serde_wasm_bindgen::from_value(edges_serialized)?;
    let mut local_edges: Vec<Edge<usize>> = edges.iter().map(|edge|{ 
      return Edge::new(edge.0, edge.1, edge.2);
    }).collect();
    let mst: Vec<WasmEdge> = mst(&mut local_edges, vertices_count).iter().map(|edge| WasmEdge(edge.0.0, edge.1.0,edge.2)).collect();
    return serde_wasm_bindgen::to_value(&mst);
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
