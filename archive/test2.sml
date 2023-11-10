(* aとAを辞書式順序で比較している *)
(* a<A == falseなので else文が実行される *)
if #"a" < #"A"  
then (str #"a") ^ (str #"A")
else (str #"A") ^ (str #"a");  