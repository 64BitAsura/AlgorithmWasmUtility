use wasm_bindgen::prelude::*;
use crate::data_structures::graph::{Graph, Edge, VertexTrait};

#[wasm_bindgen]
pub fn mst<'s,K: VertexTrait>(edges: &'s Vec<&'s Edge<'s,K>>, vertices_count: i32) -> Vec<Edge<'s,K>> {
    //step1 sort edges by weight in non decreasing order
    let mut local_edges = edges.clone();
    local_edges.sort_by(|a, b| b.2.cmp(&a.2));

    let mut edge_counts: i32 = 0;
    let mut mst_graph = Graph::new();
    //step3 repeat previous step until n-1 edges are added to mst graph, where n is vertices count
     while edge_counts < (vertices_count-1){
        let edge = local_edges.remove(0);
        edge_counts = edge_counts+1;
        // step2 check mst graph make cycles with current edge
        if mst_graph.is_cyclic(edge.0, edge.1) == false {
          mst_graph.add(edge);
        } 
     }
     return mst_graph.to_edges();
}
