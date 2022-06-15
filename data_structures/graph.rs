use std::marker::{Sized};
use std::hash::{Hash, Hasher};
use std::rc::Rc;
use std::cell::{RefCell};
use std::cmp::Ordering;
use std::collections::HashSet;
use std::collections::HashMap;
use std::collections::hash_map::Entry;
use wasm_bindgen::prelude::*;

pub trait EMPTY<K> {
    fn empty_definition (&self) -> K;
}

pub trait VertexTrait: Sized + Clone + Eq + Ord +PartialOrd +Hash + Copy  {
}

#[derive(PartialEq, Clone, Eq, Ord, PartialOrd, Hash, Copy)]
pub struct Vertex<K: VertexTrait>(pub K);

pub struct Edge<K: VertexTrait>(pub Vertex<K>, pub Vertex<K>, pub usize);

impl <K: VertexTrait> Edge<K>{
  pub fn new(source: K, dest: K, weight: usize) -> Edge<K>{
      return Edge(Vertex(source), Vertex(dest), weight);
  }
}

pub struct Graph<'l, K :  VertexTrait>{
    tree: RefCell<HashMap<&'l Vertex<K>, HashSet<&'l Vertex<K>>>>,
    parents: RefCell<HashMap<&'l Vertex<K>, &'l Vertex<K>>>
}

impl<'l, K :  VertexTrait> Graph<'l, K>{
   pub fn new() -> Graph<'l, K>{
        Graph{
            tree: RefCell::new(HashMap::new()),
            parents: RefCell::new(HashMap::new())
        }
   }
   pub fn add(&mut self, edge: &'l Edge<K>){
         let Edge(_src,_dest,_) = edge;
         let mut adjacents = self.tree.borrow_mut().get(_src).cloned().unwrap_or(HashSet::new());
         adjacents.insert(_dest);
         self.tree.borrow_mut().insert(_src, adjacents);
   }
   pub fn to_edges(&self)-> Vec<Edge<K>>{
        return self.tree.borrow().iter().fold(vec![],|mut acc, (key,value)| {
          value.iter().for_each(|vertex| acc.push(Edge(**key, **vertex, 0)));
          return acc;
        });
   }
   pub fn is_cyclic(&self, _src: &'l Vertex<K>, _dest: &'l Vertex<K>)-> bool{
        let x = self.find(_src);
        let y = self.find(_dest);
        let mut cyclic = false;
        if x == y {
            cyclic = true
        }
        self.union(_src,_dest);
        return cyclic;
    }
    fn find(&self, x: &'l Vertex<K>)-> &'l Vertex<K>{
        let parents =  &mut self.parents.borrow_mut();
        let entry = parents.entry(x);
        if let Entry::Vacant(_o) = entry{
           return x;
        } else {
           return self.find(entry.key());
        }
    }
    fn union(&self, _src: &'l Vertex<K>, _dest: &'l Vertex<K>){
        let _ = &self.parents.borrow_mut().insert(_src,_dest);
    }
}
