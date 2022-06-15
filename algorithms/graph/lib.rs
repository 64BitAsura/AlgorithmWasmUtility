use crate::data_structures::graph::{VertexTrait, EMPTY};

impl VertexTrait for u8{
}

impl EMPTY<u8> for u8 {
    fn empty_definition (&self) -> u8{
        return u8::MAX; 
    }
}