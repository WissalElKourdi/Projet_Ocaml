open Gfile
open Tools
open Ford_Fulkerson
open Graph


let () =

  (* Check the number of command-line arguments *)
  if Array.length Sys.argv <> 5 then
    begin
      Printf.printf "\nUsage: %s infile source sink outfile\n\n%!" Sys.argv.(0) ;
      exit 0
    end ;


  (* Arguments are : infile(1) source-id(2) sink-id(3) outfile(4) *)

  let infile = Sys.argv.(1)
  and outfile = Sys.argv.(4)


  (* These command-line arguments are not used for the moment. *)
  and source =int_of_string Sys.argv.(2)
  and sink= int_of_string Sys.argv.(3)

  (**********Test Bipartite Matching *************)
  in 
  let problem = from_file infile in 
  let s = source0 empty_graph in
  let d = dest1 s in
  let graph1= extremite0 problem d in
  let graph2 = read_node graph1 problem in
  let graph3 = read_arc graph2 problem in 
  let graph4 = extremite1 problem graph3 in
  let flow = flow_max graph4 source sink in
  let graph = gmap graph4 string_of_int in
  Printf.printf "Maximum number of applicants that can get job is : %d %!\n " flow;
  let () = export outfile graph in ()


  (*********** this is a test that proves that the dictionnary created from the file does indeed contain all the nodes needed (the outcome gave 9)****************)
  (*let dic = diction problem in 
  Printf.printf "%d %! \n " (List.length dic);*)



  (********************test Fulkerson flow_max *********)
  (*in 
  let graph = from_file infile in
  let int_graph = gmap graph int_of_string in
  let path = path int_graph source sink in 
  let flow = flow_max int_graph source sink in
  let gr3 = gmap int_graph string_of_int in
  Printf.printf "%d %!\n " flow; (*affiche le flow max *)
  (* Rewrite the graph that has been read. *)
  let () = export outfile gr3 in ()*)