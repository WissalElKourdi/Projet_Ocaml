Partie minimale : 

1. pour tester, on utilise le contenu des fichier gfile_bis.ml/mli ( les gfile ont été modifiés pour répondre au problème médium), et on décommente la partie test Fulkerson dans le fichier ftest
2. on a travaillé sur 4 fonctions principales : 
 - Path -> qui cherche UN chemin allant d'une source à une destination dans le graphe 
 -find_min -> une fonction qui renvoie la capacité minimale d'un chemin du graphe 
 - add_flow -> une fonction qui permet de rajouter une certaine valeur aux labels correspondants aux différents arcs d'un certain chemin 
 -flow_max -> la fonction principale qui permet de determiner à l'aide des fonctions déjà définies le flow max 

Partie médium : 

I. pour tester, on utilise le contenu des fichiers gfile.ml/mli et on décommente la partie Bipartite Matching fans le fichier ftest. 
II. dans cette partie on a principalement modifié le fichier gfile. On a fait en sorte de pouvoir prendre un fichier contenant une liste de gens, une liste de jobs et une liste de voeux et convertir cela en un problème qu'on va pouvoir résoudre à l'aide de l'algorithme Ford Fulkerson déjà établi . 
Les éléments rajoutés sont les suivants : 
1. un nouveau type "Problème" qui va représenter la liste des employés, liste de jobs et la liste de voeux 
2. 3 Fonction "read_ff" qui permettent de transformer le fichier donné en un Problème 
3. une fonction "node_id" qui permet d'associer à un employé ou un job son propre id 
4. une fonction diction qui permet de créer à l'aide de nos listes du Problème un dictionnaire . (chaque tuple contient l'association name,id)
5. deux fonctions " extremite0" et "extremite1" qui vont nous permettre de créer les deux noeus source et destination ayant comme id (0 et 1 respectivement).
6. une nouvelle fonction "read_node" qui permet de créer les nodes à partir d'un problème donné
7. une nouvelle fonction "read_arc" qui permet de créer les arcs à l'aide d'un problème donné 
8. et puis finalement, ona changé la fonction from_file puisqu'on va en sorte de transformer le fichier en un problème, on utilise ici toutes les fonctions définies précédemment. 