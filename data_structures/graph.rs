use std::marker::{Sized};
use std::hash::{Hash, Hasher};
use std::rc::Rc;
use std::cell::{RefCell};
use std::cmp::Ordering;
use std::collections::HashSet;
use std::collections::HashMap;
use std::collections::hash_map::Entry;
use wasm_bindgen::prelude::*;

pub trait VertexTrait: Sized + Eq + Hash + Ord + PartialOrd + Clone  {}


#[derive(PartialEq, Eq, Hash, Clone)]
pub struct Vertex<K: VertexTrait>(K);


pub struct Edge< K: VertexTrait>(pub Rc<Vertex<K>>, pub Rc<Vertex<K>>, pub i32);

pub struct Graph<K :  VertexTrait>{
    tree: RefCell<HashMap<Rc<Vertex<K>>, HashSet<Rc<Vertex<K>>>>>,
    parents: RefCell<HashMap<Rc<Vertex<K>>, Rc<Vertex<K>>>>
}

impl<K :  VertexTrait> Graph<K>{
   pub fn new() -> Graph<K>{
        Graph{
            tree: RefCell::new(HashMap::new()),
            parents: RefCell::new(HashMap::new())
        }
    }
   pub fn add(&mut self, edge: Rc<Edge<K>>){
         let Edge(_src,_dest,_) = &*Rc::into_raw(edge);
         let mut adjacents = self.tree.borrow_mut().get(_src).cloned().unwrap_or(HashSet::new());
         adjacents.insert(*_dest);
         self.tree.borrow_mut().insert(*_src, adjacents);
    }
   pub fn to_edges(&self)-> Vec<Edge<K>>{
        return self.tree.borrow().iter().fold(vec![],|mut acc, (key,value)| {
          value.iter().for_each(|vertex| acc.push(Edge(*key, *vertex, 0)));
          return acc;
        });
    }
   pub fn is_cyclic(&self, _src: Rc<Vertex<K>>, _dest: Rc<Vertex<K>>)-> bool{
        let x = self.find(_src);
        let y = self.find(_dest);
        let mut cyclic = false;
        if x == y {
            cyclic = true
        }
        self.union(_src,_dest);
        return cyclic;
    }
    fn find(&self, x: Rc<Vertex<K>>)-> Rc<Vertex<K>>{
        let parents =  &mut self.parents.borrow_mut();
        let entry = parents.entry(x);
        if let Entry::Vacant(_o) = entry{
           return x;
        } else {
           return self.find(*entry.key());
        }
    }
    fn union(&self, _src:Rc<Vertex<K>>, _dest: Rc<Vertex<K>>){
        let _ = &self.parents.borrow_mut().insert(_src,_dest);
    }
}
