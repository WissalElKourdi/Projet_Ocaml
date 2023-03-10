(* Read a graph from a file,
 * Write a graph to a file. *)

 open Graph

 type problem =
 { employees: string list ;
   jobs: string list ;
   voeux: (string * string) list }
 
 type path = string
 
 
 (* Values are read as strings. *)
 val from_file: path -> problem
 val diction : problem -> (string * int) list
 
 (* Similarly, we write only a string graph.
  * If necessary, use gmap (to be written by you) to prepare the input graph. *)
 val write_file: path -> string graph -> unit
 
 val export: path -> string graph -> unit
 val read_node : int graph -> problem -> int graph
 val read_arc : int graph -> problem -> int graph
 val extremite0 : problem -> int graph -> int graph
 val extremite1 : problem -> int graph -> int graph
 val source0 : int graph -> int graph
 val dest1 : int graph -> int graph 
 
 
 (* The format of files is compatible with the files generated by:
    https://www-m9.ma.tum.de/graph-algorithms/flow-ford-fulkerson/index_en.html
 *)
 