(* ::Package:: *)

(* ::Text:: *)
(*How to use:*)


(* ::Code:: *)
(*$projName = "M1";*)
(*Get[FileNameJoin[{NotebookDirectory[],"..","paths.wl"}]]*)


(* ::Section:: *)
(*paths*)


paths::noroot="$projName is not defined.";


If[!ValueQ[$projName],Message[paths::noroot];Return[]]


$projectroot=ParentDirectory[DirectoryName[$InputFileName]];


(* ::Subsection:: *)
(*standard directories*)


(* ::Text:: *)
(*My stupid directory layout*)


$figuresdir=FileNameJoin[{$projectroot,"Figures",$projName}];


$dumpsdir=FileNameJoin[{$projectroot,"Dumps",$projName}];


$commondumpsdir=FileNameJoin[{$projectroot,"Dumps","Common"}];


$datadir=FileNameJoin[{$projectroot,"Data",$projName}];


$commondatadir=FileNameJoin[{$projectroot,"Data","Common"}];


(* ::Subsection:: *)
(*special stuff, delayed*)


(* ::Code:: *)
(*$scoredir:=FileNameJoin[{$experimentdir,"Scores",$network}];*)
