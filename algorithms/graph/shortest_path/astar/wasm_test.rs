
#![allow(unused_variables)]
fn main() {
use wasm_bindgen_test::*;
use super::lib::{Wasm_Edge, astar_shortest_path};
//wasm_bindgen_test::wasm_bindgen_test_configure!(run_in_browser);

#[wasm_bindgen_test]
//#[cfg(test)]
fn pass() {
    let mut edges = Vec::new();
    //edges.push(Wasm_Edge(0, 2, 10));
    edges.push(Wasm_Edge(0, 1, 1));
    edges.push(Wasm_Edge(1, 3, 2));
    edges.push(Wasm_Edge(2, 1, 1));
    edges.push(Wasm_Edge(2, 3, 3));
    edges.push(Wasm_Edge(2, 4, 1));
    edges.push(Wasm_Edge(3, 2, 7));
    edges.push(Wasm_Edge(3, 4, 2));
    edges.push(Wasm_Edge(4, 2, 1));

    let heuristics= js_sys::Function::new_no_args(&"return 3;");
    let path = astar_shortest_path(serde_wasm_bindgen::to_value(&edges).ok().unwrap(), 
    serde_wasm_bindgen::to_value(&(0 as i32)).ok().unwrap(), 
    serde_wasm_bindgen::to_value(&( 2 as i32)).ok().unwrap(), &heuristics);

    console_log!("path {:?}", path);
}

// #[wasm_bindgen_test]
// fn fail() {
//     assert_eq!(1, 2);
// }
}