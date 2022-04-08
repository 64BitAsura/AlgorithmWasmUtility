use std::marker::{Sized};
use std::hash::{Hash};
use std::cell::{RefCell};
use std::collections::HashSet;
use std::collections::HashMap;
use std::collections::hash_map::Entry;

pub trait VertexTrait: Sized + Eq + Hash + Ord + PartialOrd + Clone  {}

#[derive(PartialEq, Eq, Hash, Clone)]
pub struct Vertex<K: VertexTrait>(K);

pub struct Edge<'s, K: VertexTrait>(pub &'s Vertex<K>, pub &'s Vertex<K>, pub i32);

pub struct Graph<'s,K :  VertexTrait>{
    tree: RefCell<HashMap<&'s Vertex<K>, HashSet<&'s Vertex<K>>>>,
    parents: RefCell<HashMap<&'s Vertex<K>, &'s Vertex<K>>>
}

impl<'s,K :  VertexTrait> Graph<'s,K>{
   pub fn new() -> Graph<'s,K>{
        Graph{
            tree: RefCell::new(HashMap::new()),
            parents: RefCell::new(HashMap::new())
        }
    }
   pub fn add(&mut self, edge: &Edge<'s,K>){
         let Edge(_src,_dest,_) = edge;
         let mut adjacents = self.tree.borrow_mut().get(_src).cloned().unwrap_or(HashSet::new());
         adjacents.insert(_dest);
         self.tree.borrow_mut().insert(_src, adjacents);
    }
   pub fn to_edges(&self)-> Vec<Edge<'s,K>>{
        return self.tree.borrow().iter().fold(vec![],|mut acc, (key,value)| {
          value.iter().for_each(|vertex| acc.push(Edge(&key, &vertex, 0)));
          return acc;
        });
    }
   pub fn is_cyclic(&self, _src: &'s Vertex<K>, _dest: &'s Vertex<K>)-> bool{
        let x = self.find(_src);
        let y = self.find(_dest);
        let mut cyclic = false;
        if x == y {
            cyclic = true
        }
        self.union(_src,_dest);
        return cyclic;
    }
    fn find(&self, x: &'s Vertex<K>)-> &Vertex<K>{
        let parents =  &mut self.parents.borrow_mut();
        let entry = parents.entry(x);
        if let Entry::Vacant(_o) = entry{
           return x;
        } else {
           return &self.find(entry.key());
        }
    }
    fn union(&self, _src: &'s Vertex<K>, _dest: &'s Vertex<K>){
        let _ = &self.parents.borrow_mut().insert(_src,_dest);
    }
}
