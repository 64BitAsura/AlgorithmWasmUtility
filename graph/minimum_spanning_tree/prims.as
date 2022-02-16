
function findMinEdgeVertex(minimumWeightedEdgeByVertex: StaticArray<i32>, mst: StaticArray<boolean>): i32{
   let minWeight = I8.MAX_VALUE, minVertexIndex;
   mst.forEach((visited, vertexIndex)=>{
     if(!visited && minimumWeightedEdgeByVertex[vertexIndex] < minWeight){
       minWeight = minimumWeightedEdgeByVertex[vertexIndex];
       minVertexIndex = vertexIndex;
     }
   });
   return minVertexIndex;
}

export function mst(graph: i32[][]): StaticArray<i32>{
  const parent = new StaticArray<i32>(graph.length);
  const minimumWeightedEdgeByVertex = new StaticArray<i32>(graph.length).fill(I8.MAX_VALUE);
  const mst = new StaticArray<boolean>(graph.length).fill(false);
  
  minimumWeightedEdgeByVertex[0]=0;
  parent[0]=-1; // starting vertex can't have parent per say
  
  for(let i = 0; i < graph.length-1 ; i++){
    const minVertexIndex = findMinEdgeVertex(minimumWeightedEdgeByVertex, mst);
    mst[minVertexIndex] = true;
    for(let v = 0; v < graph.length; v++){
      if(graph[minVertexIndex][v] && mst[v] === false && graph[minVertexIndex][v] < minimumWeightedEdgeByVertex[v]){
        parent[v] = minVertexIndex;
        minimumWeightedEdgeByVertex[v] = graph[minVertexIndex][v];
      }
    }
  }
  
  return parent.slice(1);
}
export const EDGE_ID = idof<i32[]>();
export const VERTEX_ID = idof<i32[][]>();
