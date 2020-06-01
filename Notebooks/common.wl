(* ::Package:: *)

(* ::Section:: *)
(*common*)


(* ::Text:: *)
(*This stuff is common across all the experiments, since they are based on the sinha simulations / stimuli*)


(* ::Section:: *)
(*labels*)


(* ::Text:: *)
(*'LUT' things transfer from something to array indexes*)


(* ::Text:: *)
(*labels x {gray,color,burred gray} x {patch sizes - 1,2,3,4,5,6,8,9,10,12,15,20,25,30,40,60} x target exemplar x codebook exemplar*)


(* ::Subsubsection:: *)
(*patch sizes*)


(* ::Text:: *)
(*Self evident*)


patchSizes = {1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 20, 25, 30, 40, 60};


(* ::Text:: *)
(*From actual patch size to array index*)


patchSizeLUT = Association[Thread[Rule[patchSizes, Range[Length[patchSizes]]]]]


(* ::Subsubsection:: *)
(*image types*)


imageTypes = {"b&w", "color", "blurred"};


imageTypeLUT = Association[Thread[Rule[imageTypes, Range[3]]]]


(* ::Subsubsection:: *)
(*category names*)


(* ::Text:: *)
(*Google network image categories.*)


netCategories=First[StringSplit[#,","]]&/@Import[FileNameJoin[{$analysesdir,"googlenetCategories.dat"}],"List"];


(* ::Text:: *)
(*From google categories to index in google-space*)


netCategoryLUT=Association[Thread[Rule[netCategories,Range[Length[netCategories]]]]];


(* ::Text:: *)
(*The categories we used *)


pawanCategories=FileBaseName/@FileNames[FileNameJoin[{$experimentdir,"good_exemplars","*.jpg"}]]


(* ::Text:: *)
(*Categories we used 'normalized' to the google category names*)


imageCategories={"acorn","brown bear","bolete","burrito","monarch","Siamese cat","cauliflower","daisy","golden retriever","geyser","great grey owl","pineapple","pomegranate","scuba diver","sewing machine","space shuttle","tractor","traffic light","violin","volcano"};


(* ::Text:: *)
(*From our category name to imagenet ID*)


imageNetLUT=Association[Thread[Rule[pawanCategories,Flatten[Position[netCategories,#]&/@imageCategories]]]]


(* ::Text:: *)
(*From our category name to array index*)


pawanLUT=Association[Thread[Rule[pawanCategories,Range[20]]]]


(* ::Text:: *)
(*Translation from our ID to imagenet ID*)


pawanToImageNet=Association[Thread[Rule[Values[pawanLUT],Values[imageNetLUT]]]]


(* ::Text:: *)
(*Imagenet ID to our ID*)


imageNetToPawan=Association[Thread[Rule[Values[imageNetLUT],Values[pawanLUT]]]]


(* ::Text:: *)
(*This doesn't belong here...*)


(* ::Input:: *)
(*pilotImages={"bear","burrito","cat","cauliflower","dog","trafficlight","violin","volcano","acorn","bolete","cat","dog","pineapple","shuttle","trafficlight","violin"};*)


(* ::Input:: *)
(*pilotCategories=imageNetLUT/@pilotImages*)


(* ::Input:: *)
(*pilotStimuli={"bear_sewingmachine","burrito_scuba","cat_sewingmachine","cauliflower_scuba","dog_tractor","trafficlight_pomegranate","violin_cauliflower","volcano_cauliflower","acorn_butterfly","cat_volcano","dog_volcano","trafficlight_pineapple","bolete_owl","pineapple_burrito","shuttle_acorn","violin_bolete"};*)


(* ::Section:: *)
(*criteria tools*)


(* ::Text:: *)
(*Most likely object, by box size. returns {box size, probability, and item}.*)
(*Works w/ names and IDs. (a->target, b->codebook)*)


(* ::Input:: *)
(*maxByBoxSize[a_Integer,b_Integer,mode_Integer:1]:=Module[{ms,s},*)
(*s=scores[[All,mode,All,a,b]];*)
(*MapIndexed[{patchSizes[[First[#2]]], ms=Max[#1],FirstPosition[#1,ms][[1]]}&,Transpose[s]]]*)


(* ::Input:: *)
(*maxByBoxSize[a_String,b_String,mode_String:"b&w"]:=*)
(*MapAt[netCategories[[#]]&,maxByBoxSize[pawanLUT[a],pawanLUT[b],imageTypeLUT[mode]],{All,3}]*)


(* ::Input:: *)
(*maxByBoxSize["dog","dog","color"]*)
