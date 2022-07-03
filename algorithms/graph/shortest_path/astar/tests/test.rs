
#![allow(unused_variables)]
fn main() {
use wasm_bindgen_test::*;
use super::super::lib::{Wasm_Edge, astar_shortest_path};

#[wasm_bindgen_test]
fn pass() {
    let mut edges = Vec::new();
    edges.push(Wasm_Edge(0, 2, 10));
    edges.push(Wasm_Edge(0, 1, 1));
    edges.push(Wasm_Edge(1, 3, 2));
    edges.push(Wasm_Edge(2, 1, 1));
    edges.push(Wasm_Edge(2, 3, 3));
    edges.push(Wasm_Edge(2, 4, 1));
    edges.push(Wasm_Edge(3, 2, 7));
    edges.push(Wasm_Edge(3, 4, 2));
    edges.push(Wasm_Edge(4, 2, 1));

    let heuristics= js_sys::Function::new_no_args(&"return 2;");
    let js_path = astar_shortest_path(serde_wasm_bindgen::to_value(&edges).ok().unwrap(), 
    serde_wasm_bindgen::to_value(&(0 as i32)).ok().unwrap(), 
    serde_wasm_bindgen::to_value(&( 2 as i32)).ok().unwrap(), &heuristics);
    let sp: Vec<i32> = js_path.unwrap().into_serde().unwrap();
    assert_eq!(vec![0,1,3,4,2], sp);
}
}