(* ::Package:: *)

(* ::Text:: *)
(*How to use:*)


(* ::Code:: *)
(*$expName = "VVX";*)
(*Get[FileNameJoin[{NotebookDirectory[],"..","paths.wl"}]]*)


(* ::Section:: *)
(*paths*)


paths::noroot="$expName is not defined.";


If[!ValueQ[$expName],Message[paths::noroot];Return[]]


$projectroot=ParentDirectory[DirectoryName[$InputFileName]];


(* ::Subsection:: *)
(*standard directories*)


(* ::Text:: *)
(*My stupid directory layout*)


$analysesdir=FileNameJoin[{$projectroot,"Analysis"}];


$analysisdir=FileNameJoin[{$analysesdir,$expName}];


$experimentdir=FileNameJoin[{$projectroot,"Experiments",$expName}];


$manuscriptdir=FileNameJoin[{$projectroot,"Manuscript"}];


$graphsdir=FileNameJoin[{$manuscriptdir,"Figures","Generated",$expName}];


$dumpsdir=FileNameJoin[{$analysesdir,"Dumps",$expName}];


(* ::Subsection:: *)
(*special stuff, delayed*)


$scoredir:=FileNameJoin[{$experimentdir,"Scores",$network}];


(* ::Section:: *)
(*path tools*)


(* ::Text:: *)
(*Things that I use*)


fileName[path_]:=Last[FileNameSplit[path]]


fileHead[path_]:=First[StringSplit[fileName[path],"."]]


fileType[path_]:=Last[StringSplit[fileName[path],"."]]


(* ::Section:: *)
(*colors*)


(* ::Subsubsection:: *)
(*our colors*)


(* ::Text:: *)
(*This forces loading of the paclet*)


ColorData[1];


AppendTo[DataPaclets`ColorDataDump`colorSchemes,
	{{"VV","vv",{"Default plot colors from Plot for VV"}},
	{"Indexed"},1,{1,10,1},{RGBColor[{0.396078431372549, 0.5058823529411764, 0.6941176470588235}],RGBColor[{0.8431372549019608, 0.6196078431372549, 0.2549019607843137}],RGBColor[{0.5843137254901961, 0.6823529411764706, 0.2823529411764706}],RGBColor[{0.8627450980392157, 0.4156862745098039, 0.2627450980392157}],RGBColor[{0.5176470588235293, 0.4745098039215686, 0.6862745098039216}],RGBColor[{0.7294117647058823, 0.447059, 0.192157}],RGBColor[{0.4196078431372549, 0.615686274509804, 0.7686274509803921}],RGBColor[{0.9647058823529412, 0.7568627450980392, 0.2588235294117647}],RGBColor[{0.611764705882353, 0.396078431372549, 0.6}],RGBColor[{0.5764705882352941, 0.5843137254901961, 0.1803921568627451}]},
	{"Indexed","VV"}}];


AppendTo[DataPaclets`ColorDataDump`colorSchemeNames,"VV"];


vvPalRGB={RGBColor[{0.396078431372549, 0.5058823529411764, 0.6941176470588235}],RGBColor[{0.8431372549019608, 0.6196078431372549, 0.2549019607843137}],RGBColor[{0.5843137254901961, 0.6823529411764706, 0.2823529411764706}],RGBColor[{0.8627450980392157, 0.4156862745098039, 0.2627450980392157}],RGBColor[{0.5176470588235293, 0.4745098039215686, 0.6862745098039216}],RGBColor[{0.7294117647058823, 0.447059, 0.192157}],RGBColor[{0.4196078431372549, 0.615686274509804, 0.7686274509803921}],RGBColor[{0.9647058823529412, 0.7568627450980392, 0.2588235294117647}],RGBColor[{0.611764705882353, 0.396078431372549, 0.6}],RGBColor[{0.5764705882352941, 0.5843137254901961, 0.1803921568627451}]};
vvPalLAB={LABColor[0.5327413504005303, -0.00569390830596983, -0.2896298266934716],LABColor[0.6943507557245971, 0.153866, 0.5526446949562734],LABColor[0.6759333640956692, -0.202654, 0.4801872260905736],LABColor[0.5859940537454338, 0.436219, 0.4330577029667748],LABColor[0.5342717665256584, 0.133231, -0.2733955124843652],LABColor[0.5525159120803818, 0.252847, 0.469403],LABColor[0.6232833627405087, -0.09330423563408241, -0.25769],LABColor[0.8132746127025804, 0.108872, 0.6768322577023566],LABColor[0.5028385556098182, 0.2910293149217752, -0.1909797020874453],LABColor[0.6007167521681873, -0.104014, 0.5118454429758649]};
