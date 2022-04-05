use std::marker::{Sized};
use std::hash::{Hash};
use std::cell::{Cell, RefCell};
use std::collections::HashSet;
use std::collections::HashMap;
use std::collections::hash_map::Entry;

#[derive(PartialEq, Eq, Hash, Clone)]
pub struct Vertex<K: Sized + Eq + Hash + Clone>(K);

pub struct Edge<'s,K: Sized + Eq + Hash + Clone>(&'s Vertex<K>, &'s Vertex<K>);

pub struct Graph<'s,K :  Sized + Eq + Hash + Clone>{
    edges: RefCell<HashMap<&'s Vertex<K>, HashSet<&'s Vertex<K>>>>,
    parents: RefCell<HashMap<&'s Vertex<K>, &'s Vertex<K>>>,
    is_cyclic: Cell<bool>
}

impl<'s,K :  Sized + Eq + Hash + Clone> Graph<'s,K>{
    fn new() -> Graph<'s,K>{
        Graph{
            edges: RefCell::new(HashMap::new()),
            parents: RefCell::new(HashMap::new()),
            is_cyclic: Cell::new(false)
        }
    }
    fn add(&mut self, _src: &'s mut Vertex<K>, _dest: &'s mut Vertex<K>){
        let mut adjacents = self.edges.borrow_mut().get(_src).cloned().unwrap_or(HashSet::new());
        {
         adjacents.insert(_dest);
         self.edges.borrow_mut().insert(_src, adjacents);
        }
        if self.is_cyclic.get() == false {
          self.is_cyclic.set(self.compute_cylic(_src, _dest));
        }
    }
    fn compute_cylic(&self, _src: &'s Vertex<K>, _dest: &'s Vertex<K>)-> bool{
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

fn main(){

}