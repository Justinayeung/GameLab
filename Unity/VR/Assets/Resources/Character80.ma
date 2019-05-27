//Maya ASCII 2018 scene
//Name: Character80.ma
//Last modified: Wed, May 01, 2019 08:05:12 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "2.0.1";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "9C860BC3-40A4-41E3-538E-4EB1FBA9312F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.874936002373079 9.5865049251372412 2.9562876863870287 ;
	setAttr ".r" -type "double3" -729.33835272948886 -640.59999999999684 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "81BC20B1-4A66-E001-03FD-84B16E557865";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 20.116135554939941;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 84.741417557166329 915.96510335790822 46.590845381111947 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "9A4C7704-43DA-67C1-3CB0-7088D9FC9EB1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 10.001000000000001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3013E8EB-4BF3-A57C-CA21-F0956FA490A2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.83769065738127757;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F5CADB4A-4089-4D4D-B2CB-89AAB59E7084";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.83827435899019409 8.400848052347536 10.129645266802649 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DD3EFA6C-4C51-6579-B7A7-2DA822FDBE3D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.073970967494311;
	setAttr ".ow" 0.08470001781909009;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 83.827435899019406 840.0848052347535 5.5674299308336543 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "BB0F0E8F-4E42-758B-0E9F-C889B7CDFCBC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.864405318347492 8.4005285502056299 0.055674299308338775 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DA0BBA48-492D-4D94-D294-45821E78F597";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.025747556787012;
	setAttr ".ow" 0.041935895828595381;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 83.865776156048028 840.0528550205629 5.5674299308336543 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Joints";
	rename -uid "316A4ADA-4A92-1577-3555-B793952B9A65";
	setAttr ".rp" -type "double3" -3.0964120156795617e-15 3.894442848084632 0.1174233339946204 ;
	setAttr ".sp" -type "double3" -3.0964120156795617e-15 3.894442848084632 0.1174233339946204 ;
createNode joint -n "All_Joints" -p "Joints";
	rename -uid "D93063E8-4C95-6AEE-C88E-0BBDFE482485";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 6.9325910498448575 -0.10863193994019486 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999943 83.975729373157051 90 ;
	setAttr ".bps" -type "matrix" 0 0.10494973568875282 -0.99447752763894115 0 -7.0082828429463007e-16 0.99447752763894115 0.10494973568875282 0
		 1 7.0082828429463007e-16 0 0 0 693.2591049844857 -10.863193994019486 1;
	setAttr ".radi" 2;
createNode joint -n "LeftArm" -p "All_Joints";
	rename -uid "3E838F15-41F1-4503-73FB-C69DC97CA993";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1308467334542689 1.2641489614198169e-16 6.8443260679988385e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -59.97493927877909 ;
	setAttr ".bps" -type "matrix" 6.0678177146087982e-16 -0.80851061473178143 -0.58848159348108497 0
		 -3.5067957723561769e-16 0.58848159348108497 -0.80851061473178143 0 1 7.0082828429463007e-16 0 0
		 -2.0151874092480498e-30 705.12731156253722 -123.32336035643689 1;
	setAttr ".radi" 2;
createNode joint -n "_" -p "LeftArm";
	rename -uid "1BEB083B-46D0-E1BB-FEDD-1682C3818515";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.76370366049616567 0.17700909147617758 -5.8058065200469972e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.61522232642735e-16 4.3557551125205649e-15 -24.896531542287825 ;
	setAttr ".bps" -type "matrix" 6.9802264368455094e-16 -0.98111483249605258 -0.19342617572666543 0
		 -6.2647210400667534e-17 0.19342617572666543 -0.98111483249605258 0 1 7.0082828429463007e-16 0 0
		 3.4326992142082504e-14 653.79771918172457 -182.57728800030085 1;
	setAttr ".radi" 2;
createNode joint -n "LeftElbow" -p "|Joints|All_Joints|LeftArm|_";
	rename -uid "3696D463-483D-9F77-39DD-64B3C82138E9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.44712462025315786 -1.0302869668521452e-15 -3.39914277657541e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0467497941546814e-16 4.367846802492873e-15 -7.9802983862444821 ;
	setAttr ".bps" -type "matrix" 6.9996037277699339e-16 -0.99846744020498557 -0.055342306154548299 0
		 3.4867758879047793e-17 0.055342306154548299 -0.99846744020498557 0 1 7.0082828429463007e-16 0 0
		 6.2138160314063112e-14 609.92965949127074 -191.22584853718135 1;
	setAttr ".radi" 2;
createNode joint -n "_" -p "LeftElbow";
	rename -uid "95008A52-4180-D16B-C5C5-75B5F48D7B2D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.5124796034446639 3.1974423109204507e-16 -1.1530132334150483e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.827498580468458 -90 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 7.0390039942106197e-16 -5.5426077072705848e-17 0
		 -5.3042452577099126e-16 1.0000000000000002 2.4980018054066022e-16 0 -7.3551743199923582e-17 -6.9388939039072284e-17 1.0000000000000002 0
		 1.5647560668438523e-13 458.9134956899062 -199.59625946381581 1;
	setAttr ".radi" 2;
createNode ikEffector -n "pasted__effector3" -p "LeftElbow";
	rename -uid "2D8C3AFC-4F7B-342B-D3B8-B5A160593A79";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "RightArm" -p "All_Joints";
	rename -uid "F94CF862-427A-1139-B7E3-BBB0720CEABB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.233613331111278 0.20556702578097433 1.4406718598563026e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 179.99999999999994 48.345783033946937 ;
	setAttr ".bps" -type "matrix" -4.8700557668542687e-16 -0.81279639631834921 0.58254786767432643 0
		 -4.6579397661163632e-16 0.58254786767432665 0.81279639631834932 0 -1 1.2061878503633513e-16 -5.8874798266040887e-16 0
		 3.1554436208840472e-30 700.75554443653607 113.97430006678238 1;
	setAttr ".radi" 2;
createNode joint -n "_" -p "RightArm";
	rename -uid "38CC9839-4FBF-EF4D-ABE7-49A442CFBE11";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.73872668219748694 0.18685129073591419 -2.6414448448142791e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.1846163858972842e-15 -9.3768526275746917e-15 -26.229611423394992 ;
	setAttr ".bps" -type "matrix" -2.309919110617759e-16 -0.98657120688719846 0.16333172913165511 0
		 -6.3307282155721659e-16 0.16333172913165539 0.98657120688719857 0 -1 1.2061878503633513e-16 -5.8874798266040887e-16 0
		 -1.8265373514196966e-14 651.59708802014359 172.19587099336826 1;
	setAttr ".radi" 2;
createNode joint -n "RIghtElbow" -p "|Joints|All_Joints|RightArm|_";
	rename -uid "10DD8CF0-4BB1-B5E5-5B78-9283B9F2EC9E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.46497835429796758 -7.1054273576010003e-16 7.6096940129224281e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.5844342178429453e-16 -1.4786409056102625e-14 -7.4173583832932559 ;
	setAttr ".bps" -type "matrix" -1.4733180623681085e-16 -0.9994011520904269 0.03460256060361705 0
		 -6.575954677774062e-16 0.034602560603617327 0.99940115209042701 0 -1 1.2061878503633513e-16 -5.8874798266040887e-16 0
		 -3.6615691393284054e-14 605.72366240252666 179.79044285499603 1;
	setAttr ".radi" 2;
createNode joint -n "_" -p "RIghtElbow";
	rename -uid "18BCA8C8-41AC-4D3E-0886-F68DB3BAD65E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4909876576435763 -7.4606987254810487e-16 3.8478145494965174e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180.00000000000006 81.992752840635177 ;
	setAttr ".bps" -type "matrix" -9.4006448778266535e-17 0.10494973568875285 -0.99447752763894093 0
		 5.4293421132385588e-17 0.99447752763894093 0.10494973568875327 0 1 -4.0257330432611937e-17 -1.7273712416053302e-16 0
		 -9.7060827355991168e-14 456.71418412236693 184.94964193328164 1;
	setAttr ".radi" 2;
createNode ikEffector -n "pasted__effector4" -p "RIghtElbow";
	rename -uid "0D6C3461-4C5B-C637-C94F-DABC37CFA3AA";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "Head" -p "All_Joints";
	rename -uid "B51EAE10-4E4B-FA75-1519-2B919D26F358";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.059772031220009153 0.69690445062687678 4.8841035045012267e-16 ;
	setAttr ".r" -type "double3" 0 -5.3677254183509326 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 83.25836932151924 ;
	setAttr ".bps" -type "matrix" -6.959824879343027e-16 0.99992162213263791 -0.012519967716978206 0
		 -8.2271869774139977e-17 0.012519967716978206 0.99992162213263791 0 1 7.0082828429463007e-16 0 0
		 -3.0923347484663663e-28 763.19199237829673 -9.4933943876220965 1;
	setAttr ".radi" 2;
createNode joint -n "_" -p "Head";
	rename -uid "820E12B8-4522-F897-9163-0380FAB26225";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.5364639948355758 -1.4210854715202004e-16 1.0693520337471421e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -83.25836932151924 ;
	setAttr ".bps" -type "matrix" 0 0.10494973568875282 -0.99447752763894115 0 -7.0082828429463007e-16 0.99447752763894115 0.10494973568875282 0
		 1 7.0082828429463007e-16 0 0 -2.7136815139602806e-28 916.82634938473495 -11.417042348986188 1;
	setAttr ".radi" 2;
createNode joint -n "_" -p "All_Joints";
	rename -uid "23889632-4ED1-E406-BE81-FA80881328AD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.13319036087236355 -1.2834850431096141 -8.9950262068033025e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.3467651536360284e-14 4.0017585449586877e-14 -94.732856230994457 ;
	setAttr ".bps" -type "matrix" 6.9843862479346736e-16 -0.99974599772875605 -0.022537524827149477 0
		 5.7825353124429746e-17 0.022537524827149477 -0.99974599772875605 0 1 7.0082828429463007e-16 0 0
		 -2.5243548967072378e-29 564.22157242418041 -11.08785351893299 1;
	setAttr ".radi" 2;
createNode joint -n "_" -p "|Joints|All_Joints|_";
	rename -uid "F17FCEE5-4ECA-0DC5-BC79-B78C29B63934";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.96445538028646782 2.0428103653102881e-16 -6.7361288948194083e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.0217321097267743e-14 3.5715221948334792e-14 31.929267252209037 ;
	setAttr ".bps" -type "matrix" 6.233482160789851e-16 -0.83656660896695645 -0.54786522864800202 0
		 -3.2030811038514439e-16 0.54786522864800202 -0.83656660896695645 0 1 7.0082828429463007e-16 0 0
		 1.2621774483536189e-29 467.80053178124422 -13.261497226721426 1;
	setAttr ".radi" 2;
createNode joint -n "LeftLeg" -p "|Joints|All_Joints|_|_";
	rename -uid "83625BBB-4123-B41C-1CCA-36A0952C42AB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.97742394946258682 2.8421709430404008e-16 -6.0927547525037985e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -33.289458392802274 ;
	setAttr ".bps" -type "matrix" 6.9686918726896677e-16 -0.99999927954324075 0.001200380356325359 0
		 4.807637503792865e-17 0.001200380356325359 0.99999927954324075 0 -1 -7.0068128009851674e-16 1.2246459168422889e-16 0
		 -2.5243548967072378e-29 386.03250788874362 -66.811156782556779 1;
	setAttr ".radi" 2;
createNode joint -n "LeftKnee" -p "LeftLeg";
	rename -uid "73C11EB0-46FC-5EF7-A8BB-12A235DA9F3E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.1019708126070875 1.7763568394002486e-16 1.4647986918445898e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.2943655928680081e-16 -3.9944676446232861e-14 0.3713206997672292 ;
	setAttr ".bps" -type "matrix" 6.9716612263032727e-16 -0.99997050011671007 0.0076810739051944698 0
		 4.3559148961994546e-17 0.0076810739051944698 0.99997050011671007 0 -1 -7.0068128009851674e-16 1.2246459168422889e-16 0
		 7.5730646901217133e-29 175.83557806594283 -66.558840335254487 1;
	setAttr ".radi" 2;
createNode joint -n "_" -p "LeftKnee";
	rename -uid "CA47CE64-4423-D73F-CA70-1E93941DEFAD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.3316963133671993 -5.7909232964448169e-15 1.6255796779416384e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 83.53563192864506 ;
	setAttr ".bps" -type "matrix" 6.9182360481794965e-19 0.10494973568875311 -0.99447752763894115 0
		 -6.8782946539663589e-16 0.99447752763894115 0.10494973568875322 0 1 6.8782864431025752e-16 -6.7621957952861621e-19 0
		 1.0097419586828951e-28 -57.327174793865908 -64.767847164510769 1;
	setAttr ".radi" 2;
createNode ikEffector -n "pasted__effector1" -p "LeftKnee";
	rename -uid "FC513E50-47D6-5209-5136-4AB13EEA8352";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "RightLeg" -p "|Joints|All_Joints|_|_";
	rename -uid "DA88D496-4019-D210-03FE-D6A97D4B0072";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.32917094877738806 -0.99282733429170578 -5.2319877109110835e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1609210727426694e-14 3.9990542520247543e-14 -32.375910428711109 ;
	setAttr ".bps" -type "matrix" 6.979666366371107e-16 -0.99989130862300646 -0.014743505016503622 0
		 6.3268145293143847e-17 0.014743505016503622 -0.99989130862300646 0 1 7.0082828429463007e-16 0 0
		 -1.2621774483536189e-29 385.86963189135952 51.760990695469751 1;
	setAttr ".radi" 2;
createNode joint -n "RightKnee" -p "RightLeg";
	rename -uid "05C72D57-4D2B-AD19-3417-A5B5A587F49A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.0976105882229992 7.1054273576010023e-16 -1.4640622072363978e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 3.9907157126497454e-14 -1.1832667052466341 ;
	setAttr ".bps" -type "matrix" 6.9651128569939325e-16 -0.99998254864154368 0.0059078263653249696 0
		 1.4901161238644373e-08 0.0059078263653249662 0.9999825486415439 0 -1 8.8032772870186226e-11 1.490090127080479e-08 0
		 1.2621774483536189e-29 176.13137228738262 48.668377472455987 1;
	setAttr ".radi" 2;
createNode joint -n "_" -p "RightKnee";
	rename -uid "2C62B672-4763-6FCD-9716-EE8396E0373B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.349773030334195 4.2632561706817228e-16 1.6366434407518368e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999928853734 0 -33.559177133957732 ;
	setAttr ".bps" -type "matrix" -8.2373309230100644e-09 -0.83656660896695656 -0.54786522864800191 0
		 -3.6305136086836941e-16 0.5478652286480018 -0.83656660896695689 0 1.0000000000000002 -6.8910757944276569e-09 -4.5129475668525488e-09 0
		 6.0739639129376366e-24 -58.841830072892549 50.056582578569817 1;
	setAttr ".radi" 2;
createNode ikEffector -n "pasted__effector2" -p "RightKnee";
	rename -uid "2440699C-4E41-284B-516D-619D722F28B7";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Character";
	rename -uid "B45B01CC-4B8D-326E-C199-C3BD3C00324C";
createNode transform -n "polySurface9" -p "|Character";
	rename -uid "1EE06054-41EE-B82E-78C7-5587125D8930";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurfaceShape9" -p "polySurface9";
	rename -uid "CC6E0C78-4FC1-C3F9-A4E5-4E8C01127F33";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.63391900062561035 0.78983831405639648 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape9Orig" -p "polySurface9";
	rename -uid "5D000404-4E10-CCE0-E6A7-DCBDAAB56A6A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Mouth" -p "|Character";
	rename -uid "785B1FB5-4860-3198-1820-71864A1F82BC";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "MouthShape" -p "Mouth";
	rename -uid "E5B8D35E-4732-E3C3-0844-A490E50DE46E";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "MouthShapeOrig" -p "Mouth";
	rename -uid "DF18B2E6-4115-3E53-B9BF-E9ABCB56255A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Mouth1" -p "|Character";
	rename -uid "0AC52986-4E95-4F6C-5F0F-74A28DFAB6B2";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "MouthShape1" -p "Mouth1";
	rename -uid "30727267-4C5D-9A94-2C07-939E2D7061C3";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "MouthShape1Orig" -p "Mouth1";
	rename -uid "3BD7A584-4389-2813-90B8-688850C1CD80";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Eye1" -p "|Character";
	rename -uid "98C6F821-4A1C-F81D-F96C-1E85C3720EAA";
createNode transform -n "polySurface7" -p "Eye1";
	rename -uid "E485B025-4F14-46E1-1A86-058C3E21B203";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurfaceShape7" -p "polySurface7";
	rename -uid "EFD7E29E-4D2F-7A9B-95CD-5CB759F2CED7";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape7Orig" -p "polySurface7";
	rename -uid "92B9472F-4F17-644E-1F52-15A2B5A3311A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface8" -p "Eye1";
	rename -uid "D3076DD6-4B4B-2780-15BF-429C20C1ED8C";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurfaceShape8" -p "polySurface8";
	rename -uid "69D945DE-413F-0B6B-A83E-2B9010844C0C";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape8Orig" -p "polySurface8";
	rename -uid "579E9418-464C-EF7D-5C9E-8CAC8201F44B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform5" -p "Eye1";
	rename -uid "4CC7185D-4F5C-1875-33B0-D7B6639F8171";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform5";
	rename -uid "DE0635D8-4B5A-F881-11E7-2FA05B22592B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Eye" -p "|Character";
	rename -uid "805A1DC9-4AA2-B7CA-E9BB-40895C425D75";
createNode transform -n "polySurface4" -p "Eye";
	rename -uid "F62B2969-480F-C1D8-5411-16967F9C868E";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
	rename -uid "E73E73C1-4537-23BC-A236-94B23A5D2753";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape4Orig" -p "polySurface4";
	rename -uid "27BF8494-48B6-9F54-7C6D-C0AA092DF686";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface5" -p "Eye";
	rename -uid "21B151DF-4CE9-671A-0096-A8BC607F1E78";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurfaceShape5" -p "polySurface5";
	rename -uid "26743CA3-44ED-CDA9-CF66-AEB209126542";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape5Orig" -p "polySurface5";
	rename -uid "AF812EE7-4182-E4C6-E55C-308F141736EE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform4" -p "Eye";
	rename -uid "01A8457A-4C5A-FA6A-BA84-12802E513344";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform4";
	rename -uid "A8DBB026-4B64-C76C-8D79-09B11983EDA8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Character" -p "|Character";
	rename -uid "1CB9F64B-46EC-7AB6-BB24-85A82F50769C";
	setAttr ".rp" -type "double3" 2.8464451276022373e-08 5.2301648870862527 -0.035007951611866449 ;
	setAttr ".sp" -type "double3" 2.8464451276022373e-08 5.2301648870862527 -0.035007951611866449 ;
createNode transform -n "transform3" -p "|Character|Character";
	rename -uid "2FAC984E-49DF-5A8B-A49F-F598D746A5F7";
	setAttr ".v" no;
createNode mesh -n "RagDoll2Shape" -p "transform3";
	rename -uid "227D86BF-41D7-2715-5605-39B15E36CDF7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Body" -p "|Character|Character";
	rename -uid "EF369F2C-431F-329B-469D-15A9B31A339A";
	setAttr ".t" -type "double3" 0 6.1669846631071241 0 ;
	setAttr ".s" -type "double3" 0.74617851297006599 1.5138878959162383 -1 ;
	setAttr ".rp" -type "double3" 0 0 -0.14183151245117187 ;
	setAttr ".sp" -type "double3" 0 0 -0.128161307100988 ;
	setAttr ".spt" -type "double3" 0 0 -0.013670205350183699 ;
createNode transform -n "transform1" -p "Body";
	rename -uid "4E76FF9D-4ECD-4AC6-A184-C7A4A738B7A5";
	setAttr ".v" no;
createNode mesh -n "RagDoll1Shape" -p "transform1";
	rename -uid "9EFBD726-47D3-8B56-1FD1-81A7E82A4C53";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:309]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 488 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.34375 0.15625 0.38951457
		 0.26673543 0.5 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.46875 0.3125 0.5 0.3125
		 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.46875 0.68843985 0.5 0.68843985 0.53125
		 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.61048543 0.73326457 0.5 0.6875
		 0.38951457 0.73326457 0.34375 0.84375 0.65625 0.84375 0.5 0.15000001 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.59375 0.67599672
		 0.5625 0.67599672 0.53125 0.67599672 0.5 0.67599672 0.46875 0.67599672 0.65625 0.84375
		 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.59375 0.68057692
		 0.5625 0.68057692 0.53125 0.68057692 0.5 0.68057692 0.46875 0.68057692 0.5 0.22504234
		 0.5 0.29377219 0.55739737 0.2733478 0.55320209 0.23936032 0.44921562 0.24083759 0.4495663
		 0.274129 0.5 0.22504234 0.55320209 0.23936032 0.55739737 0.2733478 0.5 0.29377219
		 0.4495663 0.274129 0.44921562 0.24083759 0.55739737 0.2733478 0.55320209 0.23936032
		 0.5 0.22504234 0.44921559 0.24083759 0.4495663 0.274129 0.5 0.29377219 0.59375 0.31413579
		 0.5625 0.31413579 0.53125006 0.31413579 0.5 0.31413579 0.46875003 0.31413579 0.59375
		 0.68792778 0.5625 0.68792778 0.53125 0.68792778 0.5 0.68792778 0.46875 0.68792778
		 0.65624994 0.84375 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375
		 0.84375 0.59375 0.68023026 0.5625 0.68023026 0.53125 0.68023026 0.5 0.68023026 0.46875
		 0.68023026 0.59375 0.67307687 0.5625 0.67307687 0.53125 0.67307687 0.5 0.67307687
		 0.46875 0.67307687 0.34375 0.84375 0.38951457 0.73326457 0.5 0.83749998 0.5 0.6875
		 0.61048543 0.73326457 0.65625 0.84375 0.4510324 0.70778304 0.4510324 0.70778304 0.4510324
		 0.70778304 0.4510324 0.70778304 0.4510324 0.70778304 0.4510324 0.70778304 0.4510324
		 0.70778298 0.4510324 0.70778298 0.4510324 0.70778304 0.4510324 0.70778304 0.51739991
		 0.68843985 0.51739985 0.68792772 0.51739985 0.68057692 0.51739985 0.68023026 0.51739985
		 0.67599672 0.51739985 0.67307687 0.51739991 0.31413579 0.51739991 0.3125 0.4510324
		 0.29221696 0.54561627 0.70639491 0.54561627 0.70639491 0.54561627 0.70639491 0.54561627
		 0.70639491 0.54561627 0.70639491 0.54561627 0.70639491 0.54561627 0.70639491 0.54561627
		 0.70639491 0.54561627 0.70639491 0.54561627 0.70639491 0.54415226 0.68843985 0.54415226
		 0.68792778 0.54415226 0.68057692 0.54415226 0.68023026 0.54415226 0.67599672 0.54415226
		 0.67307687 0.54415226 0.31413579 0.54415226 0.3125 0.54561627 0.29360512 0.55320209
		 0.23936032 0.5 0.22504234 0.44921559 0.24083759 0.4495663 0.274129 0.5 0.29377219
		 0.55739737 0.2733478 0.55320209 0.23936032 0.5 0.22504234 0.44921559 0.24083759 0.4495663
		 0.274129 0.5 0.29377219 0.55739737 0.2733478 0.65625 0.84375 0.61048543 0.73326457
		 0.54561627 0.70639491 0.5 0.6875 0.4510324 0.70778304 0.38951457 0.73326457 0.34375
		 0.84375 0.65625 0.84375 0.61048543 0.73326457 0.54561627 0.70639491 0.5 0.6875 0.4510324
		 0.70778304 0.38951457 0.73326457 0.34375 0.84375 0.57272631 0.3125 0.62546152 0.23057999
		 0.57272631 0.31413579 0.57272631 0.67307687 0.57272631 0.67599672 0.57272631 0.68023026
		 0.57272631 0.68057692 0.57272631 0.68792778 0.62546152 0.76942003 0.57272631 0.68843985
		 0.62546152 0.76942003 0.62546146 0.76942003 0.62546152 0.76942003 0.62546152 0.76942003
		 0.62546152 0.76942003 0.62546152 0.76942003 0.62546152 0.76942003 0.62546152 0.76942003
		 0.62546152 0.76942003 0.62546152 0.76942003 0.62546152 0.76942003 0.64186758 0.80902779
		 0.64186758 0.80902779 0.64186758 0.80902779 0.64186758 0.80902779 0.55161178 0.78880781
		 0.52130902 0.69632649 0.52130902 0.69632649 0.52130902 0.69632649 0.52130902 0.69632649
		 0.52130902 0.69632649 0.52130902 0.69632649 0.52130902 0.69632649 0.52130902 0.69632649
		 0.52130902 0.69632649 0.52130902 0.69632649 0.52130902 0.69632649 0.52130902 0.69632649
		 0.5372771 0.68843985 0.5372771 0.68792778 0.5372771 0.68057692 0.5372771 0.68023026
		 0.5372771 0.67599672 0.5372771 0.67307687 0.53727716 0.31413579 0.5372771 0.3125
		 0.52130902 0.30367351 0.55161178 0.20453139 0.58392906 0.3125 0.64186758 0.19097225
		 0.58392906 0.31413579 0.58392906 0.67307687 0.58392906 0.67599672 0.58392906 0.68023026
		 0.58392906 0.68057692 0.58392906 0.68792778 0.64186758 0.80902779 0.58392906 0.68843985
		 0.64186758 0.80902779 0.64186752 0.80902779 0.64186758 0.80902779 0.64186758 0.80902779
		 0.64186758 0.80902779 0.64186758 0.80902779 0.64186758 0.80902779 0.62546152 0.76942003
		 0.62546152 0.76942003 0.64186758 0.80902779 0.64186758 0.80902779 0.62546152 0.76942003
		 0.62546152 0.76942003;
	setAttr ".uvst[0].uvsp[250:487]" 0.64186758 0.80902779 0.64186758 0.80902779
		 0.62546152 0.76942003 0.62546152 0.76942003 0.62546152 0.76942003 0.62546152 0.76942003
		 0.64186758 0.80902779 0.64186758 0.80902779 0.64186758 0.80902779 0.64186758 0.80902779
		 0.65625 0.84375 0.64186758 0.80902779 0.62546152 0.76942003 0.61048543 0.73326457
		 0.54561627 0.70639491 0.52130902 0.69632649 0.5 0.6875 0.4510324 0.70778304 0.38951457
		 0.73326457 0.34375 0.84375 0.65625 0.84375 0.64186758 0.80902779 0.62546152 0.76942003
		 0.61048543 0.73326457 0.54561627 0.70639491 0.52130902 0.69632649 0.5 0.6875 0.4510324
		 0.70778304 0.38951457 0.73326457 0.34375 0.84375 0.51739985 0.67599672 0.53125 0.67599672
		 0.53125 0.68023026 0.51739985 0.68023026 0.5372771 0.67599672 0.54415226 0.67599672
		 0.54415226 0.68023026 0.5372771 0.68023026 0.51739985 0.67599672 0.53125 0.67599672
		 0.53125 0.68023026 0.51739985 0.68023026 0.5372771 0.67599672 0.54415226 0.67599672
		 0.54415226 0.68023026 0.5372771 0.68023026 0.51739985 0.67599672 0.53125 0.67599672
		 0.53125 0.68023026 0.51739985 0.68023026 0.5372771 0.67599672 0.54415226 0.67599672
		 0.54415226 0.68023026 0.5372771 0.68023026 0.51739985 0.67599672 0.53125 0.67599672
		 0.53125 0.68023026 0.51739985 0.68023026 0.5372771 0.67599672 0.54415226 0.67599672
		 0.54415226 0.68023026 0.5372771 0.68023026 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".pt[292:335]" -type "float3"  0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492;
	setAttr -s 336 ".vt";
	setAttr ".vt[0:165]"  -1.2339673 -1.414307 -0.031241817 -0.87254685 -1.414307 0.91196853
		 -1.7850308e-08 -1.414307 1.15058589 0.87254685 -1.414307 0.91196853 1.23396754 -1.414307 -0.031241817
		 -0.47735104 0.87495667 -0.031241817 -0.33753821 0.87495667 0.33753848 3.9874923e-08 0.87495667 0.47735119
		 0.33753836 0.87495667 0.33753848 0.47735119 0.87495667 -0.031241817 -1.7850308e-08 -1.414307 -0.031241817
		 -0.47735104 1.028359056 -0.031241817 -0.33753821 1.028359056 0.33753848 3.9874923e-08 1.028359056 0.47735119
		 0.33753836 1.028359056 0.33753848 0.47735119 1.028359056 -0.031241817 -1.21194386 1.1702826 -0.031241817
		 -0.85697371 1.1702826 0.78013617 -1.617005e-08 1.1702826 1.10327888 0.85697383 1.1702826 0.78013617
		 1.2119441 1.1702826 -0.031241817 -1.26978254 1.33983088 -0.031241817 -0.89787179 1.33983088 0.8173672
		 -2.2403304e-08 1.33983088 1.15593183 0.89787185 1.33983088 0.8173672 1.26978266 1.33983088 -0.031241817
		 -1.26978254 2.33199716 -0.031241817 -0.89787179 2.33199716 0.8173672 -2.2403304e-08 2.33199716 1.15593183
		 0.89787185 2.33199716 0.8173672 1.26978266 2.33199716 -0.031241817 -1.18213284 2.41584468 -0.031241817
		 -0.83589411 2.41584468 0.76094681 -1.822368e-08 2.41584468 1.076141 0.83589417 2.41584468 0.76094681
		 1.18213308 2.41584468 -0.031241817 -1.089103818 2.47633553 -0.031241812 -0.77011269 2.47633553 0.64892626
		 -1.0785527e-08 2.47633553 0.93931615 0.77011269 2.47633553 0.64892638 1.089103937 2.47633553 -0.031241812
		 1.23396742 0.51949495 -0.031241817 0.87254697 0.51949495 0.91196907 -1.7850327e-08 0.51949495 1.15058589
		 -0.87254685 0.51949495 0.91196907 -1.2339673 0.51949495 -0.031241817 0.99221152 1.10383725 -0.031241817
		 0.70159948 1.10383725 0.65488917 -4.8633071e-09 1.10383725 0.92615283 -0.70159942 1.10383725 0.65488917
		 -0.99221128 1.10383725 -0.031241817 0.87380087 0.76511109 -0.031241817 0.61787069 0.76511109 0.61787093
		 9.6282156e-09 0.76511109 0.87380064 -0.61787057 0.76511109 0.61787093 -0.87380064 0.76511109 -0.031241817
		 -1.7850308e-08 -1.414307 0.59559071 -1.785031e-08 -1.414307 1.11947978 0.45328963 -1.414307 0.97143006
		 0.42015782 -1.414307 0.70223242 -0.43115792 -1.414307 0.71427518 -0.45500061 -1.414307 0.97854596
		 0.42015782 -3.78095937 0.70223242 -1.7850308e-08 -3.78095937 0.59559071 0.45328963 -3.78095937 0.97143006
		 -1.785031e-08 -3.78095937 1.11947978 -0.45500061 -3.78095937 0.97854596 -0.43115792 -3.78095937 0.71427518
		 0.45328963 -1.4364264 0.97143006 0.42015782 -1.4364264 0.70223242 -1.7850308e-08 -1.4364264 0.59559071
		 -0.43115792 -1.4364264 0.71427518 -0.45500061 -1.4364264 0.97854596 -1.785031e-08 -1.4364264 1.11947978
		 1.23396754 -1.4056046 -0.031241817 0.87254685 -1.4056046 0.91196853 -1.785031e-08 -1.4056046 1.15058589
		 -0.87254685 -1.4056046 0.91196853 -1.2339673 -1.4056046 -0.031241817 0.50317007 0.86780214 -0.031241817
		 0.35579506 0.86780214 0.3557952 3.7905096e-08 0.86780214 0.50317007 -0.35579494 0.86780214 0.3557952
		 -0.50316989 0.86780214 -0.031241817 0.54002112 1.037546396 -0.031241817 0.38185269 1.037546396 0.37616712
		 3.4429284e-08 1.037546396 0.53198028 -0.38185257 1.037546396 0.37616712 -0.540021 1.037546396 -0.031241817
		 1.092945814 0.69988251 -0.031241817 0.77282959 0.69988251 0.68005729 -1.5214779e-08 0.69988251 1.001672864
		 -0.77282953 0.69988251 0.68005729 -1.092945576 0.69988251 -0.031241817 1.23396742 0.50396121 -0.031241817
		 0.87254697 0.50396121 0.91196907 -1.7850327e-08 0.50396121 1.15058589 -0.87254685 0.50396121 0.91196907
		 -1.2339673 0.50396121 -0.031241817 -0.73078978 2.54332519 -0.031241817 -0.51674652 2.54332519 0.54500461
		 1.7863522e-08 2.54332519 -0.031241817 1.7863522e-08 2.54332519 0.73985696 0.51674658 2.54332519 0.54500461
		 0.73078996 2.54332519 -0.031241817 -0.22902411 2.54332519 0.6534977 -0.34131706 2.47633553 0.81061441
		 -0.37047166 2.41584468 0.9364453 -0.3979404 2.33199716 1.0058789253 -0.3979404 1.33983088 1.0058789253
		 -0.37981424 1.1702826 0.96006072 -0.31095174 1.10383725 0.80592775 -0.16923857 1.037546396 0.4629232
		 -0.1495983 1.028359056 0.4153856 -0.1495983 0.87495667 0.4153856 -0.15768975 0.86780214 0.43785277
		 -0.27384272 0.76511109 0.76037145 -0.34252113 0.69988251 0.85913122 -0.38671628 0.51949495 0.98316592
		 -0.65351319 0.50396121 0.98316592 -0.65351319 -1.4056046 0.9831658 -0.38671631 -1.414307 0.9831658
		 0.21334988 2.54332519 0.65940803 0.31795749 2.476336 0.8194226 0.34511676 2.41584468 0.9460063
		 0.37070557 2.33199716 1.016147971 0.37070557 1.33983088 1.016147971 0.35381994 1.1702826 0.96986252
		 0.28967035 1.10383725 0.81415558 0.15765606 1.037546396 0.46764949 0.13935995 1.028359056 0.4196265
		 0.13935995 0.87495667 0.4196265 0.14689761 0.86780214 0.44232315 0.25510111 0.76511109 0.76813459
		 0.31907922 0.69988251 0.86888671 0.36024967 0.51949495 0.9946245 0.62589502 0.50396121 0.9946245
		 0.6258949 -1.4056046 0.9946239 0.36024961 -1.414307 0.9946239 0.42015782 -2.59621954 0.70223242
		 -1.7850308e-08 -2.59621954 0.59559071 -0.43115792 -2.59621954 0.71427518 -0.45500061 -2.59621954 0.97854596
		 -1.785031e-08 -2.59621954 1.11947978 0.45328963 -2.59621954 0.97143006 0.42015782 -2.54346466 0.70223242
		 -1.7850308e-08 -2.54346466 0.59559071 -0.43115792 -2.54346466 0.71427518 -0.45500061 -2.54346466 0.97854596
		 -1.785031e-08 -2.54346466 1.11947978 0.45328963 -2.54346466 0.97143006 1.26978266 2.085614681 -0.031241817
		 0.89787185 2.085614681 0.8173672 0.37070557 2.085614681 1.016147971 -2.2403304e-08 2.085614681 1.15593183
		 -0.3979404 2.085614681 1.0058789253 -0.89787179 2.085614681 0.8173672 -1.26978254 2.085614681 -0.031241817
		 1.26978254 1.88239992 -0.031241817 0.89787185 1.88239992 0.8173672 0.37070557 1.88239992 1.016147971
		 -2.2403304e-08 1.88239992 1.15593183 -0.3979404 1.88239992 1.0058789253 -0.89787179 1.88239992 0.8173672
		 -1.26978254 1.88239992 -0.031241817 0.99081892 -1.414307 0.60331094;
	setAttr ".vt[166:331]" 0.99081892 -1.4056046 0.60331094 0.99081892 0.50396121 0.603311
		 0.99081892 0.51949495 0.603311 0.87758499 0.69988251 0.44729054 0.70162177 0.76511109 0.4054541
		 0.40402231 0.86780214 0.22914048 0.38329098 0.87495667 0.2168581 0.38329098 1.028359056 0.2168581
		 0.43361199 1.037546396 0.24284586 0.79669988 1.10383725 0.43035835 0.97313493 1.1702826 0.51461941
		 1.019576669 1.33983088 0.53966677 1.01957655 1.88239992 0.53966677 1.01957655 2.085614681 0.53966677
		 1.019576669 2.33199716 0.53966677 0.94919807 2.41584468 0.5017094 0.87450004 2.476336 0.42634714
		 0.58679056 2.54332519 0.3564328 1.15290225 2.33199716 0.23545039 1.073320627 2.41584468 0.21771915
		 0.98885459 2.47633553 0.18251462 0.66352254 2.54332519 0.14985515 0.24139118 2.54332519 0.23794401
		 0.099663526 2.54332519 0.70227623 0.14852954 2.47633553 0.8833096 0.16121662 2.41584468 1.015350223
		 0.17317009 2.33199716 1.090633512 0.17317009 2.085614681 1.090633512 0.17317009 1.88239992 1.090633512
		 0.17317009 1.33983088 1.090633512 0.16528219 1.1702826 1.040954947 0.1353156 1.10383725 0.87383497
		 0.073646918 1.037546396 0.50192904 0.065100141 1.028359056 0.45038602 0.065100141 0.87495667 0.45038602
		 0.068621255 0.86780214 0.47474626 0.11916706 0.76511109 0.82444024 0.14905353 0.69988251 0.93964326
		 0.16828577 0.51949495 1.077730179 0.37407085 0.50396121 1.077730179 0.37407082 -1.4056046 1.077730179
		 0.16828573 -1.414307 1.077730179 0.4075985 -1.414307 0.40936619 1.12038386 -1.414307 0.26518083
		 1.12038386 -1.4056046 0.26518083 1.12038386 0.50396121 0.26518092 1.12038386 0.51949495 0.26518092
		 0.99234289 0.69988251 0.19229813 0.79336977 0.76511109 0.17275475 0.45685452 0.86780214 0.090392277
		 0.43341225 0.87495667 0.084654711 0.43341225 1.028359056 0.084654711 0.49031356 1.037546396 0.096794516
		 0.90088087 1.10383725 0.18438846 1.10038769 1.1702826 0.22374989 1.15290225 1.33983088 0.23545039
		 1.15290225 1.88239992 0.23545039 1.15290225 2.085614681 0.23545039 1.024098396 1.889292 0.52934933
		 1.024098396 2.078723192 0.52934933 1.14838052 1.889292 0.24576807 1.14838052 2.078723192 0.24576807
		 0.57068676 1.889292 0.52934933 0.57068676 2.078723192 0.52934933 0.69496888 1.889292 0.24576807
		 0.69496888 2.078723192 0.24576807 1.044231534 1.88239992 0.53966677 1.044231534 2.085614681 0.53966677
		 1.048753262 1.889292 0.52934933 1.048753262 2.078723192 0.52934933 1.17755711 1.88239992 0.23545039
		 1.17303538 1.889292 0.24576807 1.17755711 2.085614681 0.23545039 1.17303538 2.078723192 0.24576807
		 1.26978254 1.65018988 -0.031241817 1.15290225 1.65018988 0.23545039 1.01957655 1.65018988 0.53966677
		 0.89787185 1.65018988 0.8173672 0.37070557 1.65018988 1.016147971 0.17317009 1.65018988 1.090633512
		 -2.2403304e-08 1.65018988 1.15593183 -0.3979404 1.65018988 1.0058789253 -0.89787179 1.65018988 0.8173672
		 -1.26978254 1.65018988 -0.031241817 1.26978254 1.50164306 -0.031241817 1.15290225 1.50164306 0.23545039
		 1.019576669 1.50164306 0.53966677 0.89787185 1.50164306 0.8173672 0.37070557 1.50164306 1.016147971
		 0.17317009 1.50164306 1.090633512 -2.2403304e-08 1.50164306 1.15593183 -0.3979404 1.50164306 1.0058789253
		 -0.89787179 1.50164306 0.8173672 -1.26978254 1.50164306 -0.031241817 0.0014571755 0.4469806 1.14669752
		 -0.42784265 0.4469806 1.14669573 0.0014571783 0.64545137 1.18314266 -0.3787809 0.64545137 1.18314123
		 0.40137604 0.4469806 1.14669573 0.18827389 0.4469806 1.14669657 0.35567206 0.64545137 1.18314123
		 0.16692388 0.64545137 1.18314207 0.00071869331 0.22826935 1.42524159 -0.40700045 0.22826935 1.42523944
		 0.00071869715 0.47119141 1.46984923 -0.36040506 0.47119141 1.46984744 0.38053387 0.22826935 1.42523944
		 0.17814425 0.22826935 1.42524052 0.33712742 0.47119141 1.46984768 0.15786748 0.47119141 1.46984875
		 0.00071869331 -0.042101745 1.50671935 -0.40700045 -0.042100526 1.50671875 0.00071869715 0.069634706 1.80514324
		 -0.36040506 0.069635928 1.80514252 0.38053387 -0.042100526 1.50671875 0.17814425 -0.042101134 1.50671935
		 0.33712742 0.069635317 1.80514252 0.15786748 0.069635011 1.80514312 0.00071869331 -1.29874301 1.57640553
		 -0.40700045 -1.29874182 1.57640493 0.00071869715 -1.18700624 1.87482941 -0.36040506 -1.18700504 1.87482882
		 0.38053387 -1.29874182 1.57640493 0.17814425 -1.29874182 1.57640553 0.33712742 -1.18700528 1.8748287
		 0.15786748 -1.18700564 1.87482929 -1.2339673 -1.414307 -0.031241817 -1.2339673 -1.4056046 -0.031241817
		 1.23396754 -1.414307 -0.031241817 1.23396754 -1.4056046 -0.031241817 -1.7850308e-08 -1.414307 -0.031241817
		 -0.47735104 0.87495667 -0.031241817 -0.47735104 1.028359056 -0.031241817 0.47735119 0.87495667 -0.031241817
		 0.47735119 1.028359056 -0.031241817 -0.540021 1.037546396 -0.031241817 0.54002112 1.037546396 -0.031241817
		 -1.21194386 1.1702826 -0.031241817 -1.26978254 1.33983088 -0.031241817 1.2119441 1.1702826 -0.031241817
		 1.26978266 1.33983088 -0.031241817 -1.26978254 1.50164306 -0.031241817 1.26978254 1.50164306 -0.031241817
		 -1.26978254 2.33199716 -0.031241817 -1.18213284 2.41584468 -0.031241817 1.26978266 2.33199716 -0.031241817
		 1.18213308 2.41584468 -0.031241817 -1.089103818 2.47633553 -0.031241812 1.089103937 2.47633553 -0.031241812
		 1.23396742 0.51949495 -0.031241817 1.092945814 0.69988251 -0.031241817 -1.2339673 0.51949495 -0.031241817
		 -1.092945576 0.69988251 -0.031241817 0.99221152 1.10383725 -0.031241817 -0.99221128 1.10383725 -0.031241817
		 0.87380087 0.76511109 -0.031241817 0.50317007 0.86780214 -0.031241817 -0.87380064 0.76511109 -0.031241817
		 -0.50316989 0.86780214 -0.031241817 1.23396742 0.50396121 -0.031241817 -1.2339673 0.50396121 -0.031241817
		 -0.73078978 2.54332519 -0.031241817 1.7863522e-08 2.54332519 -0.031241817 0.73078996 2.54332519 -0.031241817
		 1.26978266 2.085614681 -0.031241817 -1.26978254 2.085614681 -0.031241817;
	setAttr ".vt[332:335]" 1.26978254 1.88239992 -0.031241817 -1.26978254 1.88239992 -0.031241817
		 1.26978254 1.65018988 -0.031241817 -1.26978254 1.65018988 -0.031241817;
	setAttr -s 645 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 121 0 2 207 0 3 165 0 5 6 0 6 114 0 7 200 0
		 8 172 0 0 78 0 1 77 0 2 76 0 3 75 0 4 74 0 10 0 0 10 1 1 10 56 1 10 208 1 10 4 0
		 5 11 0 6 12 0 11 12 0 7 13 0 12 113 0 8 14 0 13 199 0 9 15 0 14 173 0 11 88 0 12 87 0
		 16 17 0 13 86 0 17 110 0 14 85 0 18 196 0 15 84 0 19 176 0 16 21 0 17 22 0 21 22 0
		 18 23 0 22 109 0 19 24 0 23 195 0 20 25 0 24 177 0 21 259 0 22 258 0 26 27 0 23 256 0
		 27 108 0 24 253 0 28 192 0 25 250 0 29 180 0 26 31 0 27 32 0 31 32 1 28 33 0 32 107 0
		 29 34 0 33 191 0 30 35 0 34 181 1 31 36 0 32 37 0 36 37 0 33 38 0 37 106 0 34 39 0
		 38 190 0 35 40 0 39 182 0 41 89 0 42 90 0 41 212 1 42 135 1 44 92 0 43 118 0 45 93 0
		 44 45 1 46 20 0 47 19 0 46 219 1 48 18 0 47 128 1 49 17 0 48 111 1 50 16 0 49 50 1
		 51 79 0 52 80 0 51 214 1 53 81 0 52 133 1 54 82 0 53 116 1 55 83 0 54 55 1 57 2 1
		 57 58 0 58 59 0 59 56 0 56 60 0 60 61 0 61 57 0 59 69 0 56 70 0 62 63 0 58 68 0 64 62 0
		 57 73 0 65 64 0 63 65 1 61 72 0 66 65 0 60 71 0 67 66 0 63 67 0 68 150 0 69 145 0
		 68 69 1 70 146 0 69 70 1 71 147 0 70 71 1 72 148 0 71 72 1 73 149 0 72 73 1 73 68 1
		 74 94 0 75 95 0 74 210 1 76 96 0 75 137 1 77 97 0 76 120 1 78 98 0 77 78 1 79 9 0
		 80 8 0 79 215 1 81 7 0 80 132 1 82 6 0 81 115 1 83 5 0 82 83 1 84 46 0 85 47 0 84 218 1
		 86 48 0 85 129 1 87 49 0 86 112 1 88 50 0 87 88 1 89 51 0 90 52 0 89 213 1 91 53 0
		 90 134 1 92 54 0 91 117 0 93 55 0 92 93 1;
	setAttr ".ed[166:331]" 94 41 0 95 42 0 94 211 1 96 43 0 95 136 1 97 44 0 96 119 1
		 98 45 0 97 98 1 36 99 0 37 100 0 99 100 0 100 101 1 99 101 0 38 102 0 100 105 0 102 101 1
		 39 103 0 102 189 0 103 188 1 40 104 0 103 183 0 104 101 0 105 102 0 106 38 0 105 106 1
		 107 33 0 106 107 1 108 28 0 107 108 1 109 23 0 108 155 1 110 18 0 109 110 1 111 49 1
		 110 111 1 112 87 1 111 112 1 113 13 0 112 113 1 114 7 0 113 114 1 115 82 1 114 115 1
		 116 54 1 115 116 1 117 92 1 116 117 1 118 44 1 117 118 0 119 97 1 118 119 1 120 77 1
		 119 120 1 121 2 0 120 121 1 122 103 0 123 39 0 122 123 1 124 34 0 123 124 1 125 29 0
		 124 125 1 126 24 0 125 153 1 127 19 0 126 127 1 128 197 1 127 128 1 129 198 1 128 129 1
		 130 14 0 129 130 1 131 8 0 130 131 1 132 201 1 131 132 1 133 202 1 132 133 1 134 203 0
		 133 134 1 135 204 0 134 135 0 136 205 1 135 136 1 137 206 1 136 137 1 138 3 0 137 138 1
		 139 62 0 140 63 0 139 140 1 141 67 0 140 141 1 142 66 0 141 142 1 143 65 0 142 143 1
		 144 64 0 143 144 1 144 139 1 145 139 0 146 140 0 145 146 1 147 141 0 146 147 1 148 142 0
		 147 148 1 149 143 0 148 149 1 150 144 0 149 150 1 150 145 1 151 30 0 152 29 0 151 223 1
		 153 160 1 152 153 1 154 28 0 153 193 1 155 162 1 154 155 1 156 27 0 155 156 1 157 26 0
		 156 157 1 158 151 0 159 152 0 158 222 1 160 244 1 159 160 1 161 154 0 160 194 1 162 247 1
		 161 162 1 163 156 0 162 163 1 164 157 0 163 164 1 165 209 0 166 75 1 165 166 1 167 95 1
		 166 167 1 168 42 1 167 168 1 169 90 1 168 169 1 170 52 1 169 170 1 171 80 1 170 171 1
		 172 216 0 171 172 1 173 217 0 172 173 1 174 85 1 173 174 1 175 47 1 174 175 1 176 220 0
		 175 176 1 177 221 0 176 177 1 178 159 1 177 252 1;
	setAttr ".ed[332:497]" 179 152 1 178 179 0 180 184 0 179 180 1 181 185 1 180 181 1
		 182 186 0 181 182 1 183 187 0 182 183 1 184 30 0 185 35 1 184 185 1 186 40 0 185 186 1
		 187 104 0 186 187 1 188 101 1 187 188 1 189 122 0 188 189 1 190 123 0 189 190 1 191 124 0
		 190 191 1 192 125 0 191 192 1 193 154 1 192 193 1 194 161 1 193 194 1 195 126 0 194 245 1
		 196 127 0 195 196 1 197 48 1 196 197 1 198 86 1 197 198 1 199 130 0 198 199 1 200 131 0
		 199 200 1 201 81 1 200 201 1 202 53 1 201 202 1 203 91 0 202 203 1 204 43 0 205 96 1
		 204 205 1 206 76 1 205 206 1 207 138 0 206 207 1 208 3 1 207 208 1 209 4 0 208 209 1
		 210 166 1 209 210 1 211 167 1 210 211 1 212 168 1 211 212 1 213 169 1 212 213 1 214 170 1
		 213 214 1 215 171 1 214 215 1 216 9 0 215 216 1 217 15 0 216 217 1 218 174 1 217 218 1
		 219 175 1 218 219 1 220 20 0 219 220 1 221 25 0 220 221 1 222 178 0 221 251 1 223 179 0
		 222 223 0 223 184 1 224 225 0 226 224 0 226 227 0 227 225 0 224 228 0 225 229 0 228 229 0
		 226 230 0 230 228 0 227 231 0 230 231 0 231 229 0 178 232 0 179 233 0 232 233 0 224 234 0
		 232 234 0 225 235 0 234 235 0 233 235 0 222 236 0 236 232 0 226 237 0 236 237 0 237 234 0
		 223 238 0 236 238 0 227 239 0 238 239 0 237 239 0 238 233 0 239 235 0 240 158 0 241 222 1
		 240 241 1 242 178 1 241 242 1 243 159 0 242 243 1 244 254 1 243 244 1 245 255 1 244 245 1
		 246 161 0 245 246 1 247 257 1 246 247 1 248 163 0 247 248 1 249 164 0 248 249 1 250 240 0
		 251 241 1 250 251 1 252 242 1 251 252 1 253 243 0 252 253 1 254 126 1 253 254 1 255 195 1
		 254 255 1 256 246 0 255 256 1 257 109 1 256 257 1 258 248 0 257 258 1 259 249 0 258 259 1
		 43 260 0 118 261 0 260 261 0 91 262 0 117 263 0 262 263 0 263 261 0;
	setAttr ".ed[498:644]" 135 264 0 204 265 0 264 265 0 134 266 0 266 264 0 203 267 0
		 266 267 0 265 260 0 267 262 0 260 268 0 261 269 0 268 269 0 262 270 0 263 271 0 270 271 0
		 271 269 0 264 272 0 265 273 0 272 273 0 266 274 0 274 272 0 267 275 0 274 275 0 273 268 0
		 275 270 0 268 276 0 269 277 0 276 277 0 270 278 0 271 279 0 278 279 0 279 277 0 272 280 0
		 273 281 0 280 281 0 274 282 0 282 280 0 275 283 0 282 283 0 281 276 0 283 278 0 276 284 0
		 277 285 0 284 285 0 278 286 0 284 286 0 279 287 0 286 287 0 287 285 0 280 288 0 281 289 0
		 288 289 0 282 290 0 290 288 0 283 291 0 290 291 0 291 289 1 289 284 0 291 286 0 0 292 0
		 78 293 0 292 293 0 4 294 0 74 295 0 294 295 0 10 296 0 296 292 0 296 294 0 5 297 0
		 11 298 0 297 298 0 9 299 0 15 300 0 299 300 0 88 301 0 298 301 0 84 302 0 300 302 0
		 16 303 0 21 304 0 303 304 0 20 305 0 25 306 0 305 306 0 259 307 0 304 307 0 250 308 0
		 306 308 0 26 309 0 31 310 0 309 310 0 30 311 0 35 312 0 311 312 0 36 313 0 310 313 0
		 40 314 0 312 314 0 41 315 0 89 316 0 315 316 0 45 317 0 93 318 0 317 318 0 46 319 0
		 319 305 0 50 320 0 320 303 0 51 321 0 79 322 0 321 322 0 55 323 0 83 324 0 323 324 0
		 94 325 0 295 325 0 98 326 0 293 326 0 322 299 0 324 297 0 302 319 0 301 320 0 316 321 0
		 318 323 0 325 315 0 326 317 0 99 327 0 313 327 0 101 328 0 327 328 0 104 329 0 314 329 0
		 329 328 0 151 330 0 330 311 0 157 331 0 331 309 0 158 332 0 332 330 0 164 333 0 333 331 0
		 240 334 0 334 332 0 249 335 0 335 333 0 308 334 0 307 335 0;
	setAttr -s 310 -ch 1246 ".fc[0:309]" -type "polyFaces" 
		f 4 0 9 138 -9
		mu 0 4 5 6 87 88
		f 4 220 10 136 221
		mu 0 4 132 7 86 131
		f 4 253 11 134 254
		mu 0 4 151 8 85 150
		f 4 3 307 306 -12
		mu 0 4 8 179 181 85
		f 3 -1 -14 14
		mu 0 3 1 0 20
		f 8 -221 -2 -15 15 102 103 104 98
		mu 0 8 2 133 1 20 66 70 71 67
		f 4 -254 -387 389 388
		mu 0 4 3 152 225 226
		f 4 -306 -4 -389 391
		mu 0 4 228 180 3 226
		f 3 177 178 -180
		mu 0 3 109 110 111
		f 4 181 189 182 -179
		mu 0 4 110 115 112 111
		f 4 351 222 185 352
		mu 0 4 205 134 113 204
		f 4 187 340 350 -186
		mu 0 4 113 199 203 204
		f 4 4 19 -21 -19
		mu 0 4 18 17 22 21
		f 4 206 21 -205 207
		mu 0 4 124 16 23 123
		f 4 239 23 -238 240
		mu 0 4 143 15 24 142
		f 4 7 321 -27 -24
		mu 0 4 15 187 189 24
		f 4 20 28 156 -28
		mu 0 4 21 22 97 98
		f 4 204 30 154 205
		mu 0 4 123 23 96 122
		f 4 237 32 152 238
		mu 0 4 142 24 95 141
		f 4 26 323 322 -33
		mu 0 4 24 189 190 95
		f 4 29 37 -39 -37
		mu 0 4 26 27 32 31
		f 4 198 39 -197 199
		mu 0 4 120 28 33 119
		f 4 231 41 -230 232
		mu 0 4 139 29 34 138
		f 4 35 329 -45 -42
		mu 0 4 29 192 193 34
		f 4 38 46 490 -46
		mu 0 4 31 32 278 279
		f 4 196 48 486 485
		mu 0 4 119 33 276 277
		f 4 229 50 480 479
		mu 0 4 138 34 273 274
		f 4 44 331 478 -51
		mu 0 4 34 193 272 273
		f 4 47 55 -57 -55
		mu 0 4 36 37 42 41
		f 4 194 57 -193 195
		mu 0 4 118 38 43 117
		f 4 227 59 -226 228
		mu 0 4 137 39 44 136
		f 4 53 337 -63 -60
		mu 0 4 39 196 197 44
		f 4 56 64 -66 -64
		mu 0 4 41 42 47 46
		f 4 192 66 -191 193
		mu 0 4 117 43 48 116
		f 4 225 68 -224 226
		mu 0 4 136 44 49 135
		f 4 62 339 -72 -69
		mu 0 4 44 197 198 49
		f 4 -311 313 312 -74
		mu 0 4 52 183 184 100
		f 4 -76 73 161 248
		mu 0 4 148 52 100 147
		f 4 -542 543 545 546
		mu 0 4 304 305 306 307
		f 4 -80 76 165 -79
		mu 0 4 55 54 102 103
		f 4 -325 327 -36 -82
		mu 0 4 57 191 192 29
		f 4 -85 81 -232 234
		mu 0 4 140 57 29 139
		f 4 -87 83 -199 201
		mu 0 4 121 58 28 120
		f 4 -89 85 -30 -88
		mu 0 4 60 59 27 26
		f 4 -315 317 316 -91
		mu 0 4 62 185 186 90
		f 4 -94 90 143 244
		mu 0 4 146 62 90 145
		f 4 -96 92 145 211
		mu 0 4 127 63 91 126
		f 4 -98 94 147 -97
		mu 0 4 65 64 92 93
		f 4 -108 -110 -112 -113
		mu 0 4 72 73 74 75
		f 4 -115 -117 -118 112
		mu 0 4 75 76 77 72
		f 4 -102 105 122 -107
		mu 0 4 66 69 79 80
		f 4 -101 108 120 -106
		mu 0 4 69 68 78 79
		f 4 -100 110 129 -109
		mu 0 4 68 67 83 78
		f 4 -105 113 128 -111
		mu 0 4 67 71 82 83
		f 4 -104 115 126 -114
		mu 0 4 71 70 81 82
		f 4 -103 106 124 -116
		mu 0 4 70 66 80 81
		f 4 -121 118 278 -120
		mu 0 4 79 78 164 159
		f 4 -123 119 269 -122
		mu 0 4 80 79 159 160
		f 4 -125 121 271 -124
		mu 0 4 81 80 160 161
		f 4 -127 123 273 -126
		mu 0 4 82 81 161 162
		f 4 -129 125 275 -128
		mu 0 4 83 82 162 163
		f 4 -130 127 277 -119
		mu 0 4 78 83 163 164
		f 4 -307 309 308 -132
		mu 0 4 85 181 182 105
		f 4 -135 131 170 252
		mu 0 4 150 85 105 149
		f 4 -137 133 172 219
		mu 0 4 131 86 106 130
		f 4 -139 135 174 -138
		mu 0 4 88 87 107 108
		f 4 -317 319 -8 -141
		mu 0 4 90 186 188 13
		f 4 -144 140 -240 242
		mu 0 4 145 90 13 144
		f 4 -146 142 -207 209
		mu 0 4 126 91 12 125
		f 4 -148 144 -5 -147
		mu 0 4 93 92 11 10
		f 4 -323 325 324 -150
		mu 0 4 95 190 191 57
		f 4 -153 149 84 236
		mu 0 4 141 95 57 140
		f 4 -155 151 86 203
		mu 0 4 122 96 58 121
		f 4 -157 153 88 -156
		mu 0 4 98 97 59 60
		f 4 -313 315 314 -159
		mu 0 4 100 184 185 62
		f 4 -162 158 93 246
		mu 0 4 147 100 62 146
		f 4 -164 160 95 213
		mu 0 4 128 101 63 127
		f 4 -166 162 97 -165
		mu 0 4 103 102 64 65
		f 4 -309 311 310 -168
		mu 0 4 105 182 183 52
		f 4 -171 167 75 250
		mu 0 4 149 105 52 148
		f 4 -173 169 77 217
		mu 0 4 130 106 53 129
		f 4 -175 171 79 -174
		mu 0 4 108 107 54 55
		f 4 65 176 -178 -176
		mu 0 4 46 47 110 109
		f 4 190 180 -190 191
		mu 0 4 116 48 112 115
		f 4 223 183 -223 224
		mu 0 4 135 49 113 134
		f 4 71 341 -188 -184
		mu 0 4 49 198 199 113
		f 4 67 -192 -182 -177
		mu 0 4 47 116 115 110
		f 4 58 -194 -68 -65
		mu 0 4 42 117 116 47
		f 4 49 -196 -59 -56
		mu 0 4 37 118 117 42
		f 4 40 -486 488 -47
		mu 0 4 32 119 277 278
		f 4 31 -200 -41 -38
		mu 0 4 27 120 119 32
		f 4 -201 -202 -32 -86
		mu 0 4 59 121 120 27
		f 4 -203 -204 200 -154
		mu 0 4 97 122 121 59
		f 4 22 -206 202 -29
		mu 0 4 22 123 122 97
		f 4 5 -208 -23 -20
		mu 0 4 17 124 123 22
		f 4 -209 -210 -6 -145
		mu 0 4 92 126 125 11
		f 4 -211 -212 208 -95
		mu 0 4 64 127 126 92
		f 4 -213 -214 210 -163
		mu 0 4 102 128 127 64
		f 4 -215 -216 212 -77
		mu 0 4 54 129 128 102
		f 4 -217 -218 214 -172
		mu 0 4 107 130 129 54
		f 4 -219 -220 216 -136
		mu 0 4 87 131 130 107
		f 4 1 -222 218 -10
		mu 0 4 6 132 131 87
		f 4 353 -225 -352 354
		mu 0 4 206 135 134 205
		f 4 355 -227 -354 356
		mu 0 4 207 136 135 206
		f 4 357 -229 -356 358
		mu 0 4 208 137 136 207
		f 4 363 -480 482 481
		mu 0 4 211 138 274 275
		f 4 365 -233 -364 366
		mu 0 4 212 139 138 211
		f 4 -234 -235 -366 368
		mu 0 4 213 140 139 212
		f 4 -236 -237 233 370
		mu 0 4 214 141 140 213
		f 4 371 -239 235 372
		mu 0 4 215 142 141 214
		f 4 373 -241 -372 374
		mu 0 4 216 143 142 215
		f 4 -242 -243 -374 376
		mu 0 4 218 145 144 217
		f 4 -244 -245 241 378
		mu 0 4 219 146 145 218
		f 4 -246 -247 243 380
		mu 0 4 220 147 146 219
		f 4 -550 -552 553 554
		mu 0 4 308 309 310 311
		f 4 -250 -251 247 383
		mu 0 4 222 149 148 221
		f 4 -252 -253 249 385
		mu 0 4 223 150 149 222
		f 4 386 -255 251 387
		mu 0 4 224 151 150 223
		f 4 -258 255 107 -257
		mu 0 4 154 153 73 72
		f 4 -260 256 117 -259
		mu 0 4 155 154 72 77
		f 4 -262 258 116 -261
		mu 0 4 156 155 77 76
		f 4 -264 260 114 -263
		mu 0 4 157 156 76 75
		f 4 -266 262 111 -265
		mu 0 4 158 157 75 74
		f 4 -267 264 109 -256
		mu 0 4 153 158 74 73
		f 4 -270 267 257 -269
		mu 0 4 160 159 153 154
		f 4 -272 268 259 -271
		mu 0 4 161 160 154 155
		f 4 -274 270 261 -273
		mu 0 4 162 161 155 156
		f 4 -276 272 263 -275
		mu 0 4 163 162 156 157
		f 4 -278 274 265 -277
		mu 0 4 164 163 157 158
		f 4 -279 276 266 -268
		mu 0 4 159 164 158 153
		f 4 -333 335 -54 -281
		mu 0 4 166 195 196 39
		f 4 -284 280 -228 230
		mu 0 4 167 166 39 137
		f 4 -286 -231 -358 360
		mu 0 4 209 167 137 208
		f 4 -288 284 -195 197
		mu 0 4 169 168 38 118
		f 4 -290 -198 -50 -289
		mu 0 4 170 169 118 37
		f 4 -292 288 -48 -291
		mu 0 4 171 170 37 36
		f 4 -331 333 332 -294
		mu 0 4 173 194 195 166
		f 4 -297 293 283 282
		mu 0 4 174 173 166 167
		f 4 -299 -283 285 362
		mu 0 4 210 174 167 209
		f 4 -301 297 287 286
		mu 0 4 176 175 168 169
		f 4 -303 -287 289 -302
		mu 0 4 177 176 169 170
		f 4 -305 301 291 -304
		mu 0 4 178 177 170 171
		f 4 305 393 392 -308
		mu 0 4 179 227 229 181
		f 4 -310 -393 395 394
		mu 0 4 182 181 229 230
		f 4 -312 -395 397 396
		mu 0 4 183 182 230 231
		f 4 -314 -397 399 398
		mu 0 4 184 183 231 232
		f 4 -316 -399 401 400
		mu 0 4 185 184 232 233
		f 4 -318 -401 403 402
		mu 0 4 186 185 233 234
		f 4 -320 -403 405 -319
		mu 0 4 188 186 234 236
		f 4 -322 318 407 -321
		mu 0 4 189 187 235 237
		f 4 -324 320 409 408
		mu 0 4 190 189 237 238
		f 4 -326 -409 411 410
		mu 0 4 191 190 238 239
		f 4 -328 -411 413 -327
		mu 0 4 192 191 239 240
		f 4 -330 326 415 -329
		mu 0 4 193 192 240 241
		f 4 -332 328 417 476
		mu 0 4 272 193 241 271
		f 4 -428 -430 431 432
		mu 0 4 248 249 250 251
		f 4 -336 -419 420 -335
		mu 0 4 196 195 243 200
		f 4 -338 334 344 -337
		mu 0 4 197 196 200 201
		f 4 -340 336 346 -339
		mu 0 4 198 197 201 202
		f 4 -342 338 348 -341
		mu 0 4 199 198 202 203
		f 4 -345 342 61 -344
		mu 0 4 201 200 40 45
		f 4 -347 343 70 -346
		mu 0 4 202 201 45 50
		f 4 -349 345 186 -348
		mu 0 4 203 202 50 114
		f 4 -351 347 188 -350
		mu 0 4 204 203 114 111
		f 4 184 -353 349 -183
		mu 0 4 112 205 204 111
		f 4 69 -355 -185 -181
		mu 0 4 48 206 205 112
		f 4 60 -357 -70 -67
		mu 0 4 43 207 206 48
		f 4 51 -359 -61 -58
		mu 0 4 38 208 207 43
		f 4 -360 -361 -52 -285
		mu 0 4 168 209 208 38
		f 4 -362 -363 359 -298
		mu 0 4 175 210 209 168
		f 4 42 -482 484 -49
		mu 0 4 33 211 275 276
		f 4 33 -367 -43 -40
		mu 0 4 28 212 211 33
		f 4 -368 -369 -34 -84
		mu 0 4 58 213 212 28
		f 4 -370 -371 367 -152
		mu 0 4 96 214 213 58
		f 4 24 -373 369 -31
		mu 0 4 23 215 214 96
		f 4 6 -375 -25 -22
		mu 0 4 16 216 215 23
		f 4 -376 -377 -7 -143
		mu 0 4 91 218 217 12
		f 4 -378 -379 375 -93
		mu 0 4 63 219 218 91
		f 4 -380 -381 377 -161
		mu 0 4 101 220 219 63
		f 4 -556 -555 556 -544
		mu 0 4 305 308 311 306
		f 4 -383 -384 381 -170
		mu 0 4 106 222 221 53
		f 4 -385 -386 382 -134
		mu 0 4 86 223 222 106
		f 4 2 -388 384 -11
		mu 0 4 7 224 223 86
		f 8 -390 -3 -99 99 100 101 -16 16
		mu 0 8 226 225 2 67 68 69 66 20
		f 4 -391 -392 -17 17
		mu 0 4 4 228 226 20
		f 4 -394 390 12 132
		mu 0 4 229 227 9 84
		f 4 -396 -133 130 168
		mu 0 4 230 229 84 104
		f 4 -398 -169 166 74
		mu 0 4 231 230 104 51
		f 4 -400 -75 72 159
		mu 0 4 232 231 51 99
		f 4 -402 -160 157 91
		mu 0 4 233 232 99 61
		f 4 -404 -92 89 141
		mu 0 4 234 233 61 89
		f 4 -406 -142 139 -405
		mu 0 4 236 234 89 14
		f 4 -408 404 25 -407
		mu 0 4 237 235 19 25
		f 4 -410 406 34 150
		mu 0 4 238 237 25 94
		f 4 -412 -151 148 82
		mu 0 4 239 238 94 56
		f 4 -414 -83 80 -413
		mu 0 4 240 239 56 30
		f 4 -416 412 43 -415
		mu 0 4 241 240 30 35
		f 4 -418 414 52 474
		mu 0 4 271 241 35 270
		f 4 -420 -295 292 281
		mu 0 4 243 242 172 165
		f 4 -421 -282 279 -343
		mu 0 4 200 243 165 40
		f 4 -436 437 439 -441
		mu 0 4 252 253 254 255
		f 4 -443 444 445 -438
		mu 0 4 253 256 257 254
		f 4 447 449 -451 -445
		mu 0 4 256 258 259 257
		f 4 451 440 -453 -450
		mu 0 4 258 252 255 259
		f 4 -422 425 427 -427
		mu 0 4 244 245 249 248
		f 4 -423 428 429 -426
		mu 0 4 245 246 250 249
		f 4 423 430 -432 -429
		mu 0 4 246 247 251 250
		f 4 424 426 -433 -431
		mu 0 4 247 244 248 251
		f 4 -334 433 435 -435
		mu 0 4 195 194 253 252
		f 4 421 438 -440 -437
		mu 0 4 245 244 255 254
		f 4 -417 441 442 -434
		mu 0 4 194 242 256 253
		f 4 422 436 -446 -444
		mu 0 4 246 245 254 257
		f 4 419 446 -448 -442
		mu 0 4 242 243 258 256
		f 4 -424 443 450 -449
		mu 0 4 247 246 257 259
		f 4 418 434 -452 -447
		mu 0 4 243 195 252 258
		f 4 -425 448 452 -439
		mu 0 4 244 247 259 255
		f 4 -455 -456 453 294
		mu 0 4 242 261 260 172
		f 4 -457 -458 454 416
		mu 0 4 194 262 261 242
		f 4 -460 456 330 -459
		mu 0 4 263 262 194 173
		f 4 -462 458 296 295
		mu 0 4 264 263 173 174
		f 4 -464 -296 298 364
		mu 0 4 265 264 174 210
		f 4 -466 -365 361 -465
		mu 0 4 266 265 210 175
		f 4 -468 464 300 299
		mu 0 4 267 266 175 176
		f 4 -470 -300 302 -469
		mu 0 4 268 267 176 177
		f 4 -472 468 304 -471
		mu 0 4 269 268 177 178
		f 4 -474 -475 472 455
		mu 0 4 261 271 270 260
		f 4 -476 -477 473 457
		mu 0 4 262 272 271 261
		f 4 -479 475 459 -478
		mu 0 4 273 272 262 263
		f 4 -481 477 461 460
		mu 0 4 274 273 263 264
		f 4 -483 -461 463 462
		mu 0 4 275 274 264 265
		f 4 -485 -463 465 -484
		mu 0 4 276 275 265 266
		f 4 -487 483 467 466
		mu 0 4 277 276 266 267
		f 4 -489 -467 469 -488
		mu 0 4 278 277 267 268
		f 4 -491 487 471 -490
		mu 0 4 279 278 268 269
		f 4 -78 491 493 -493
		mu 0 4 129 53 281 280
		f 4 163 495 -497 -495
		mu 0 4 101 128 283 282
		f 4 215 492 -498 -496
		mu 0 4 128 129 280 283
		f 4 -248 498 500 -500
		mu 0 4 221 148 285 284
		f 4 -249 501 502 -499
		mu 0 4 148 147 286 285
		f 4 245 503 -505 -502
		mu 0 4 147 220 287 286
		f 4 -382 499 505 -492
		mu 0 4 53 221 284 281
		f 4 379 494 -507 -504
		mu 0 4 220 101 282 287
		f 4 -494 507 509 -509
		mu 0 4 280 281 289 288
		f 4 496 511 -513 -511
		mu 0 4 282 283 291 290
		f 4 497 508 -514 -512
		mu 0 4 283 280 288 291
		f 4 -501 514 516 -516
		mu 0 4 284 285 293 292
		f 4 -503 517 518 -515
		mu 0 4 285 286 294 293
		f 4 504 519 -521 -518
		mu 0 4 286 287 295 294
		f 4 -506 515 521 -508
		mu 0 4 281 284 292 289
		f 4 506 510 -523 -520
		mu 0 4 287 282 290 295
		f 4 -510 523 525 -525
		mu 0 4 288 289 297 296
		f 4 512 527 -529 -527
		mu 0 4 290 291 299 298
		f 4 513 524 -530 -528
		mu 0 4 291 288 296 299
		f 4 -517 530 532 -532
		mu 0 4 292 293 301 300
		f 4 -519 533 534 -531
		mu 0 4 293 294 302 301
		f 4 520 535 -537 -534
		mu 0 4 294 295 303 302
		f 4 -522 531 537 -524
		mu 0 4 289 292 300 297
		f 4 522 526 -539 -536
		mu 0 4 295 290 298 303
		f 4 -526 539 541 -541
		mu 0 4 296 297 305 304
		f 4 528 544 -546 -543
		mu 0 4 298 299 307 306
		f 4 529 540 -547 -545
		mu 0 4 299 296 304 307
		f 4 -533 547 549 -549
		mu 0 4 300 301 309 308
		f 4 -535 550 551 -548
		mu 0 4 301 302 310 309
		f 4 536 552 -554 -551
		mu 0 4 302 303 311 310
		f 4 -538 548 555 -540
		mu 0 4 297 300 308 305
		f 4 538 542 -557 -553
		mu 0 4 303 298 306 311
		f 4 8 558 -560 -558
		mu 0 4 312 313 314 315
		f 4 -13 560 562 -562
		mu 0 4 316 317 318 319
		f 4 13 557 -565 -564
		mu 0 4 320 321 322 323
		f 4 -18 563 565 -561
		mu 0 4 324 325 326 327
		f 4 18 567 -569 -567
		mu 0 4 328 329 330 331
		f 4 -26 569 571 -571
		mu 0 4 332 333 334 335
		f 4 27 572 -574 -568
		mu 0 4 336 337 338 339
		f 4 -35 570 575 -575
		mu 0 4 340 341 342 343
		f 4 36 577 -579 -577
		mu 0 4 344 345 346 347
		f 4 -44 579 581 -581
		mu 0 4 348 349 350 351
		f 4 45 582 -584 -578
		mu 0 4 352 353 354 355
		f 4 -53 580 585 -585
		mu 0 4 356 357 358 359
		f 4 54 587 -589 -587
		mu 0 4 360 361 362 363
		f 4 -62 589 591 -591
		mu 0 4 364 365 366 367
		f 4 63 592 -594 -588
		mu 0 4 368 369 370 371
		f 4 -71 590 595 -595
		mu 0 4 372 373 374 375
		f 4 -73 596 598 -598
		mu 0 4 376 377 378 379
		f 4 78 600 -602 -600
		mu 0 4 380 381 382 383
		f 4 -81 602 603 -580
		mu 0 4 384 385 386 387
		f 4 87 576 -606 -605
		mu 0 4 388 389 390 391
		f 4 -90 606 608 -608
		mu 0 4 392 393 394 395
		f 4 96 610 -612 -610
		mu 0 4 396 397 398 399
		f 4 -131 561 613 -613
		mu 0 4 400 401 402 403
		f 4 137 614 -616 -559
		mu 0 4 404 405 406 407
		f 4 -140 607 616 -570
		mu 0 4 408 409 410 411
		f 4 146 566 -618 -611
		mu 0 4 412 413 414 415
		f 4 -149 574 618 -603
		mu 0 4 416 417 418 419
		f 4 155 604 -620 -573
		mu 0 4 420 421 422 423
		f 4 -158 597 620 -607
		mu 0 4 424 425 426 427
		f 4 164 609 -622 -601
		mu 0 4 428 429 430 431
		f 4 -167 612 622 -597
		mu 0 4 432 433 434 435
		f 4 173 599 -624 -615
		mu 0 4 436 437 438 439
		f 4 175 624 -626 -593
		mu 0 4 440 441 442 443
		f 4 179 626 -628 -625
		mu 0 4 444 445 446 447
		f 4 -187 594 629 -629
		mu 0 4 448 449 450 451
		f 4 -189 628 630 -627
		mu 0 4 452 453 454 455
		f 4 -280 631 632 -590
		mu 0 4 456 457 458 459
		f 4 290 586 -635 -634
		mu 0 4 460 461 462 463
		f 4 -293 635 636 -632
		mu 0 4 464 465 466 467
		f 4 303 633 -639 -638
		mu 0 4 468 469 470 471
		f 4 -454 639 640 -636
		mu 0 4 472 473 474 475
		f 4 470 637 -643 -642
		mu 0 4 476 477 478 479
		f 4 -473 584 643 -640
		mu 0 4 480 481 482 483
		f 4 489 641 -645 -583
		mu 0 4 484 485 486 487;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Body1" -p "|Character|Character";
	rename -uid "D3DBE069-4188-8A1A-1453-97B00E0C397F";
	setAttr ".t" -type "double3" 0 6.1669846631071241 0 ;
	setAttr ".s" -type "double3" 0.74617851297006599 1.5138878959162383 1.1066640599991093 ;
	setAttr ".rp" -type "double3" 0 0 -0.14183151245117187 ;
	setAttr ".sp" -type "double3" 0 0 -0.128161307100988 ;
	setAttr ".spt" -type "double3" 0 0 -0.013670205350183699 ;
createNode transform -n "transform2" -p "Body1";
	rename -uid "30F9C4F2-439B-CEF1-1FE0-6886B189BA47";
	setAttr ".v" no;
createNode mesh -n "RagDollShape" -p "transform2";
	rename -uid "207C75CA-4B78-57BE-286C-C3967BC1D2CA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".pt[292:335]" -type "float3"  0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 0 0 -0.096919492 
		0 0 -0.096919492 0 0 -0.096919492;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Stitches" -p "|Character";
	rename -uid "529FEA36-467F-1046-3B4A-81AC8FE851C3";
createNode transform -n "pCube19" -p "Stitches";
	rename -uid "86F2A6AF-4B15-6FC2-2BC2-72A9054D96E3";
	setAttr ".t" -type "double3" -0.80590127576705017 9.1598165255515074 0.43687283581279873 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -210.6462056083308 -55.831800158577089 116.21282962216941 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.18192304988785538 0.30299323385688592 0.32869039768379771 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "1A3604A2-456B-4A11-46C0-F596BA483BB3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55200549960136414 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube19";
	rename -uid "5641BCC3-4622-A429-BEF2-31B1C0B9BBAC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape19Orig" -p "pCube19";
	rename -uid "967F9E39-4001-6A8F-57D9-4CAA96F30454";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[1]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[2]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[3]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[18]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[19]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[27]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[28]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube18" -p "Stitches";
	rename -uid "6CDEF94C-4D54-024C-2687-8AB6DA5B42AA";
	setAttr ".t" -type "double3" -0.80590127576705017 9.1598165255515074 0.46643505727619755 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 61.536055707775866 -68.318194833842838 -150.97097532919531 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.18192304988785538 0.30299323385688592 0.32869039768379771 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "5EF9B113-4B06-B408-22FA-1A91BD75E34D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55200549960136414 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube18";
	rename -uid "CF3215A5-4FCA-EF07-0F71-EF80395C555C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape18Orig" -p "pCube18";
	rename -uid "DD10EDED-43A8-B86A-52E0-02AAE96CCD94";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[1]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[2]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[3]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[18]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[19]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[27]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[28]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube16" -p "Stitches";
	rename -uid "13B82C44-4CDC-C762-48F6-8ABF27FEF745";
	setAttr ".t" -type "double3" -0.80590127576705017 9.1598165255515074 -0.66010817922192533 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -28.881907188606796 -74.945848567670865 -67.2089656028039 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.18192304988785538 0.30299323385688592 0.32869039768379771 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "7D5F8FA6-46E6-F9D8-D573-0D97FCA178D7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55200549960136414 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube16";
	rename -uid "4ADC9ABC-46B6-4827-C34D-F8B3FEFA2C87";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape16Orig" -p "pCube16";
	rename -uid "29C8C418-4F83-2CCB-7399-7A9256FE422C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[1]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[2]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[3]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[18]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[19]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[27]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[28]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube17" -p "Stitches";
	rename -uid "98B0775A-46EC-E2BE-90CA-DF93C8DA6611";
	setAttr ".t" -type "double3" -0.80590127576705017 9.1598165255515074 -0.66010817922192533 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -151.59916508437013 -64.429049022113475 69.423977369044835 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.18192304988785538 0.30299323385688592 0.32869039768379771 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "0514946C-4A0B-2382-1EEF-5BA4EFE428B4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55200549960136414 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube17";
	rename -uid "8CC67CBD-4CCB-EA05-514C-9090B92DCAFF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape17Orig" -p "pCube17";
	rename -uid "53543087-45C7-D63F-FBDC-2987422CEC95";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[1]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[2]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[3]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[18]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[19]" -type "float3" -0.010442337 -0.06156411 -0.0067638387 ;
	setAttr ".pt[27]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr ".pt[28]" -type "float3" -0.011374686 -0.06706091 -0.0073677511 ;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube14" -p "Stitches";
	rename -uid "A2E5FD35-4772-1CF7-970B-409FB8EFBD59";
	setAttr ".t" -type "double3" -0.7661236113654909 8.5358957845930625 -0.3613798643755643 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -3.4474143732410547 -72.210015616483659 -89.999999999999829 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.26983114678829739 0.55586119036795478 0.46044007169953532 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "ED04925A-4FA0-1652-ED2A-BF8C1937BC6E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube14";
	rename -uid "98D0FD27-495F-A6F5-A69F-56AFCAA2391C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape14Orig" -p "pCube14";
	rename -uid "F07967D5-4AB5-2EB6-1D85-16A43119C1A1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube12" -p "Stitches";
	rename -uid "272E0AEC-4852-9D6E-F873-40BC6F7EEAB6";
	setAttr ".t" -type "double3" -0.72963962085743395 8.5358957845930625 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -109.09887318286655 -89.999999999999901 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.26983114678829739 0.55586119036795478 0.55954913709147103 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "A91D7A39-4EF6-6EA7-F308-F4AE2B1501C0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube12";
	rename -uid "F40A2864-4AF0-4F38-FFB0-50A81BD5F758";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape12Orig" -p "pCube12";
	rename -uid "69F64308-4763-EB7F-35B4-E49F8365874A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube13" -p "Stitches";
	rename -uid "FBC3EC30-4352-E970-D6AE-7FBB422FD26B";
	setAttr ".t" -type "double3" -0.72963962085743395 8.5358957845930625 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -72.210015616483673 -89.999999999999957 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.26983114678829739 0.55586119036795478 0.55954913709147103 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "7E861CA7-4026-3DA9-4C89-D185AB283E0C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube13";
	rename -uid "334F54F6-4E28-EA6D-6804-E4868F157359";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape13Orig" -p "pCube13";
	rename -uid "501EBB59-4AA2-9F8F-9E9F-10A223F6CEAC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube15" -p "Stitches";
	rename -uid "7103FEDD-4003-867D-62C5-83AE8EE5FE00";
	setAttr ".t" -type "double3" -0.7661236113654909 8.5358957845930625 0.10276803119682319 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -172.03746369567463 -82.378592227680372 78.823975549797453 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.26983114678829739 0.55586119036795478 0.46044007169953532 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "C62E5DD7-4973-0EEA-08A8-68B40270B196";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube15";
	rename -uid "9580052A-4B01-30CD-1EE3-C18EF79BAF02";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape15Orig" -p "pCube15";
	rename -uid "CE69E24A-4020-85F6-15D4-24AD5F5CDEB6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "Stitches";
	rename -uid "6FEFACAF-4766-03BD-BED9-F2ACA9EBF3B5";
	setAttr ".t" -type "double3" -0.80349682894988095 6.3874553331079325 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 3.1912813077022202 -44.574325674386287 -90.000000000000128 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "753FA621-4323-550C-B65B-D79B8F54598E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube3";
	rename -uid "A50A9E94-4C5C-EECB-F98A-F0BB730AB5DF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape3Orig" -p "pCube3";
	rename -uid "3249FE68-4A43-3F36-2086-EFA04504A4C2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "Stitches";
	rename -uid "110133A5-4C84-EAC3-0F14-56A1EEEBBE4E";
	setAttr ".t" -type "double3" -0.70759471538139285 6.3874553331079325 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -109.09887318286655 -89.999999999999901 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "32A1F9A3-4266-2AD5-863B-4CB0EB4E93E9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube2";
	rename -uid "6BA866DC-480B-E19A-9858-50971D2DACEA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape2Orig" -p "pCube2";
	rename -uid "E24452B8-4FD2-C823-0131-6BAD11BC3C4F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "Stitches";
	rename -uid "5A9341A9-4445-9F8A-67F4-F0B30A3635F1";
	setAttr ".t" -type "double3" -0.8141488626600315 5.4183796343472528 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -109.09887318286655 -89.999999999999901 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "C292C2A9-4B2B-E5B7-1F6C-E1B290146FED";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube4";
	rename -uid "E589EA14-468C-7892-2492-588CBC0788E5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape4Orig" -p "pCube4";
	rename -uid "C73D9EF2-4E87-B9AE-98DB-528D2438A189";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "Stitches";
	rename -uid "49D6B415-409F-E435-FD6B-FA982F51EA9E";
	setAttr ".t" -type "double3" -0.7801318385936884 4.7203828093840716 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -6.9817220103156972 -165.06498236399327 -89.999999999999815 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "3B3BEB0A-4099-C9DA-A7C0-AFBBE00FC165";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube5";
	rename -uid "B4A8D114-4919-C5E6-186D-74A6B9DA0AF9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape5Orig" -p "pCube5";
	rename -uid "B50B5425-4849-0B00-A54C-88989EB1B6F0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "Stitches";
	rename -uid "3B858E4C-4C7B-5817-0549-6C9D61ACC3C5";
	setAttr ".t" -type "double3" -0.8141488626600315 4.6224018237613089 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -57.556306573359869 -89.999999999999432 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "3610CAAD-402C-0102-5EA6-6FA95CBDF2F6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube6";
	rename -uid "B16D86D6-4B1D-A3EF-719B-08A5092EF7D3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape6Orig" -p "pCube6";
	rename -uid "66BF9849-4F25-1A05-5FB7-4B970A298331";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube10" -p "Stitches";
	rename -uid "678BE00D-4A5A-07F3-1BD9-FABD2EC502B9";
	setAttr ".t" -type "double3" -2.6218193938279244 6.3874553331079325 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 3.1912813077022202 -44.574325674386287 -90.000000000000128 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 -1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "A94808AA-4896-0978-A977-3087AA031C4A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube10";
	rename -uid "A9EF6950-478B-D7BA-36F2-0694720551A9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape10Orig" -p "pCube10";
	rename -uid "CFD76110-47CA-5415-44A6-C5A24A307AC3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube11" -p "Stitches";
	rename -uid "4C38879E-4953-6D69-2456-14B59FF724FB";
	setAttr ".t" -type "double3" -2.5737382435811429 6.3874553331079325 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -109.09887318286655 -89.999999999999901 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 -1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "D827FDAB-429B-7CE3-F6E0-04ADFA35C1EA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube11";
	rename -uid "72864295-4078-6D89-2EE0-AB9DB9090D7D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape11Orig" -p "pCube11";
	rename -uid "D7805E28-4480-64FF-F53D-D8ADE9B73F33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7" -p "Stitches";
	rename -uid "F2846B08-4EC4-3582-DD90-1FBB626F5B5B";
	setAttr ".t" -type "double3" -2.6170916932921728 4.6224018237613089 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -57.556306573359869 -89.999999999999432 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 -1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "B972183C-405F-5589-4E96-DE810B229CFA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube7";
	rename -uid "51D647E0-4EED-8ACE-A4EF-529F25D5C662";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape7Orig" -p "pCube7";
	rename -uid "4B7D922F-461A-05FA-5E6D-7B8D89446438";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube9" -p "Stitches";
	rename -uid "540D317E-48D2-9815-1D6A-D7BB36ADFE8C";
	setAttr ".t" -type "double3" -2.5864071891969083 5.4183796343472528 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -109.09887318286655 -89.999999999999901 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 -1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "CA264865-42E5-CAEE-7913-AF996C034461";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube9";
	rename -uid "7A6B1AF8-426E-1B20-CD3F-C1B595C71006";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape9Orig" -p "pCube9";
	rename -uid "667045E9-4B30-F585-D39F-1FAA3C4CDECE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube8" -p "Stitches";
	rename -uid "AF2C123F-4EFB-69A2-8507-399132BF5911";
	setAttr ".t" -type "double3" -2.5448805595828374 4.7203828093840716 -0.090112627732809009 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -6.9817220103156972 -165.06498236399327 -89.999999999999815 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.56052496179636202 -1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6727362321307566 0 0 ;
	setAttr ".sp" -type "double3" 1.6727362321307566 0 0 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "5048FD3D-4E73-3B83-3DFE-049F99C3C8A3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape10" -p "pCube8";
	rename -uid "F3A96CFD-49BF-F999-79CE-EFA2A9B3E222";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 61 ".ed[0:60]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape8Orig" -p "pCube8";
	rename -uid "B7AF4549-4EAE-F821-BCCC-2D8B66549F78";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.625 0.37710315 0.75210321 0.25 0.24789682
		 0.25 0.375 0.37710315 0.625 0.4418565 0.8168565 0.25 0.18314347 0.25 0.375 0.4418565
		 0.625 0.3101297 0.6851297 0.25 0.31487027 0.25 0.375 0.3101297 0.625 0.33946666 0.71446669
		 0.25 0.28553331 0.25 0.375 0.33946666 0.625 0.412256 0.787256 0.25 0.21274394 0.25
		 0.375 0.412256 0.625 0.27651483 0.65151477 0.25 0.34848514 0.25 0.375 0.27651483
		 0.625 0.47423184 0.84923184 0.25 0.15076816 0.25 0.375 0.47423184 0.625 0.12121852
		 0.375 0.12121852 0.34848517 0.12121853 0.31487027 0.12121853 0.28553331 0.12121853
		 0.24789682 0.12121853 0.21274394 0.12121853 0.18314347 0.12121853 0.15076816 0.12121853
		 0.125 0.12121853 0.375 0.62878144 0.625 0.62878144 0.875 0.12121853 0.84923184 0.12121852
		 0.8168565 0.12121852 0.787256 0.12121852 0.75210321 0.12121852 0.71446669 0.12121852
		 0.68512976 0.12121852 0.65151483 0.12121852 0 0 0.75801027 0 0.75801027 1 7.9509741e-09
		 1 0 0 0.66092855 0 0.66092855 1 4.8727586e-09 1 0 0 0.76802605 0 0.76802605 1 2.0900772e-09
		 1 0 1.2780831e-15 0.82195467 0 0.82195467 1 8.3397339e-08 1 4.8587325e-09 0 0.65494192
		 0 0.65494198 1 0 1 0 0 0.78334188 0 0.78334188 1 3.2012639e-07 1 0 0 0.7411496 1.2780831e-15
		 0.74114984 1 0 1 0 0 0.729011 0 0.729011 1 3.1952079e-16 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1.58960795 -0.061783824 0.60442621 1.75586438 -0.061783824 0.60442621
		 1.58960795 -0.061783824 -0.60442621 1.75586438 -0.061783824 -0.60442621 1.75586438 0.10963596 -0.010169672
		 1.58960795 0.10963596 -0.010169672 1.75586438 0.069966584 -0.32327867 1.58960795 0.069966584 -0.32327867
		 1.75586438 0.069966584 0.31367433 1.58960795 0.069966584 0.31367433 1.75586438 0.096125156 0.17181814
		 1.58960795 0.096125156 0.17181814 1.75586438 0.096440449 -0.1801482 1.58960795 0.096440449 -0.1801482
		 1.75586438 0.020307722 0.47621608 1.58960795 0.020307722 0.47621608 1.75586438 0.020423455 -0.47982657
		 1.58960795 0.020423455 -0.47982657 1.78392506 -0.17570248 0.60442621 1.5615474 -0.17570248 0.60442621
		 1.5615474 -0.072135203 0.47621608 1.5615474 -0.009485214 0.31367433 1.5615474 0.023516605 0.17181814
		 1.5615474 0.040561952 -0.010169672 1.5615474 0.023914402 -0.1801482 1.5615474 -0.009485214 -0.32327867
		 1.5615474 -0.071989171 -0.47982657 1.5615474 -0.17570248 -0.60442621 1.78392506 -0.17570248 -0.60442621
		 1.78392506 -0.071989171 -0.47982657 1.78392506 -0.0094852187 -0.32327867 1.78392506 0.023914397 -0.1801482
		 1.78392506 0.040561948 -0.010169672 1.78392506 0.023516601 0.17181812 1.78392506 -0.0094852187 0.31367433
		 1.78392506 -0.072135203 0.47621602;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 0 15 0 1 14 0 2 27 0 3 28 0 4 12 0
		 5 13 0 4 5 1 5 23 1 6 16 0 7 17 0 6 7 1 7 25 1 8 10 0 9 11 0 8 9 1 9 21 1 10 4 0
		 11 5 0 10 11 1 11 22 1 12 6 0 13 7 0 12 13 1 13 24 1 14 8 0 15 9 0 14 15 1 15 20 1
		 16 3 0 17 2 0 16 17 1 17 26 1 18 1 0 19 0 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0
		 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 16 1 28 29 0 30 6 1 29 30 0 31 12 1 30 31 0
		 32 4 1 31 32 0 33 10 1 32 33 0 34 8 1 33 34 0 35 14 1 34 35 0 35 18 0 26 29 0 30 25 0
		 31 24 0 32 23 0 33 22 0 34 21 0 35 20 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 3 28 -3
		mu 0 4 0 1 26 29
		f 4 -9 6 24 -8
		mu 0 4 9 6 22 25
		f 4 -13 10 32 -12
		mu 0 4 13 10 30 33
		f 4 -17 14 20 -16
		mu 0 4 17 14 18 21
		f 4 -21 18 8 -20
		mu 0 4 21 18 6 9
		f 4 -25 22 12 -24
		mu 0 4 25 22 10 13
		f 4 -29 26 16 -28
		mu 0 4 29 26 14 17
		f 4 -33 30 -2 -32
		mu 0 4 33 30 3 2
		f 4 -37 34 -1 -36
		mu 0 4 35 34 1 0
		f 4 -38 35 2 29
		mu 0 4 36 35 0 28
		f 4 -39 -30 27 17
		mu 0 4 37 36 28 16
		f 4 -40 -18 15 21
		mu 0 4 38 37 16 20
		f 4 -41 -22 19 9
		mu 0 4 39 38 20 8
		f 4 -42 -10 7 25
		mu 0 4 40 39 8 24
		f 4 -43 -26 23 13
		mu 0 4 41 40 24 12
		f 4 -44 -14 11 33
		mu 0 4 42 41 12 32
		f 4 -45 -34 31 4
		mu 0 4 43 42 32 5
		f 4 1 5 -46 -5
		mu 0 4 2 3 45 44
		f 4 -47 -48 -6 -31
		mu 0 4 31 47 46 4
		f 4 -49 -50 46 -11
		mu 0 4 11 48 47 31
		f 4 -51 -52 48 -23
		mu 0 4 23 49 48 11
		f 4 -53 -54 50 -7
		mu 0 4 7 50 49 23
		f 4 -55 -56 52 -19
		mu 0 4 19 51 50 7
		f 4 -57 -58 54 -15
		mu 0 4 15 52 51 19
		f 4 -59 -60 56 -27
		mu 0 4 27 53 52 15
		f 4 -61 58 -4 -35
		mu 0 4 34 53 27 1
		f 4 43 61 49 62
		mu 0 4 54 55 56 57
		f 4 42 -63 51 63
		mu 0 4 58 59 60 61
		f 4 41 -64 53 64
		mu 0 4 62 63 64 65
		f 4 40 -65 55 65
		mu 0 4 66 67 68 69
		f 4 39 -66 57 66
		mu 0 4 70 71 72 73
		f 4 38 -67 59 67
		mu 0 4 74 75 76 77
		f 4 37 -68 60 36
		mu 0 4 78 79 80 81
		f 4 44 45 47 -62
		mu 0 4 82 83 84 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B1DE69EC-4482-49C2-B915-1AAAEB24ABA3";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "80851BC7-4A1E-55C2-A4C2-2CBB4AFC4158";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "34D33C60-4036-0B3D-8AD7-CD853AFC8855";
createNode displayLayerManager -n "layerManager";
	rename -uid "541EC42D-4065-FCBE-CB9D-ECBDD640A85B";
createNode displayLayer -n "defaultLayer";
	rename -uid "D993C947-4C3F-B060-667E-D0B82C656679";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "94610EA0-4224-754F-7766-49B478F79A49";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CC3E7697-494A-B2CD-31F3-93AA2D7B908A";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "545A16D9-425B-D2E3-518C-E6A4EC5CCD97";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
	setAttr ".h" 2;
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "ACDEC9BB-4E22-F38F-74AC-A4896DC57E0B";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6928901e-08 6.2825227 4.2215884e-08 ;
	setAttr ".rs" 45319;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.74617839911226069 6.2825227073346337 -1.1066638911355748 ;
	setAttr ".cbx" -type "double3" 0.74617851297006599 6.2825227073346337 1.1066639755673422 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "D74D64C9-4865-687F-C215-78B74F6886C7";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6928901e-08 6.4167829 4.2215884e-08 ;
	setAttr ".rs" 47832;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.74617839911226069 6.4167827756917921 -1.1066638911355748 ;
	setAttr ".cbx" -type "double3" 0.74617851297006599 6.4167827756917921 1.1066639755673422 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "C94127B5-473B-CF48-4B1D-0EA6278FE9F9";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[17:25]" -type "float3"  0 8.86850357 0 0 8.86850357
		 0 0 8.86850357 0 0 8.86850357 0 0 8.86850357 0 0 8.86850357 0 0 8.86850357 0 0 8.86850357
		 0 0 8.86850357 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "64890A1E-4ED1-DBBF-E3C4-4AA2E8DFAD03";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6928901e-08 6.5403094 4.2215884e-08 ;
	setAttr ".rs" 61140;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.9043264352757997 6.5403093844109277 -1.2209590056293396 ;
	setAttr ".cbx" -type "double3" 0.90432654913360511 6.5403093844109277 1.2209590900611069 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "F8E58563-423C-395C-8DCC-ADAEAC3FF3CA";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[25:33]" -type "float3"  14.98670101 8.15952778 -7.30293274
		 -1.617005e-06 8.15952778 -10.32789803 -1.617005e-06 8.15952778 -7.360108e-07 -14.98670197
		 8.15952778 -7.30293274 -21.19439316 8.15952778 -7.360108e-07 -14.98670197 8.15952778
		 7.30292797 -1.617005e-06 8.15952778 10.32789803 14.9866991 8.15952778 7.30292797
		 21.19439316 8.15952778 -7.360108e-07;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "9A5ABD33-4465-A50D-041D-D4B4BB2854D5";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.539336e-08 6.7969875 4.2215884e-08 ;
	setAttr ".rs" 47951;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.94748435024159205 6.7969874878769154 -1.2792278167456059 ;
	setAttr ".cbx" -type "double3" 0.94748452102830005 6.7969874878769154 1.2792279011773733 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "C0046B70-4A98-CB05-7FE0-8CA8E0462FD4";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[33:41]" -type "float3"  4.089805126 16.95487404 -3.72310781
		 -6.2332538e-07 16.95487404 -5.26526737 -6.2332538e-07 16.95487404 -2.1717715e-07
		 -4.08980608 16.95487404 -3.72310781 -5.78385878 16.95487404 -2.1717715e-07 -4.08980608
		 16.95487404 3.72310686 -6.2332538e-07 16.95487404 5.26526737 4.089805126 16.95487404
		 3.72310686 5.78385878 16.95487404 -2.1717715e-07;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "5D4B7F2A-4EAB-4A0F-2849-5D8CD2E7B1FF";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6928901e-08 8.299015 4.2215884e-08 ;
	setAttr ".rs" 57516;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.94748440717049476 8.2990146394670106 -1.2792278167456059 ;
	setAttr ".cbx" -type "double3" 0.94748452102830005 8.2990146394670106 1.2792279011773733 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "21230CA7-49CE-5FB0-E242-159D1D91860C";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[41:49]" -type "float3"  0 99.21651459 0 0 99.21651459
		 0 0 99.21651459 0 0 99.21651459 0 0 99.21651459 0 0 99.21651459 0 0 99.21651459 0
		 0 99.21651459 0 0 99.21651459 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "E7D08B60-4F0F-3EEF-FBE4-1DB606DFE333";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.846445e-08 8.425952 4.2215884e-08 ;
	setAttr ".rs" 35232;
	setAttr ".lt" -type "double3" 0 1.7679761534678909e-16 0.15622567459579159 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.88208214970749399 8.4259524393725158 -1.1909261194197722 ;
	setAttr ".cbx" -type "double3" 0.88208220663639669 8.4259524393725158 1.1909262038515394 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "13D2521F-41E4-0B65-0935-C99776FC184B";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[49:57]" -type "float3"  -6.19776726 8.38482666 5.64206648
		 4.1796233e-07 8.38482666 7.97908449 4.1796233e-07 8.38482666 3.291143e-07 6.19776821
		 8.38482666 5.64206648 8.76496696 8.38482666 3.291143e-07 6.19776821 8.38482666 -5.64206553
		 4.1796233e-07 8.38482666 -7.97908449 -6.19776821 8.38482666 -5.64206553 -8.76496696
		 8.38482666 3.291143e-07;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "9E9E16F3-4E2A-C635-7D57-7CBF3CEB2465";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".wt" 0.96690124273300171;
	setAttr ".dr" no;
	setAttr ".re" 23;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "0CEA3759-49AA-18CC-985F-AE85034A4A76";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -23.267799 0 ;
	setAttr ".tk[1]" -type "float3" 0 -23.267799 0 ;
	setAttr ".tk[2]" -type "float3" 0 -23.267799 0 ;
	setAttr ".tk[3]" -type "float3" 0 -23.267799 0 ;
	setAttr ".tk[4]" -type "float3" 0 -23.267799 0 ;
	setAttr ".tk[5]" -type "float3" 0 -23.267799 0 ;
	setAttr ".tk[6]" -type "float3" 0 -23.267799 0 ;
	setAttr ".tk[7]" -type "float3" 0 -23.267799 0 ;
	setAttr ".tk[8]" -type "float3" 1.5258789e-05 -23.267801 -1.9073486e-05 ;
	setAttr ".tk[9]" -type "float3" -1.8189894e-12 -23.267801 7.6293945e-06 ;
	setAttr ".tk[10]" -type "float3" -7.6293945e-06 -23.267801 -1.9073486e-05 ;
	setAttr ".tk[11]" -type "float3" 7.6293945e-06 -23.267801 -9.094947e-13 ;
	setAttr ".tk[12]" -type "float3" -7.6293945e-06 -23.267801 2.2888184e-05 ;
	setAttr ".tk[13]" -type "float3" -1.8189894e-12 -23.267801 -7.6293945e-06 ;
	setAttr ".tk[14]" -type "float3" 1.5258789e-05 -23.267801 2.2888184e-05 ;
	setAttr ".tk[15]" -type "float3" -7.6293945e-06 -23.267801 -9.094947e-13 ;
	setAttr ".tk[16]" -type "float3" 0 -23.267799 0 ;
	setAttr ".tk[17]" -type "float3" 1.5258789e-05 -9.5367432e-07 -1.9073486e-05 ;
	setAttr ".tk[18]" -type "float3" -1.8189894e-12 -9.5367432e-07 7.6293945e-06 ;
	setAttr ".tk[19]" -type "float3" -7.6293945e-06 -9.5367432e-07 -1.9073486e-05 ;
	setAttr ".tk[20]" -type "float3" 7.6293945e-06 -9.5367432e-07 -9.094947e-13 ;
	setAttr ".tk[21]" -type "float3" -7.6293945e-06 -9.5367432e-07 2.2888184e-05 ;
	setAttr ".tk[22]" -type "float3" -1.8189894e-12 -9.5367432e-07 -7.6293945e-06 ;
	setAttr ".tk[23]" -type "float3" 1.5258789e-05 -9.5367432e-07 2.2888184e-05 ;
	setAttr ".tk[24]" -type "float3" -7.6293945e-06 -9.5367432e-07 -9.094947e-13 ;
	setAttr ".tk[57]" -type "float3" -14.722481 -2.5564916 13.402439 ;
	setAttr ".tk[58]" -type "float3" 1.6647252e-06 -2.5564916 18.953905 ;
	setAttr ".tk[59]" -type "float3" 1.6647252e-06 -2.5564916 7.8179409e-07 ;
	setAttr ".tk[60]" -type "float3" 14.722482 -2.5564916 13.40244 ;
	setAttr ".tk[61]" -type "float3" 20.820736 -2.5564916 2.0893117e-06 ;
	setAttr ".tk[62]" -type "float3" 14.722482 -2.5564916 -13.40244 ;
	setAttr ".tk[63]" -type "float3" 1.6647252e-06 -2.5564916 -18.953905 ;
	setAttr ".tk[64]" -type "float3" -14.722482 -2.5564916 -13.40244 ;
	setAttr ".tk[65]" -type "float3" -20.820736 -2.5564916 -5.2572307e-07 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A49E623A-4808-E2A6-174F-8F9110DDB703";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2651\n            -height 1522\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2651\\n    -height 1522\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2651\\n    -height 1522\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D78D7F82-453F-35D4-6657-368D1624C4B9";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "94E82A83-4993-AA0F-E9CE-6481E0F9EF4F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[48:49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[59]" "e[61]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".wt" 0.5318264365196228;
	setAttr ".dr" no;
	setAttr ".re" 48;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "737565EA-49DE-7DB5-9113-34B5AEF1CC21";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[8]" -type "float3" -36.956848 10.763224 36.95686 ;
	setAttr ".tk[9]" -type "float3" 3.987494e-06 10.763224 52.264866 ;
	setAttr ".tk[10]" -type "float3" 36.956856 10.763224 36.95686 ;
	setAttr ".tk[11]" -type "float3" 52.264874 10.763224 1.993747e-06 ;
	setAttr ".tk[12]" -type "float3" 36.956856 10.763224 -36.95686 ;
	setAttr ".tk[13]" -type "float3" 3.987494e-06 10.763224 -52.264866 ;
	setAttr ".tk[14]" -type "float3" -36.956856 10.763224 -36.95686 ;
	setAttr ".tk[15]" -type "float3" -52.264874 10.763224 1.993747e-06 ;
	setAttr ".tk[17]" -type "float3" -36.956848 -6.0327759 36.95686 ;
	setAttr ".tk[18]" -type "float3" 3.987494e-06 -6.0327759 52.264866 ;
	setAttr ".tk[19]" -type "float3" 36.956856 -6.0327759 36.95686 ;
	setAttr ".tk[20]" -type "float3" 52.264874 -6.0327759 1.993747e-06 ;
	setAttr ".tk[21]" -type "float3" 36.956856 -6.0327759 -36.95686 ;
	setAttr ".tk[22]" -type "float3" 3.987494e-06 -6.0327759 -52.264866 ;
	setAttr ".tk[23]" -type "float3" -36.956856 -6.0327759 -36.95686 ;
	setAttr ".tk[24]" -type "float3" -52.264874 -6.0327759 1.993747e-06 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "78312E08-4C3D-8FEA-F229-C69E84D674C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[136:137]" "e[139]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".wt" 0.36808636784553528;
	setAttr ".re" 136;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "FE6FE0AC-4745-CFA8-1A90-B78F0554C01C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[74:81]" -type "float3"  8.78116322 0 -8.19653893 12.41844368
		 0 7.7539774e-08 8.78116417 0 8.19653893 -1.4932031e-06 0 11.59165955 -8.78116608
		 0 8.19653893 -12.41844368 0 7.7539774e-08 -8.78116608 0 -8.19653893 -1.4932031e-06
		 0 -11.59165955;
createNode polyTweak -n "polyTweak9";
	rename -uid "DEAD6D56-478D-B08E-5504-8D9922CFA0A0";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[0]" -type "float3" 16.544001 -18.163132 -20.486179 ;
	setAttr ".tk[1]" -type "float3" -1.7850308e-06 -18.163132 -28.971827 ;
	setAttr ".tk[2]" -type "float3" -16.544004 -18.163132 -20.486179 ;
	setAttr ".tk[3]" -type "float3" -23.396753 -18.163132 -1.1051876e-06 ;
	setAttr ".tk[4]" -type "float3" -16.544004 -18.163132 20.486176 ;
	setAttr ".tk[5]" -type "float3" -1.7850308e-06 -18.163132 28.971827 ;
	setAttr ".tk[6]" -type "float3" 16.544003 -18.163132 20.486176 ;
	setAttr ".tk[7]" -type "float3" 23.396753 -18.163132 -1.1051876e-06 ;
	setAttr ".tk[16]" -type "float3" -1.7850308e-06 -18.163132 -1.1051876e-06 ;
	setAttr ".tk[66]" -type "float3" 23.396751 -18.163132 -1.1051878e-06 ;
	setAttr ".tk[67]" -type "float3" 16.544008 -18.163132 20.486183 ;
	setAttr ".tk[68]" -type "float3" -1.785031e-06 -18.163132 28.971827 ;
	setAttr ".tk[69]" -type "float3" -16.544008 -18.163132 20.486183 ;
	setAttr ".tk[70]" -type "float3" -23.396751 -18.163132 -1.1051878e-06 ;
	setAttr ".tk[71]" -type "float3" -16.544008 -18.163132 -20.486183 ;
	setAttr ".tk[72]" -type "float3" -1.785031e-06 -18.163132 -28.971827 ;
	setAttr ".tk[73]" -type "float3" 16.544004 -18.163132 -20.486183 ;
	setAttr ".tk[82]" -type "float3" 6.6180687 0 -2.5245939e-07 ;
	setAttr ".tk[83]" -type "float3" 4.6796823 0 4.6796832 ;
	setAttr ".tk[84]" -type "float3" -5.0491877e-07 0 6.6180682 ;
	setAttr ".tk[85]" -type "float3" -4.6796832 0 4.6796832 ;
	setAttr ".tk[86]" -type "float3" -6.6180687 0 -2.5245939e-07 ;
	setAttr ".tk[87]" -type "float3" -4.6796832 0 -4.6796832 ;
	setAttr ".tk[88]" -type "float3" -5.0491877e-07 0 -6.6180682 ;
	setAttr ".tk[89]" -type "float3" 4.6796818 0 -4.6796832 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "6898902A-437F-F1DB-76A8-F9B9688B8033";
	setAttr ".dc" -type "componentList" 13 "f[0:2]" "f[7:10]" "f[15:18]" "f[23:26]" "f[31:34]" "f[39:42]" "f[47:50]" "f[55:58]" "f[63:66]" "f[71]" "f[76:80]" "f[85:87]" "f[92:95]";
createNode polySplit -n "polySplit1";
	rename -uid "E7552C58-40D5-588C-9756-3694DC3602E9";
	setAttr -s 4 ".v[0:3]" -type "float3"  0.42015782 -1.4143078 0.70223242 
		0.4532896 -1.4143078 0.97143006 -0.39829472 -1.4143078 0.97854596 -0.40106407 -1.4143078 
		0.71427506;
	setAttr -s 7 ".e[0:6]"  0.461799 6 6 0.88475198 5 5 0.461799;
	setAttr -s 7 ".d[0:6]"  -2147483633 0 1 -2147483633 2 3 
		-2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "CF68575D-4DC1-2952-EBAF-6E9ED8B662A9";
	setAttr ".ics" -type "componentList" 1 "f[48:49]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 476.86348114183943 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.000638358 2.6275311 0.9490034 ;
	setAttr ".rs" 49638;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33951167883260136 2.6275312590545639 0.65911865979404582 ;
	setAttr ".cbx" -type "double3" 0.33823496279705423 2.6275312590545639 1.238888091409736 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "C34D9085-429B-0D2E-0A45-158A4C6FE317";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 1.262909e-06 ;
	setAttr ".tk[4]" -type "float3" 0 0 1.262909e-06 ;
	setAttr ".tk[5]" -type "float3" 0 0 -1.8360247e-06 ;
	setAttr ".tk[9]" -type "float3" 0 0 -1.8360247e-06 ;
	setAttr ".tk[10]" -type "float3" 0 0 1.262909e-06 ;
	setAttr ".tk[11]" -type "float3" 0 0 -1.8360247e-06 ;
	setAttr ".tk[15]" -type "float3" 0 0 -1.8360247e-06 ;
	setAttr ".tk[16]" -type "float3" 0 0 8.9373219e-07 ;
	setAttr ".tk[20]" -type "float3" 0 0 8.9373219e-07 ;
	setAttr ".tk[21]" -type "float3" 0 0 1.1109094e-06 ;
	setAttr ".tk[25]" -type "float3" 0 0 1.1109094e-06 ;
	setAttr ".tk[26]" -type "float3" 0 0 1.1109094e-06 ;
	setAttr ".tk[30]" -type "float3" 0 0 1.1109094e-06 ;
	setAttr ".tk[31]" -type "float3" 0 0 7.8179517e-07 ;
	setAttr ".tk[35]" -type "float3" 0 0 7.8179517e-07 ;
	setAttr ".tk[36]" -type "float3" 0 0 7.9605766e-13 ;
	setAttr ".tk[37]" -type "float3" 0 0 6.1161363e-06 ;
	setAttr ".tk[41]" -type "float3" 0 0 -6.1161363e-06 ;
	setAttr ".tk[42]" -type "float3" 0 0 1.2629101e-06 ;
	setAttr ".tk[46]" -type "float3" 0 0 1.2629101e-06 ;
	setAttr ".tk[47]" -type "float3" 0 0 -4.6180753e-07 ;
	setAttr ".tk[51]" -type "float3" 0 0 -4.6180753e-07 ;
	setAttr ".tk[52]" -type "float3" 0 0 -3.2368939e-07 ;
	setAttr ".tk[56]" -type "float3" 0 0 -3.2368939e-07 ;
	setAttr ".tk[58]" -type "float3" 0 0 -2.16009 ;
	setAttr ".tk[61]" -type "float3" -3.0093856 0 0 ;
	setAttr ".tk[62]" -type "float3" -5.6705904 0 0 ;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "5C3D8EF0-4EDA-02F8-2FEC-31B114CE0C97";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[111:112]" "e[114]" "e[116]" "e[119]" "e[121]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.011593803763389587;
	setAttr ".re" 114;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "DCF295FF-4755-0F61-0C1E-1DAA4DC3AB94";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[63:68]" -type "float3"  0 -190.78605652 0 0 -190.78605652
		 0 0 -190.78605652 0 0 -190.78605652 0 0 -190.78605652 0 0 -190.78605652 0;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "CF634D5D-4EF5-8BF9-AB70-F3B6EB583CDA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8:12]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.0045001744292676449;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "BD10C72C-4135-09FE-8274-E3861701AF55";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[95:96]" "e[98]" "e[100]" "e[102]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.9348747730255127;
	setAttr ".dr" no;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "300E0478-4358-5A14-8FF7-8883CBEB8594";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[27:28]" "e[30]" "e[32]" "e[34]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.12172221392393112;
	setAttr ".re" 32;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "01DF856A-42D9-A615-1CBD-E696CD856ACA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[77:78]" "e[80]" "e[82]" "e[84]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.92431157827377319;
	setAttr ".dr" no;
	setAttr ".re" 78;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "9D00F2DC-4CDE-7A8A-8C57-7CBAB9AA6E6D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[136:137]" "e[139]" "e[141]" "e[143]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.99193090200424194;
	setAttr ".dr" no;
	setAttr ".re" 137;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "5BBC75BE-418B-BE55-2E65-ACB870A0A65B";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6928901e-08 9.9418259 0.46391687 ;
	setAttr ".rs" 40657;
	setAttr ".lt" -type "double3" 0 4.6420624234735227e-17 0.075468028812116381 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.72672226348072411 9.9418263398170978 -0.053336544736530003 ;
	setAttr ".cbx" -type "double3" 0.7267223773385294 9.9418263398170978 0.98117025362133858 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "CAC992FD-486E-C068-7999-38AD61632BF5";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[4]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[5]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[9]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[10]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[11]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[15]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[16]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[20]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[21]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[25]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[26]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[30]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[31]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[35]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[36]" -type "float3" 0 -2.3841858e-07 -4.8195786 ;
	setAttr ".tk[37]" -type "float3" 0 -2.3841858e-07 -4.8195786 ;
	setAttr ".tk[38]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".tk[39]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".tk[40]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".tk[41]" -type "float3" 0 -2.3841858e-07 -4.8195786 ;
	setAttr ".tk[42]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[46]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[47]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[51]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[52]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[56]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[75]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[79]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[80]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[84]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[85]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[89]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[90]" -type "float3" 19.188456 -4.6637454 -4.8195786 ;
	setAttr ".tk[91]" -type "float3" 13.568288 -4.6637454 3.9926779 ;
	setAttr ".tk[92]" -type "float3" -2.2763186e-06 -4.6637454 9.6391573 ;
	setAttr ".tk[93]" -type "float3" -13.568293 -4.6637454 3.9926779 ;
	setAttr ".tk[94]" -type "float3" -19.188456 -4.6637454 -4.8195786 ;
	setAttr ".tk[95]" -type "float3" 0 0 -4.8195786 ;
	setAttr ".tk[99]" -type "float3" 0 0 -4.8195786 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "56725A9A-4B78-3750-0671-B69107887B13";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[100:105]" -type "float3"  24.3135643 5.6843419e-14 8.66223907
		 17.19228172 5.6843419e-14 -8.1917429 1.9439949e-06 5.6843419e-14 8.66224003 1.9439949e-06
		 5.6843419e-14 -14.67450905 -17.19227982 5.6843419e-14 -8.1917429 -24.3135643 5.6843419e-14
		 8.66224098;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "8AB2A596-4031-D458-F5E1-71A4254CF7DC";
	setAttr ".dc" -type "componentList" 2 "f[83]" "f[87]";
createNode polySplitRing -n "polySplitRing10";
	rename -uid "1F5DBD11-4B78-94C3-90FA-F1978B3C572C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[1]" "e[5]" "e[22]" "e[31]" "e[40]" "e[49]" "e[58]" "e[67]" "e[78]" "e[87]" "e[96]" "e[137]" "e[146]" "e[155]" "e[164]" "e[173]" "e[182]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.44320401549339294;
	setAttr ".re" 173;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak14";
	rename -uid "5039532B-43A8-94A3-159D-408225C9CBC0";
	setAttr ".uopa" yes;
	setAttr -s 45 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[4]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[5]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[9]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[10]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[11]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[15]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[16]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[20]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[21]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[25]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[26]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[30]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[31]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[35]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[36]" -type "float3" -11.517831 -1.7139157 1.6953965 ;
	setAttr ".tk[37]" -type "float3" -8.1443377 -1.7139157 2.2004244 ;
	setAttr ".tk[38]" -type "float3" -9.2091e-07 -1.7139157 5.2714458 ;
	setAttr ".tk[39]" -type "float3" 8.1443348 -1.7139157 2.2004254 ;
	setAttr ".tk[40]" -type "float3" 11.517831 -1.7139157 1.6953965 ;
	setAttr ".tk[41]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[45]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[46]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[50]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[51]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[55]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[62]" -type "float3" 0 -45.879181 0 ;
	setAttr ".tk[63]" -type "float3" 0 -45.879181 0 ;
	setAttr ".tk[64]" -type "float3" 0 -45.879181 0 ;
	setAttr ".tk[65]" -type "float3" 0 -45.879181 0 ;
	setAttr ".tk[66]" -type "float3" 0 -45.879181 0 ;
	setAttr ".tk[67]" -type "float3" 0 -45.879181 0 ;
	setAttr ".tk[74]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[78]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[79]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[83]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[84]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[88]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[89]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[93]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[94]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[98]" -type "float3" 0 0 1.6953968 ;
	setAttr ".tk[99]" -type "float3" 0 0 -6.9668422 ;
	setAttr ".tk[101]" -type "float3" 0 0 -6.9668384 ;
	setAttr ".tk[104]" -type "float3" 0 0 -6.9668345 ;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "A409DE4C-410D-D129-CFAF-0EAA5DED583E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[2]" "e[6]" "e[24]" "e[33]" "e[42]" "e[51]" "e[60]" "e[69]" "e[76]" "e[85]" "e[94]" "e[135]" "e[144]" "e[153]" "e[162]" "e[171]" "e[185]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.58712863922119141;
	setAttr ".dr" no;
	setAttr ".re" 171;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "0923D6E7-4943-37D4-E10E-B3ABCE6DF937";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[119:120]" "e[122]" "e[124]" "e[126]" "e[128]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.49468064308166504;
	setAttr ".dr" no;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "044053EE-42CB-F87E-DA14-459B2F2D105F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[119:120]" "e[122]" "e[124]" "e[126]" "e[128]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.9545130729675293;
	setAttr ".dr" no;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "FA0C6BAF-40BD-295A-70E3-23B7E6E732B8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[45:46]" "e[48]" "e[50]" "e[52]" "e[198]" "e[231]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.75167191028594971;
	setAttr ".dr" no;
	setAttr ".re" 50;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "84A68EDF-4161-2322-CE01-A4BFAE746ED8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[45:46]" "e[48]" "e[50]" "e[52]" "e[283]" "e[287]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.72751611471176147;
	setAttr ".dr" no;
	setAttr ".re" 50;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "61BA311A-449B-3F20-CFBD-8287862F0821";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[3]" "e[7]" "e[26]" "e[35]" "e[44]" "e[53]" "e[62]" "e[71]" "e[74]" "e[83]" "e[92]" "e[133]" "e[142]" "e[151]" "e[160]" "e[169]" "e[188]" "e[282]" "e[295]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.32724180817604065;
	setAttr ".re" 53;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "03A1CB28-4CAB-056B-CBED-388E1CAE10E9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 39 "e[2]" "e[6]" "e[16]" "e[24]" "e[33]" "e[42]" "e[51]" "e[60]" "e[69]" "e[74]" "e[83]" "e[92]" "e[133]" "e[142]" "e[151]" "e[160]" "e[169]" "e[185:186]" "e[234]" "e[236]" "e[242]" "e[244]" "e[246]" "e[248]" "e[250]" "e[252]" "e[282]" "e[286]" "e[295]" "e[299]" "e[306]" "e[319]" "e[321]" "e[327]" "e[329]" "e[335]" "e[337]" "e[339]" "e[341]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.53286349773406982;
	setAttr ".re" 335;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "BA6DF752-49A9-8387-8628-27AA6AD8CE00";
	setAttr ".ics" -type "componentList" 1 "f[155]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81052852 9.1705494 0.42889726 ;
	setAttr ".rs" 63777;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.76078612781969368 9.016727552541159 0.26056456036171161 ;
	setAttr ".cbx" -type "double3" 0.86027086537283459 9.3243709359601823 0.59722992108772199 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "BD466CA9-4309-9445-0D82-8B88501B42A3";
	setAttr ".ics" -type "componentList" 1 "f[155]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81052852 9.1705494 0.42889726 ;
	setAttr ".rs" 37546;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.76416019002265934 9.0271609419312568 0.2719826904088597 ;
	setAttr ".cbx" -type "double3" 0.85689680316986916 9.3139375465700827 0.5858117910405739 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "C6D377BD-41B8-995C-DCE0-2D9C3DA04FB5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[224:227]" -type "float3"  0.45217797 0.68920875 -1.031760335
		 0.45217797 -0.68920875 -1.031760335 -0.45217797 0.68920875 1.031760335 -0.45217797
		 -0.68920875 1.031760335;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "5F0C35D0-4BF5-AF26-A008-049441EF31C6";
	setAttr ".ics" -type "componentList" 1 "f[200:203]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81052852 9.1705494 0.42889726 ;
	setAttr ".rs" 44333;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.76078612781969368 9.016727090539236 0.26056456036171161 ;
	setAttr ".cbx" -type "double3" 0.86027086537283459 9.3243713979621017 0.59722992108772199 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "D3D33FD4-4D19-2D42-D300-6390464F3AA0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[228:231]" -type "float3"  -45.34115982 0 0 -45.34115982
		 0 0 -45.34115982 0 0 -45.34115982 0 0;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "B72BD84D-4D55-5B35-57C8-2CADF5038260";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[45:46]" "e[48]" "e[50]" "e[52]" "e[296]" "e[300]" "e[332]" "e[365]" "e[419]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.57201725244522095;
	setAttr ".dr" no;
	setAttr ".re" 419;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "8DE71177-4943-A721-B945-E6B96FEE0A4D";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[232:239]" -type "float3"  2.46549487 0 0 2.46549487
		 0 0 2.46549487 0 0 2.46549487 0 0 2.46549487 0 0 2.46549487 0 0 2.46549487 0 0 2.46549487
		 0 0;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "77FA809C-4EFA-852E-0AB2-809AA42BC1FC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[45:46]" "e[48]" "e[50]" "e[52]" "e[332]" "e[419]" "e[462]" "e[464]" "e[468]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 0 1;
	setAttr ".wt" 0.52137011289596558;
	setAttr ".dr" no;
	setAttr ".re" 419;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "1C707654-418D-52A8-D374-289F207FC235";
	setAttr ".ics" -type "componentList" 3 "f[38]" "f[114]" "f[179]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 -3.5527136788005009e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0098744035 7.0899849 1.1890272 ;
	setAttr ".rs" 62963;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28855937162330619 6.9534417558037163 0.95076966706529775 ;
	setAttr ".cbx" -type "double3" 0.2688105645031848 7.2265283195087671 1.4272847464505449 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "368CF456-438D-95F9-AC53-02BFECA29713";
	setAttr ".uopa" yes;
	setAttr -s 90 ".tk";
	setAttr ".tk[6]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[8]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[12]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[14]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[23]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[28]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[32]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[33]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[34]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[36]" -type "float3" 0 0 9.5367432e-07 ;
	setAttr ".tk[37]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[39]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[40]" -type "float3" 0 0 9.5367432e-07 ;
	setAttr ".tk[42]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[44]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[47]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[49]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[52]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[54]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[56]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[63]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[70]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[80]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[82]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[90]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[91]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[92]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[95]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[97]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[100]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[102]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[103]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[105]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[106]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[108]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[109]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[111]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[115]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[124]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[128]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[135]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[136]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[140]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[146]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[154]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[155]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[161]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[162]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[165]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[166]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[170]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[177]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[178]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[179]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[180]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[184]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[189]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[190]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[196]" -type "float3" 0 0 -3.0517578e-05 ;
	setAttr ".tk[197]" -type "float3" 0 0 1.5258789e-05 ;
	setAttr ".tk[199]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[200]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[203]" -type "float3" 0 0 -3.0517578e-05 ;
	setAttr ".tk[204]" -type "float3" 0 0 -3.0517578e-05 ;
	setAttr ".tk[205]" -type "float3" 0 0 -3.0517578e-05 ;
	setAttr ".tk[206]" -type "float3" 0 0 -3.0517578e-05 ;
	setAttr ".tk[207]" -type "float3" 0 0 -3.0517578e-05 ;
	setAttr ".tk[211]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[212]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[213]" -type "float3" 0 0 -3.8146973e-06 ;
	setAttr ".tk[218]" -type "float3" 0 0 -1.9073486e-06 ;
	setAttr ".tk[221]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[222]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[223]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[232]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[233]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[236]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[238]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[241]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[242]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[246]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[247]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[251]" -type "float3" 0 0 -7.6293945e-06 ;
	setAttr ".tk[252]" -type "float3" 0 0 -1.5258789e-05 ;
	setAttr ".tk[256]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[257]" -type "float3" 0 0 3.0517578e-05 ;
	setAttr ".tk[260]" -type "float3" 0 1.1920929e-07 -2.3841858e-07 ;
	setAttr ".tk[261]" -type "float3" 0 -1.1920929e-07 -2.3841858e-07 ;
	setAttr ".tk[262]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".tk[263]" -type "float3" 0 -1.1920929e-07 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "B0D44F29-4705-553F-9BA7-0684EAA5C7CB";
	setAttr ".ics" -type "componentList" 3 "f[38]" "f[114]" "f[179]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 -3.5527136788005009e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0098744035 7.0501475 1.3944451 ;
	setAttr ".rs" 61333;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28855937162330619 6.9136041386281057 1.3944426464802744 ;
	setAttr ".cbx" -type "double3" 0.2688105645031848 7.1866908178336368 1.3944474590910088 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "937BA4E2-4D3E-6890-508D-2A89A1AC5E96";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[260:267]" -type "float3"  0 -2.63147736 -2.96723247
		 0 -2.63146496 13.77460289 0 -2.63147545 25.83701515 0 -2.63146877 40.091026306 0
		 -2.63146973 12.62875748 0 -2.63146639 4.31826067 0 -2.63147497 39.11548615 0 -2.63147259
		 32.039909363;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "5FC58FEA-4EE7-2F81-893E-B1B37815EEB6";
	setAttr ".ics" -type "componentList" 3 "f[38]" "f[114]" "f[179]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 -3.5527136788005009e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0098744035 6.8220654 1.7093384 ;
	setAttr ".rs" 62286;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27455005107620367 6.6549405819050671 1.7093353129763831 ;
	setAttr ".cbx" -type "double3" 0.25480124395608228 6.9891903094738383 1.7093413920636267 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "6FDC3E38-4E07-2CAB-E6BC-69B2CDDE8C4A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[268:275]" -type "float3"  -0.066522926 -17.086050034
		 28.45432663 1.87747657 -17.086044312 28.45429802 -0.066522852 -13.045915604 28.45425987
		 1.65531135 -13.045915604 28.45422554 -1.87747657 -17.086044312 28.45429802 -0.9124853
		 -17.086044312 28.45430946 -1.6705128 -13.045915604 28.45423126 -0.81580663 -13.045915604
		 28.45424271;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "670F1704-45FC-1EE2-B75E-8D90C16529C1";
	setAttr ".ics" -type "componentList" 3 "f[38]" "f[114]" "f[179]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 -3.5527136788005009e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0098744035 6.3956194 1.9761897 ;
	setAttr ".rs" 62479;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27455005107620367 6.3003159054765074 1.8389010946261903 ;
	setAttr ".cbx" -type "double3" 0.25480124395608228 6.490923200793997 2.113478436567171 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "C338ACFA-46EF-4923-601B-098F249474B3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[276:283]" -type "float3"  -9.7699626e-15 -23.42478752
		 11.70730209 0 -23.42468452 11.70742893 -9.7699626e-15 -32.91319656 36.51887131 0
		 -32.91309357 36.51894379 0 -23.42468452 11.70742893 0 -23.42474174 11.70738411 0
		 -32.91310883 36.51892853 0 -32.91316605 36.51888657;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "0575822E-4BED-B657-2374-B4B1C181EA2A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 42 "e[8]" "e[12:13]" "e[17:18]" "e[25]" "e[27]" "e[34]" "e[36]" "e[43]" "e[45]" "e[52]" "e[54]" "e[61]" "e[63]" "e[70]" "e[72]" "e[78]" "e[80]" "e[87]" "e[89]" "e[96]" "e[130]" "e[137]" "e[139]" "e[146]" "e[148]" "e[155]" "e[157]" "e[164]" "e[166]" "e[173]" "e[175]" "e[179]" "e[186]" "e[188]" "e[279]" "e[290]" "e[292]" "e[303]" "e[453]" "e[470]" "e[472]" "e[489]";
	setAttr ".ix" -type "matrix" 0.74617851297006599 0 0 0 0 1.5138878959162383 0 0 0 0 1.1066640599991093 0
		 0 616.69846631071243 -3.5527136788005009e-15 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.846445e-08 7.0215883 -0.034574196 ;
	setAttr ".rs" 35677;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.94748446409939746 4.0258824967490581 -0.034574196567932189 ;
	setAttr ".cbx" -type "double3" 0.94748452102830005 10.017293891669523 -0.034574191290946729 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "551393B2-4D1D-59A1-EB0A-B2AF64E47C00";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[43]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[76]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[96]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[118]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[119]" -type "float3" -26.679695 0 -13.913224 ;
	setAttr ".tk[120]" -type "float3" -26.679695 0 -13.913224 ;
	setAttr ".tk[121]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[135]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[136]" -type "float3" 26.564529 0 -13.913224 ;
	setAttr ".tk[137]" -type "float3" 26.564529 0 -13.913224 ;
	setAttr ".tk[138]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[204]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[205]" -type "float3" 20.578508 0 -13.913224 ;
	setAttr ".tk[206]" -type "float3" 20.578508 0 -13.913224 ;
	setAttr ".tk[207]" -type "float3" 0 0 -13.913224 ;
	setAttr ".tk[260]" -type "float3" 0.14571933 -4.6200156 -11.334839 ;
	setAttr ".tk[261]" -type "float3" -4.1126366 -4.6199965 -11.334854 ;
	setAttr ".tk[262]" -type "float3" 0.14571935 -2.8116817 -7.6900253 ;
	setAttr ".tk[263]" -type "float3" -3.6259782 -2.8116665 -7.6900387 ;
	setAttr ".tk[264]" -type "float3" 4.1126366 -4.6199965 -11.334854 ;
	setAttr ".tk[265]" -type "float3" 1.9988112 -4.6200042 -11.334846 ;
	setAttr ".tk[266]" -type "float3" 3.6592855 -2.8116684 -7.6900387 ;
	setAttr ".tk[267]" -type "float3" 1.7870334 -2.811676 -7.6900334 ;
	setAttr ".tk[268]" -type "float3" 0.13839404 -9.4051247 -11.934765 ;
	setAttr ".tk[269]" -type "float3" -3.9058964 -9.4051056 -11.934784 ;
	setAttr ".tk[270]" -type "float3" 0.13839409 -7.1917772 -7.4736238 ;
	setAttr ".tk[271]" -type "float3" -3.4437022 -7.1917601 -7.4736409 ;
	setAttr ".tk[272]" -type "float3" 3.9058964 -9.4051056 -11.934784 ;
	setAttr ".tk[273]" -type "float3" 1.8983327 -9.4051151 -11.934772 ;
	setAttr ".tk[274]" -type "float3" 3.4753344 -7.1917624 -7.4736385 ;
	setAttr ".tk[275]" -type "float3" 1.6972008 -7.1917748 -7.4736276 ;
	setAttr ".tk[276]" -type "float3" 0.13839404 -13.017438 -15.494293 ;
	setAttr ".tk[277]" -type "float3" -3.9058964 -13.017418 -15.494278 ;
	setAttr ".tk[278]" -type "float3" 0.13839409 -14.434253 -10.4631 ;
	setAttr ".tk[279]" -type "float3" -3.4437022 -14.434234 -10.463081 ;
	setAttr ".tk[280]" -type "float3" 3.9058964 -13.017418 -15.494278 ;
	setAttr ".tk[281]" -type "float3" 1.8983327 -13.017427 -15.494278 ;
	setAttr ".tk[282]" -type "float3" 3.4753344 -14.434237 -10.463089 ;
	setAttr ".tk[283]" -type "float3" 1.6972008 -14.434244 -10.463089 ;
	setAttr ".tk[284]" -type "float3" 0.13839404 -138.68155 -8.5256824 ;
	setAttr ".tk[285]" -type "float3" -3.9058964 -138.68153 -8.5256596 ;
	setAttr ".tk[286]" -type "float3" 0.13839409 -140.09831 -3.4944887 ;
	setAttr ".tk[287]" -type "float3" -3.4437022 -140.09831 -3.494468 ;
	setAttr ".tk[288]" -type "float3" 3.9058964 -138.68153 -8.5256596 ;
	setAttr ".tk[289]" -type "float3" 1.8983327 -138.68153 -8.5256596 ;
	setAttr ".tk[290]" -type "float3" 3.4753344 -140.09831 -3.4944718 ;
	setAttr ".tk[291]" -type "float3" 1.6972008 -140.09831 -3.4944777 ;
createNode polyUnite -n "polyUnite1";
	rename -uid "8913D826-45F3-968A-5C86-39B14CC4AD38";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "77873604-492E-8C1E-343F-53B8B819B284";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "3F4958D3-4D12-C3FA-A8AC-CDA83528B9BA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:309]";
createNode groupId -n "groupId5";
	rename -uid "A6D007AC-4BC6-1344-A10E-97B0932FE54D";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "8ABFAEC4-4E0D-67BD-8C7B-62BFC5B4B4E3";
	setAttr ".ics" -type "componentList" 4 "f[225]" "f[308]" "f[535]" "f[618]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.90387762 8.5527458 -0.12243935 ;
	setAttr ".rs" 56671;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.86027084350585936 8.4403039550781251 -0.50544319152832029 ;
	setAttr ".cbx" -type "double3" 0.94748443603515631 8.6651873779296871 0.26056447982788089 ;
createNode polyTweak -n "polyTweak23";
	rename -uid "4A698CC1-4FEE-57A4-D0DA-559CEFB2335B";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[62]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[63]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[64]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[65]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[66]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[67]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[139]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[140]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[141]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[142]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[143]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[144]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[145]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[146]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[147]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[148]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[149]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[150]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[398]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[399]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[400]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[401]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[402]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[403]" -type "float3" 0 -116.04059 0 ;
	setAttr ".tk[475]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[476]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[477]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[478]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[479]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[480]" -type "float3" 0 -55.353317 0 ;
	setAttr ".tk[481]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[482]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[483]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[484]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[485]" -type "float3" 0 -47.084103 0 ;
	setAttr ".tk[486]" -type "float3" 0 -47.084103 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "715B05D4-48CA-6446-2062-4592626AC417";
	setAttr ".ics" -type "componentList" 4 "f[225]" "f[308]" "f[535]" "f[618]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.90387762 8.5527458 -0.12243935 ;
	setAttr ".rs" 56127;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.86545097351074218 8.4536608886718749 -0.45994564056396486 ;
	setAttr ".cbx" -type "double3" 0.94230430603027349 8.6518304443359373 0.21506694793701173 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "A3145CB4-4439-067E-64B2-76AA3BCD2907";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[672:683]" -type "float3"  0.51801103 1.3357091 -4.54975319
		 0.51801103 -1.3357091 -4.54975319 -0.51801103 1.3357091 -1.043762207 -0.51801103
		 -1.3357091 -1.043762207 -0.51801103 1.3357091 0.23036201 -0.51801103 -1.3357091 0.23036201
		 -0.51801103 -1.3357091 1.38168168 0.51801103 -1.3357091 4.54975367 -0.51801103 1.3357091
		 1.38168168 0.51801103 1.3357091 4.54975367 -0.51801103 -1.3357091 0.23036213 -0.51801103
		 1.3357091 0.23036213;
createNode polyTweak -n "polyTweak25";
	rename -uid "1AB79EB1-41D7-E9CE-BB01-1795E0A417D6";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[684:695]" -type "float3"  -23.63476563 0 0 -23.63476563
		 0 0 -23.63476563 0 0 -23.63476563 0 0 -23.63476563 0 0 -23.63476563 0 0 -23.63476563
		 0 0 -23.63476563 0 0 -23.63476563 0 0 -23.63476563 0 0 -23.63476563 0 0 -23.63476563
		 0 0;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "8D4D3970-4264-6AC4-2F1A-FA8C860C881F";
	setAttr ".dc" -type "componentList" 1 "f[636]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "E398CDD6-4DDC-55F4-875D-3D880D45AD40";
	setAttr ".dc" -type "componentList" 1 "f[641]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "375D8011-4F92-8909-0AD9-0FB72400A39F";
	setAttr ".dc" -type "componentList" 1 "f[624]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "DBDCF57C-4EE1-E76D-CF36-9185CC99DFE1";
	setAttr ".dc" -type "componentList" 1 "f[629]";
createNode lambert -n "lambert2";
	rename -uid "FA4655A2-434F-26A1-368F-8D8C2139082F";
createNode shadingEngine -n "lambert2SG";
	rename -uid "0CF4E70F-44F6-12CD-5D27-8C89852EABF9";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 11 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "8BC60A9C-4838-728B-FC8B-0BB1098EEF4E";
createNode ramp -n "ramp1";
	rename -uid "EA8C86AD-4D99-7618-1B1A-D4A0D92EF1F2";
	setAttr ".in" 3;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 1;
	setAttr ".cel[0].ec" -type "float3" 0.33717579 0.20675312 0.11093083 ;
	setAttr ".cel[1].ep" 0;
	setAttr ".cel[1].ec" -type "float3" 0.76945245 0.49803859 0.29854757 ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "C1AEFFDD-411A-2623-B159-98B731341F33";
createNode lambert -n "Doll";
	rename -uid "0D65B563-4B08-A7AF-DE06-33831161C6DF";
	setAttr -av ".dc" 0.55751878023147583;
	setAttr ".c" -type "float3" 0.64700001 0.43071267 0.27174002 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "8CDE6E7E-4C14-5ACB-7391-7F86AD79477E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "90E321BF-4F3E-AC5B-A5F4-9DB5DA8E8711";
createNode samplerInfo -n "samplerInfo1";
	rename -uid "02CECCDC-4A0E-176F-FD99-8DB464A046CF";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "7D585285-40FC-07D9-15EB-C6BEEE46F812";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "5837FB68-470D-80BF-AC7D-26B059E52066";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "FC31EFA3-4EFD-D6FB-29E9-39B8943799A2";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "61549B9A-4E8B-5B7C-8FF2-F9B7681981DF";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode file -n "file1";
	rename -uid "C071D1B3-414A-64B0-FBE3-2BA960EDB45B";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/yeung/Downloads/[4K]Fabric18/Fabric18_col.jpg";
	setAttr ".ft" 0;
	setAttr ".pf" yes;
	setAttr ".pfr" 1;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "12A66175-432D-29DE-5EDB-C89D4D28EEF2";
createNode bump2d -n "bump2d1";
	rename -uid "29AC5A7F-4846-2B95-58DD-939C2490E75D";
	setAttr ".bf" 0.20512820780277252;
	setAttr ".vc1" -type "float3" 0 0.0017299976 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "E501B217-4844-F9F8-A1AF-A38363E62915";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2097.9685271902067 -743.4744899040594 ;
	setAttr ".tgi[0].vh" -type "double2" -844.39714843122965 983.90639383694315 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -1561.4285888671875;
	setAttr ".tgi[0].ni[0].y" 351.42855834960938;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -1868.5714111328125;
	setAttr ".tgi[0].ni[1].y" 382.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -1206.6666259765625;
	setAttr ".tgi[0].ni[2].y" 709.5238037109375;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" -947.14288330078125;
	setAttr ".tgi[0].ni[3].y" 405.71429443359375;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -1868.5714111328125;
	setAttr ".tgi[0].ni[4].y" 252.85714721679688;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -2175.71435546875;
	setAttr ".tgi[0].ni[5].y" -102.85713958740234;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -1561.4285888671875;
	setAttr ".tgi[0].ni[6].y" 7.1428570747375488;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -1868.5714111328125;
	setAttr ".tgi[0].ni[7].y" -80;
	setAttr ".tgi[0].ni[7].nvs" 1923;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "770B9AF8-449E-D493-DFB3-81B226631CA7";
	setAttr ".ics" -type "componentList" 1 "f[155]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.85337967 9.1705503 0.42889729 ;
	setAttr ".rs" 62548;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.80701141357421879 9.0271612548828131 0.27198268890380861 ;
	setAttr ".cbx" -type "double3" 0.89974800109863284 9.3139385986328129 0.585811882019043 ;
createNode polyTweak -n "polyTweak32";
	rename -uid "F6076CD4-44F8-D4D5-115F-BBADEB9807F0";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[228]" -type "float3" 38.117722 0 0 ;
	setAttr ".tk[229]" -type "float3" 38.117722 0 0 ;
	setAttr ".tk[230]" -type "float3" 38.117718 0 0 ;
	setAttr ".tk[231]" -type "float3" 38.117718 0 0 ;
	setAttr ".tk[251]" -type "float3" 0 -14.263107 0 ;
	setAttr ".tk[564]" -type "float3" 38.117722 0 0 ;
	setAttr ".tk[565]" -type "float3" 38.117722 0 0 ;
	setAttr ".tk[566]" -type "float3" 38.117722 0 0 ;
	setAttr ".tk[567]" -type "float3" 38.117722 0 0 ;
	setAttr ".tk[587]" -type "float3" 0 -14.263107 0 ;
	setAttr ".tk[672]" -type "float3" 0 -4.8377218 0 ;
	setAttr ".tk[673]" -type "float3" 0 -6.2681093 0 ;
	setAttr ".tk[674]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".tk[679]" -type "float3" 0 -6.2681093 0 ;
	setAttr ".tk[681]" -type "float3" 0 -4.8377218 0 ;
	setAttr ".tk[684]" -type "float3" 0 -4.8377218 0 ;
	setAttr ".tk[685]" -type "float3" 0 -6.2681093 0 ;
	setAttr ".tk[686]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".tk[687]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".tk[691]" -type "float3" 0 -6.2681093 0 ;
	setAttr ".tk[693]" -type "float3" 0 -4.8377218 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	rename -uid "B2E12E97-414B-9D9B-644F-38B7479831F9";
	setAttr ".ics" -type "componentList" 1 "f[155]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.85337967 9.1705503 0.42889729 ;
	setAttr ".rs" 63211;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.81052032470703128 9.038012084960938 0.2838571548461914 ;
	setAttr ".cbx" -type "double3" 0.89623908996582036 9.303087768554688 0.57393741607666016 ;
createNode polyTweak -n "polyTweak33";
	rename -uid "99D1A421-4D64-D69C-C28F-19A91311BCFD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[696:699]" -type "float3"  0.35089049 1.085089445 -1.187446
		 0.35089049 -1.085089445 -1.187446 -0.35089058 1.085089445 1.18744588 -0.35089058
		 -1.085089445 1.18744588;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	rename -uid "3A228897-4D1E-E5A3-F100-60A5588708CE";
	setAttr ".ics" -type "componentList" 1 "f[465]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.85337973 9.1705503 -0.65755159 ;
	setAttr ".rs" 63785;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.80701141357421879 9.0271612548828131 -0.79934219360351566 ;
	setAttr ".cbx" -type "double3" 0.89974807739257812 9.3139385986328129 -0.51576087951660154 ;
createNode polyTweak -n "polyTweak34";
	rename -uid "E12D8E8E-4C12-CE22-6A61-3E8885273EFC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[700:703]" -type "float3"  -1.54511678 0 0 -1.54511678
		 0 0 -1.54511678 0 0 -1.54511678 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	rename -uid "268CF66F-4446-9952-40DD-1D95FB1AE0C9";
	setAttr ".ics" -type "componentList" 1 "f[465]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.85337973 9.1705503 -0.65755159 ;
	setAttr ".rs" 36688;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.81066032409667965 9.0384454345703134 -0.78818405151367188 ;
	setAttr ".cbx" -type "double3" 0.89609916687011726 9.3026544189453126 -0.52691902160644533 ;
createNode polyTweak -n "polyTweak35";
	rename -uid "E49FFAF7-4252-ADAD-E5F1-7A9B5C71F665";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[704:707]" -type "float3"  -0.36489278 -1.1283884 -1.1158129
		 0.36489278 -1.1283884 1.11581302 -0.36489278 1.1283884 -1.1158129 0.36489278 1.1283884
		 1.11581302;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	rename -uid "5FC437EC-444A-64F8-21D5-75AD59195F9A";
	setAttr ".ics" -type "componentList" 1 "f[155]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.83792847 9.1705503 0.42889729 ;
	setAttr ".rs" 53088;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.79506912231445315 9.038012084960938 0.2838571548461914 ;
	setAttr ".cbx" -type "double3" 0.88078788757324222 9.303087768554688 0.57393741607666016 ;
createNode polyTweak -n "polyTweak36";
	rename -uid "731680F0-4AC9-1962-ABDD-C48207941BEB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[708:711]" -type "float3"  -2.10383892 0 0 -2.10383892
		 0 0 -2.10383892 0 0 -2.10383892 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	rename -uid "E6512D01-494A-1735-82DB-27905C3E3D0C";
	setAttr ".ics" -type "componentList" 1 "f[155]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.83792847 9.1705503 0.42889729 ;
	setAttr ".rs" 60916;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.82430755615234375 9.1284289550781246 0.38280281066894534 ;
	setAttr ".cbx" -type "double3" 0.85154945373535162 9.2126708984374996 0.47499176025390627 ;
createNode polyTweak -n "polyTweak37";
	rename -uid "8E95EA6F-4BEF-FCDB-2947-4CBB5DB1B1D4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[712:715]" -type "float3"  2.92384648 9.041662216 -9.89456654
		 2.92384648 -9.041662216 -9.89456654 -2.92384648 9.041662216 9.89456654 -2.92384648
		 -9.041662216 9.89456654;
createNode polyExtrudeFace -n "polyExtrudeFace31";
	rename -uid "D99F6C78-4434-EF94-35D9-21BCC9775C21";
	setAttr ".ics" -type "componentList" 1 "f[465]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.83234137 9.1705503 -0.65755159 ;
	setAttr ".rs" 39065;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.78962196350097658 9.0384454345703134 -0.78818405151367188 ;
	setAttr ".cbx" -type "double3" 0.87506080627441407 9.3026544189453126 -0.52691902160644533 ;
createNode polyTweak -n "polyTweak38";
	rename -uid "595DC96D-4547-58A7-5391-6D93A14A2A44";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[716:719]" -type "float3"  0.50387126 0 0 0.50387126
		 0 0 0.50387126 0 0 0.50387126 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace32";
	rename -uid "1B4E753F-483C-A0A6-A430-2AA619CD0197";
	setAttr ".ics" -type "componentList" 1 "f[465]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.83234137 9.1705503 -0.65755159 ;
	setAttr ".rs" 39362;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.81845481872558601 9.1276074218750001 -0.70001556396484377 ;
	setAttr ".cbx" -type "double3" 0.84622795104980475 9.2134924316406259 -0.61508750915527344 ;
createNode polyTweak -n "polyTweak39";
	rename -uid "34B1E142-4A59-41F0-A66A-C68634BB1B46";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[720:723]" -type "float3"  -2.88328409 -8.91620255 -8.8168478
		 2.88328409 -8.91620255 8.81684875 -2.88328409 8.91620255 -8.8168478 2.88328409 8.91620255
		 8.81684875;
createNode polyExtrudeFace -n "polyExtrudeFace33";
	rename -uid "27B98C7D-45CD-655C-0C3C-46A856291CDD";
	setAttr ".ics" -type "componentList" 3 "f[38]" "f[114]" "f[179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0098744007 4.2854128 1.9096785 ;
	setAttr ".rs" 38167;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30369499206542971 4.2008337402343754 1.7445506286621093 ;
	setAttr ".cbx" -type "double3" 0.28394618988037112 4.3699923706054689 2.074806365966797 ;
createNode polyTweak -n "polyTweak40";
	rename -uid "FFFB3EC6-4F06-E5DE-7A23-589CF63AD484";
	setAttr ".uopa" yes;
	setAttr -s 84 ".tk";
	setAttr ".tk[56]" -type "float3" 0 3.8146973e-06 -41.309402 ;
	setAttr ".tk[57]" -type "float3" 0 0 -46.914707 ;
	setAttr ".tk[58]" -type "float3" 0 3.8146973e-06 -41.065754 ;
	setAttr ".tk[59]" -type "float3" 0 3.8146973e-06 -47.87833 ;
	setAttr ".tk[60]" -type "float3" 0 3.8146973e-06 -48.620125 ;
	setAttr ".tk[61]" -type "float3" 0 3.8146973e-06 -41.346893 ;
	setAttr ".tk[62]" -type "float3" 0 0 -47.87833 ;
	setAttr ".tk[63]" -type "float3" 0 0 -41.309402 ;
	setAttr ".tk[64]" -type "float3" 0 0 -41.065754 ;
	setAttr ".tk[65]" -type "float3" 0 1.5258789e-05 -46.914703 ;
	setAttr ".tk[66]" -type "float3" 0 0 -41.346893 ;
	setAttr ".tk[67]" -type "float3" 0 0 -48.620125 ;
	setAttr ".tk[68]" -type "float3" 0 0 -41.065754 ;
	setAttr ".tk[69]" -type "float3" 0 0 -47.87833 ;
	setAttr ".tk[70]" -type "float3" 0 0 -41.309402 ;
	setAttr ".tk[71]" -type "float3" 0 0 -48.620125 ;
	setAttr ".tk[72]" -type "float3" 0 0 -41.346893 ;
	setAttr ".tk[73]" -type "float3" 0 0 -46.914707 ;
	setAttr ".tk[139]" -type "float3" 0 0 -47.87833 ;
	setAttr ".tk[140]" -type "float3" 0 0 -41.309402 ;
	setAttr ".tk[141]" -type "float3" 0 0 -48.620125 ;
	setAttr ".tk[142]" -type "float3" 0 0 -41.346893 ;
	setAttr ".tk[143]" -type "float3" 0 0 -46.914707 ;
	setAttr ".tk[144]" -type "float3" 0 0 -41.065754 ;
	setAttr ".tk[145]" -type "float3" 0 0 -47.87833 ;
	setAttr ".tk[146]" -type "float3" 0 0 -41.309402 ;
	setAttr ".tk[147]" -type "float3" 0 0 -48.620125 ;
	setAttr ".tk[148]" -type "float3" 0 0 -41.346893 ;
	setAttr ".tk[149]" -type "float3" 0 0 -46.914707 ;
	setAttr ".tk[150]" -type "float3" 0 0 -41.065754 ;
	setAttr ".tk[263]" -type "float3" 5.2114635 0 0 ;
	setAttr ".tk[266]" -type "float3" -5.2114635 0 0 ;
	setAttr ".tk[271]" -type "float3" 4.9506841 0 0 ;
	setAttr ".tk[274]" -type "float3" -4.9482889 0 0 ;
	setAttr ".tk[279]" -type "float3" 4.9506841 0 0 ;
	setAttr ".tk[282]" -type "float3" -4.9482889 0 0 ;
	setAttr ".tk[287]" -type "float3" 4.9506841 0 0 ;
	setAttr ".tk[290]" -type "float3" -4.9482889 0 0 ;
	setAttr ".tk[392]" -type "float3" 0 3.8146973e-06 43.556988 ;
	setAttr ".tk[393]" -type "float3" 0 0 46.914684 ;
	setAttr ".tk[394]" -type "float3" 0 3.8146973e-06 41.629509 ;
	setAttr ".tk[395]" -type "float3" 0 3.8146973e-06 49.492741 ;
	setAttr ".tk[396]" -type "float3" 0 3.8146973e-06 50.163059 ;
	setAttr ".tk[397]" -type "float3" 0 3.8146973e-06 41.883522 ;
	setAttr ".tk[398]" -type "float3" 0 0 49.492741 ;
	setAttr ".tk[399]" -type "float3" 0 0 43.556988 ;
	setAttr ".tk[400]" -type "float3" 0 0 41.629509 ;
	setAttr ".tk[401]" -type "float3" 0 1.5258789e-05 46.914703 ;
	setAttr ".tk[402]" -type "float3" 0 0 41.88353 ;
	setAttr ".tk[403]" -type "float3" 0 0 50.163059 ;
	setAttr ".tk[404]" -type "float3" 0 0 41.629509 ;
	setAttr ".tk[405]" -type "float3" 0 0 49.492741 ;
	setAttr ".tk[406]" -type "float3" 0 0 43.556988 ;
	setAttr ".tk[407]" -type "float3" 0 0 50.163059 ;
	setAttr ".tk[408]" -type "float3" 0 0 41.883522 ;
	setAttr ".tk[409]" -type "float3" 0 0 46.914684 ;
	setAttr ".tk[475]" -type "float3" 0 0 49.492741 ;
	setAttr ".tk[476]" -type "float3" 0 0 43.556988 ;
	setAttr ".tk[477]" -type "float3" 0 0 50.163059 ;
	setAttr ".tk[478]" -type "float3" 0 0 41.88353 ;
	setAttr ".tk[479]" -type "float3" 0 0 46.914707 ;
	setAttr ".tk[480]" -type "float3" 0 0 41.629509 ;
	setAttr ".tk[481]" -type "float3" 0 0 49.492741 ;
	setAttr ".tk[482]" -type "float3" 0 0 43.556988 ;
	setAttr ".tk[483]" -type "float3" 0 0 50.163059 ;
	setAttr ".tk[484]" -type "float3" 0 0 41.88353 ;
	setAttr ".tk[485]" -type "float3" 0 0 46.914707 ;
	setAttr ".tk[486]" -type "float3" 0 0 41.629509 ;
	setAttr ".tk[599]" -type "float3" 5.2114635 0 0 ;
	setAttr ".tk[602]" -type "float3" -5.2114635 0 0 ;
	setAttr ".tk[607]" -type "float3" 4.9506841 0 0 ;
	setAttr ".tk[610]" -type "float3" -4.9482889 0 0 ;
	setAttr ".tk[615]" -type "float3" 4.9506841 0 0 ;
	setAttr ".tk[618]" -type "float3" -4.9482889 0 0 ;
	setAttr ".tk[623]" -type "float3" 4.9506841 0 0 ;
	setAttr ".tk[626]" -type "float3" -4.9482889 0 0 ;
	setAttr ".tk[716]" -type "float3" 2.0908895 0 0 ;
	setAttr ".tk[717]" -type "float3" 2.0908895 0 0 ;
	setAttr ".tk[718]" -type "float3" 2.0908895 0 0 ;
	setAttr ".tk[719]" -type "float3" 2.0908895 0 0 ;
	setAttr ".tk[724]" -type "float3" 2.6293776 0 0 ;
	setAttr ".tk[725]" -type "float3" 2.6293776 0 0 ;
	setAttr ".tk[726]" -type "float3" 2.6293776 0 0 ;
	setAttr ".tk[727]" -type "float3" 2.6293776 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace34";
	rename -uid "D948EEE9-4DC6-1DA0-9E9C-21B57C22B919";
	setAttr ".ics" -type "componentList" 3 "f[38]" "f[114]" "f[179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0098744007 4.1974697 1.9096785 ;
	setAttr ".rs" 41557;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24651775360107422 4.129349060058594 1.7766844177246095 ;
	setAttr ".cbx" -type "double3" 0.22676895141601563 4.2655895996093749 2.0426725769042968 ;
createNode polyTweak -n "polyTweak41";
	rename -uid "30CEEF6B-46BC-14AF-83C2-2E8F6E4E332C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[728:735]" -type "float3"  -0.20259091 -7.14845657 3.21336317
		 5.71772385 -7.14849234 3.21337485 -0.20259091 -10.440238 -3.21337485 4.077733994
		 -10.44027233 -3.21336102 -5.71772385 -7.14849234 3.21337485 -2.77891278 -7.14849234
		 3.21336317 -4.12450552 -10.44026661 -3.21335769 -2.4844811 -10.4402523 -3.21337199;
createNode polyExtrudeFace -n "polyExtrudeFace35";
	rename -uid "8E1D044C-47B6-2528-FFE4-C182A38E9452";
	setAttr ".ics" -type "componentList" 3 "f[348]" "f[424]" "f[489]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0098744007 4.2854128 -1.9956099 ;
	setAttr ".rs" 63080;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30369499206542971 4.2008337402343754 -2.144822235107422 ;
	setAttr ".cbx" -type "double3" 0.28394618988037112 4.3699923706054689 -1.8463977050781251 ;
createNode polyTweak -n "polyTweak42";
	rename -uid "1DDABE88-48FC-B344-5C5F-428326E5B115";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[736:743]" -type "float3"  -0.30699965 -2.71076155 4.86942625
		 8.66445637 -2.71081901 4.86944342 -0.3069998 -7.69901609 -4.86944342 6.17926598 -7.69907284
		 -4.86942101 -8.66445637 -2.71081901 4.86944342 -4.21107292 -2.71081901 4.86942625
		 -6.25014257 -7.69906044 -4.86941528 -3.76490283 -7.69904757 -4.86943722;
createNode polyExtrudeFace -n "polyExtrudeFace36";
	rename -uid "76A258CC-4765-9537-9497-57BE545FAF73";
	setAttr ".ics" -type "componentList" 3 "f[348]" "f[424]" "f[489]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0098744007 4.2003536 -1.9956099 ;
	setAttr ".rs" 41712;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24406394958496094 4.1329394531250001 -2.1145394897460936 ;
	setAttr ".cbx" -type "double3" 0.22431514739990235 4.2677673339843754 -1.8766804504394532 ;
createNode polyTweak -n "polyTweak43";
	rename -uid "603B5715-4AF4-4EE4-0A1C-C4B1180AE9B7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[744:751]" -type "float3"  4.25273228 -10.22251892 3.028257847
		 5.9631052 -6.78947163 -3.028270721 -0.2112852 -10.22248077 3.028270721 -0.21128513
		 -6.78943396 -3.028257847 -2.59110403 -10.2225008 3.028267145 -2.89816976 -6.78947163
		 -3.028257847 -4.30150986 -10.22251129 3.028254032 -5.9631052 -6.78947163 -3.028270721;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "9D0E619F-4B27-A6B3-CF4F-CCB1A62E87D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[923]" "e[927]" "e[933:934]" "e[938]" "e[942]" "e[944]" "e[974]" "e[1003]" "e[1060]" "e[1062]" "e[1064]" "e[1068]" "e[1072]" "e[1076]" "e[1080]" "e[1088]" "e[1091]" "e[1274]" "e[1276]" "e[1350]" "e[1353]" "e[1358]" "e[1361]" "e[1382]" "e[1385]" "e[1390]" "e[1393]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.51881849765777588;
	setAttr ".dr" no;
	setAttr ".re" 1390;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak44";
	rename -uid "D14B3259-4EC8-6A61-C2BF-288DF3B9C4DA";
	setAttr ".uopa" yes;
	setAttr -s 103 ".tk";
	setAttr ".tk[17]" -type "float3" 0.035214707 0 -7.6591225 ;
	setAttr ".tk[22]" -type "float3" 0.035214707 0 -7.9896493 ;
	setAttr ".tk[27]" -type "float3" 0.035214707 0 -7.9896493 ;
	setAttr ".tk[32]" -type "float3" 0.035214707 0 -7.48876 ;
	setAttr ".tk[37]" -type "float3" 0.035214707 0 -6.494277 ;
	setAttr ".tk[49]" -type "float3" 0.035214707 0 -6.5472012 ;
	setAttr ".tk[87]" -type "float3" 0.035214707 0 -4.0727777 ;
	setAttr ".tk[100]" -type "float3" 0.035214707 0 -5.5716786 ;
	setAttr ".tk[122]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[123]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[124]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[125]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[126]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[127]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[128]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[129]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[153]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[156]" -type "float3" 0.035214707 0 -7.9896493 ;
	setAttr ".tk[160]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[163]" -type "float3" 0.035214707 0 -7.9896493 ;
	setAttr ".tk[189]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[190]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[191]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[192]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[193]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[194]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[195]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[196]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[197]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[198]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[244]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[245]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[248]" -type "float3" 0.035214707 0 -7.9896493 ;
	setAttr ".tk[254]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[255]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[258]" -type "float3" 0.035214707 0 -7.9896493 ;
	setAttr ".tk[353]" -type "float3" 0.035214707 0 7.6909876 ;
	setAttr ".tk[358]" -type "float3" 0.035214707 0 7.9896431 ;
	setAttr ".tk[363]" -type "float3" 0.035214707 0 7.9896431 ;
	setAttr ".tk[368]" -type "float3" 0.035214707 0 7.5370383 ;
	setAttr ".tk[373]" -type "float3" 0.035214707 0 6.6383967 ;
	setAttr ".tk[385]" -type "float3" 0.035214707 0 6.686244 ;
	setAttr ".tk[423]" -type "float3" 0.035214707 0 4.4503031 ;
	setAttr ".tk[436]" -type "float3" 0.035214707 0 5.8047333 ;
	setAttr ".tk[458]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[459]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[460]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[461]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[462]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[463]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[464]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[465]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[489]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[492]" -type "float3" 0.035214707 0 7.9896431 ;
	setAttr ".tk[496]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[499]" -type "float3" 0.035214707 0 7.9896431 ;
	setAttr ".tk[514]" -type "float3" 1.1920929e-07 4.7683716e-07 0 ;
	setAttr ".tk[525]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[526]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[527]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[528]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[529]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[530]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[531]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[532]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[533]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[534]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[558]" -type "float3" 5.9604645e-08 4.7683716e-07 4.7683716e-07 ;
	setAttr ".tk[564]" -type "float3" 0 9.5367432e-07 0 ;
	setAttr ".tk[566]" -type "float3" -1.1920929e-07 9.5367432e-07 4.7683716e-07 ;
	setAttr ".tk[567]" -type "float3" -1.1920929e-07 0 4.7683716e-07 ;
	setAttr ".tk[568]" -type "float3" -2.3841858e-07 4.7683716e-07 0 ;
	setAttr ".tk[569]" -type "float3" -2.3841858e-07 -4.7683716e-07 0 ;
	setAttr ".tk[570]" -type "float3" 1.1920929e-07 9.5367432e-07 0 ;
	setAttr ".tk[571]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".tk[572]" -type "float3" -1.1920929e-07 4.7683716e-07 4.7683716e-07 ;
	setAttr ".tk[573]" -type "float3" 0 9.5367432e-07 4.7683716e-07 ;
	setAttr ".tk[574]" -type "float3" -1.1920929e-07 -4.7683716e-07 4.7683716e-07 ;
	setAttr ".tk[575]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".tk[580]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[581]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[584]" -type "float3" 0.035214707 0 7.9896431 ;
	setAttr ".tk[590]" -type "float3" 21.997278 0 0 ;
	setAttr ".tk[591]" -type "float3" 15.975676 0 0 ;
	setAttr ".tk[594]" -type "float3" 0.035214707 0 7.9896431 ;
	setAttr ".tk[704]" -type "float3" 1.1920929e-07 -2.3841858e-07 9.5367432e-07 ;
	setAttr ".tk[705]" -type "float3" 5.9604645e-08 -2.3841858e-07 -4.7683716e-07 ;
	setAttr ".tk[706]" -type "float3" 1.1920929e-07 -2.3841858e-07 9.5367432e-07 ;
	setAttr ".tk[707]" -type "float3" 5.9604645e-08 -2.3841858e-07 -4.7683716e-07 ;
	setAttr ".tk[720]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[721]" -type "float3" 1.4901161e-08 0 2.9802322e-08 ;
	setAttr ".tk[722]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[723]" -type "float3" 1.4901161e-08 0 2.9802322e-08 ;
	setAttr ".tk[724]" -type "float3" -1.4901161e-08 0 2.9802322e-08 ;
	setAttr ".tk[726]" -type "float3" -1.4901161e-08 0 2.9802322e-08 ;
	setAttr ".tk[752]" -type "float3" 4.3270559 -5.8574042 3.081182 ;
	setAttr ".tk[753]" -type "float3" 6.0673194 -2.3643591 -3.0811942 ;
	setAttr ".tk[754]" -type "float3" -0.21497782 -5.8573627 3.0811942 ;
	setAttr ".tk[755]" -type "float3" -0.21497777 -2.3643179 -3.081182 ;
	setAttr ".tk[756]" -type "float3" -2.6363883 -5.8573785 3.0811903 ;
	setAttr ".tk[757]" -type "float3" -2.9488208 -2.3643591 -3.081182 ;
	setAttr ".tk[758]" -type "float3" -4.3766875 -5.8573966 3.0811779 ;
	setAttr ".tk[759]" -type "float3" -6.0673194 -2.3643591 -3.0811942 ;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "B33A5DEF-48CF-FEDD-AA02-CC956B33498A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 73 "e[826]" "e[874]" "e[876]" "e[882]" "e[884]" "e[886]" "e[888]" "e[890]" "e[892]" "e[926]" "e[939]" "e[946]" "e[959]" "e[961]" "e[967]" "e[969]" "e[975]" "e[977]" "e[979]" "e[981]" "e[992]" "e[994]" "e[996]" "e[998]" "e[1004]" "e[1006]" "e[1012]" "e[1014]" "e[1027]" "e[1029]" "e[1033]" "e[1035]" "e[1037]" "e[1039]" "e[1041]" "e[1043]" "e[1049]" "e[1051]" "e[1057]" "e[1059]" "e[1063]" "e[1065]" "e[1070]" "e[1073]" "e[1083]" "e[1086]" "e[1092:1093]" "e[1098]" "e[1104]" "e[1116]" "e[1122]" "e[1140]" "e[1144]" "e[1156]" "e[1160]" "e[1172]" "e[1176]" "e[1188]" "e[1192]" "e[1348]" "e[1352]" "e[1356]" "e[1360]" "e[1380]" "e[1384]" "e[1388]" "e[1392]" "e[1438]" "e[1441]" "e[1456]" "e[1459]" "e[1474]" "e[1496]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.48448631167411804;
	setAttr ".re" 1388;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "FEF767FA-4429-D078-71BD-6984979BCE8B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 71 "e[185]" "e[233]" "e[235]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[285]" "e[298]" "e[305]" "e[318]" "e[320]" "e[326]" "e[328]" "e[334]" "e[336]" "e[338]" "e[340]" "e[351]" "e[353]" "e[355]" "e[357]" "e[363]" "e[365]" "e[371]" "e[373]" "e[386]" "e[388]" "e[392]" "e[394]" "e[396]" "e[398]" "e[400]" "e[402]" "e[408]" "e[410]" "e[416]" "e[418]" "e[422]" "e[424]" "e[429]" "e[432]" "e[442]" "e[445]" "e[451:452]" "e[457]" "e[463]" "e[475]" "e[481]" "e[499]" "e[503]" "e[515]" "e[519]" "e[531]" "e[535]" "e[547]" "e[551]" "e[1334]" "e[1337]" "e[1342]" "e[1345]" "e[1366]" "e[1369]" "e[1374]" "e[1377]" "e[1403]" "e[1407]" "e[1420]" "e[1424]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50016218423843384;
	setAttr ".re" 1377;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "51080D78-484F-8681-1C35-FC9F2735A5E3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[282]" "e[286]" "e[292:293]" "e[297]" "e[301]" "e[303]" "e[333]" "e[362]" "e[419]" "e[421]" "e[423]" "e[427]" "e[431]" "e[435]" "e[439]" "e[447]" "e[450]" "e[633]" "e[635]" "e[1332]" "e[1336]" "e[1340]" "e[1344]" "e[1364]" "e[1368]" "e[1372]" "e[1376]" "e[1667]" "e[1773]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.53601402044296265;
	setAttr ".dr" no;
	setAttr ".re" 1372;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitEdge -n "polySplitEdge1";
	rename -uid "38090C25-4008-3522-0C66-BEB9A7FE9837";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[1284]" "e[1286]" "e[1288]" "e[1290]" "e[1292]" "e[1295]" "e[1298:1299]" "e[1301]" "e[1303]" "e[1312]" "e[1314:1315]" "e[1325]" "e[1327:1328]";
createNode polyTweak -n "polyTweak45";
	rename -uid "37B1E4C1-42F0-BE63-2F93-71803B2C92E2";
	setAttr ".uopa" yes;
	setAttr -s 57 ".tk";
	setAttr ".tk[178]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[179]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[222]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[223]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[224]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[225]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[226]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[227]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[228]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[229]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[230]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[231]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[232]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[233]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[234]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[235]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[236]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[237]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[238]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[239]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[514]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[515]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[558]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[559]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[560]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[561]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[562]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[563]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[564]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[565]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[566]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[567]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[568]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[569]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[570]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[571]" -type "float3" 0 -4.6849585 0 ;
	setAttr ".tk[572]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[573]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[574]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[575]" -type "float3" 0 -4.6849585 0 ;
	setAttr ".tk[696]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[697]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[698]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[699]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[700]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[701]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[702]" -type "float3" -4.7683716e-07 3.8859558 0 ;
	setAttr ".tk[703]" -type "float3" 0 -3.8460026 0 ;
	setAttr ".tk[704]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[705]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[706]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[707]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[708]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[709]" -type "float3" 0 -4.9101739 0 ;
	setAttr ".tk[710]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[711]" -type "float3" 0 4.950192 0 ;
	setAttr ".tk[854]" -type "float3" 0 2.3841858e-07 0 ;
createNode polySeparate -n "polySeparate1";
	rename -uid "B88B8B1E-4833-5252-5424-48867312871A";
	setAttr ".ic" 4;
	setAttr ".rs" -type "Int32Array" 2 1 3 ;
	setAttr -s 3 ".out";
createNode groupId -n "groupId6";
	rename -uid "9110F585-49BC-3D69-F207-9B91E2557A32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "9AE37D5A-4DD5-1B8B-C2E8-6CB6E76EBD65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:905]";
createNode groupId -n "groupId7";
	rename -uid "33CF931D-4BA4-1D38-E2D8-0DB969C30FC1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "ACC701E7-47D3-C14C-0025-23A1D42834E7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "7C924D7F-45AB-CC23-7ED4-EBBB87B2229E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:6]";
createNode groupId -n "groupId9";
	rename -uid "954AD0AB-47BD-7AD1-B938-69856D8CD6E5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "103B9EA5-472E-FCBE-18C3-DA8CE5C10B01";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:6]";
createNode groupId -n "groupId10";
	rename -uid "DE8821E2-45DA-2DFC-0E6B-A1821E5D4186";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "405C64E8-42FF-C3E2-296A-5E89721A6940";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:891]";
createNode groupId -n "groupId3";
	rename -uid "75A61CD0-4CE5-BEE6-7ADA-13A91895F442";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "B2B32F9E-4145-DFAB-89BE-C59DC22B4848";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "641BF419-46F1-81A8-EC19-B6B9CB1E21C8";
	setAttr ".ihi" 0;
createNode polySplitEdge -n "polySplitEdge2";
	rename -uid "8022BF49-4390-6477-10C4-A88DA4F68BC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[333]" "e[416]" "e[418:419]" "e[421:424]" "e[439]" "e[445]" "e[450]" "e[452]" "e[1640]" "e[1642]" "e[1646]" "e[1756]" "e[1760]" "e[1762]" "e[1776]" "e[1780]" "e[1782]" "e[1806]" "e[1808]" "e[1812]";
createNode polySeparate -n "polySeparate2";
	rename -uid "DD238C69-4197-BC9D-1FD8-BE9FF5769C75";
	setAttr ".ic" 5;
	setAttr ".rs" -type "Int32Array" 2 1 2 ;
	setAttr -s 3 ".out";
createNode groupId -n "groupId11";
	rename -uid "42AAF503-43B6-D079-D59C-CEB2737C8D0F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "AAFA309E-4D50-773A-EE0A-559BACD6A02E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:43]";
createNode groupId -n "groupId12";
	rename -uid "4CDA2191-4BFC-6DA9-EB81-52BE36C6BDD6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "66CAF9EB-4F29-C547-2AB3-378A9B370836";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode groupId -n "groupId13";
	rename -uid "1D08A2D1-47AE-F57D-3AF7-6A8F66CAFF52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "F114B6B5-4003-5391-E42C-92A04B9272B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:831]";
createNode polySplitEdge -n "polySplitEdge3";
	rename -uid "48099F2A-4E42-40F4-1B68-0F8A5EB1C757";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[950]" "e[1033]" "e[1035:1036]" "e[1038:1041]" "e[1056]" "e[1062]" "e[1067]" "e[1069]" "e[1385]" "e[1389]" "e[1391]" "e[1413]" "e[1415]" "e[1419]" "e[1434]" "e[1436]" "e[1440]" "e[1552]" "e[1556]" "e[1558]";
createNode polySeparate -n "polySeparate3";
	rename -uid "5F6DA6EB-43E3-1202-8D95-C896A2EEA9D2";
	setAttr ".ic" 6;
	setAttr ".rs" -type "Int32Array" 2 3 4 ;
	setAttr -s 3 ".out";
createNode groupId -n "groupId14";
	rename -uid "8D7B3264-4CFD-9021-3366-1E954133FFF8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "A29E5388-47AE-0811-D604-D68BE33264B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:43]";
createNode groupId -n "groupId15";
	rename -uid "36DE94CB-4EE8-260C-F4E8-10A97C328B96";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "EF6EEE7A-482F-A7B0-0D14-9DAD44488781";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode groupId -n "groupId16";
	rename -uid "A1156EB9-426F-C120-C83C-3E810CC11AAC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "08AD086B-4FAE-33EB-9B80-8BBD1D997450";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:771]";
createNode polyAppend -n "polyAppend1";
	rename -uid "2270597B-434D-D863-B867-CFBDAA33FF33";
	setAttr -s 2 ".d[0:1]"  -2147483605 -2147483599;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend2";
	rename -uid "7A63451F-447A-8F72-3288-948D39767A0E";
	setAttr -s 3 ".d[0:2]"  -2147483606 -2147483586 -2147483597;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend3";
	rename -uid "AF8D189C-43AB-384B-3F0E-49A54A0DDC61";
	setAttr -s 3 ".d[0:2]"  -2147483607 -2147483585 -2147483595;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend4";
	rename -uid "D870DEA1-4F4A-59D2-750F-D3A3E6DBF7C7";
	setAttr -s 3 ".d[0:2]"  -2147483608 -2147483584 -2147483593;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend5";
	rename -uid "B1151631-4EFB-F01D-43CF-42B61123D95C";
	setAttr -s 3 ".d[0:2]"  -2147483609 -2147483583 -2147483591;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend6";
	rename -uid "6E582111-416E-B98C-C6BD-5EA4069C6A8B";
	setAttr -s 3 ".d[0:2]"  -2147483610 -2147483582 -2147483589;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend7";
	rename -uid "BCA3400B-4A40-2A36-EDB2-5D80AF9045CF";
	setAttr -s 4 ".d[0:3]"  -2147483611 -2147483581 -2147483588 -2147483612;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend8";
	rename -uid "5BDD18C6-4200-B8FA-6866-F99E9C59F21D";
	setAttr -s 4 ".d[0:3]"  -2147483604 -2147483603 -2147483601 -2147483587;
	setAttr ".tx" 1;
createNode skinCluster -n "skinCluster1";
	rename -uid "924B1B03-4702-6BA8-48B3-35B26DE2AEBF";
	setAttr -s 854 ".wl";
	setAttr ".wl[0:99].w"
		5 0 0.029575437710325302 11 0.099354792040002235 12 0.64818685371554607 
		13 0.064917848400603217 16 0.15796506813352307
		5 0 0.047431460812977284 11 0.038598216552803009 12 0.60457317813680378 
		13 0.023380047554590642 16 0.28601709694282551
		5 0 0.015187832829053069 5 0.032930029633563 11 0.0057427832504407077 
		12 0.56053737544737325 16 0.38560197883956998
		5 0 0.038776501776315885 5 0.02902361615304154 11 0.0082968775741649649 
		12 0.55533337985690223 16 0.36856962463957538
		5 0 0.038844680322245771 11 0.10956678310999862 12 0.6280578552966668 
		13 0.061497102577334192 16 0.16203357869375473
		5 0 0.59366690052658588 1 0.00038786241124952586 5 0.0033828222119677664 
		9 0.40253467652586095 10 2.7738324335642766e-05
		5 0 0.61741313713351731 1 0.00025524076132612145 5 0.012192732493975162 
		9 0.37006009312526139 10 7.8796485919952966e-05
		5 0 0.75130387525220399 5 0.037299444343366288 6 6.533547594019723e-05 
		9 0.21119875237318811 10 0.00013259255530140342
		5 0 0.67425661378973534 5 0.01177013246989618 6 4.8803726220294777e-05 
		9 0.31378173218019234 10 0.00014271783395593713
		5 0 0.58688165334350328 1 6.6434788588432843e-05 5 0.00047449111348430676 
		9 0.41256207208279388 10 1.5348671630084565e-05
		5 0 0.0056670587987515172 11 0.071596741485425969 12 0.70779719227250815 
		13 0.04384102890554975 16 0.17109797853776454
		5 0 0.49599788962198638 1 8.4953075974947848e-05 5 0.0025768698583579692 
		9 0.50109434702887901 10 0.00024594041480176048
		5 0 0.53032541472212646 1 7.6558155621332587e-05 5 0.0075163530305338297 
		9 0.46143082223507981 10 0.00065085185663875335
		5 0 0.57613985676165214 5 0.012303385929170322 6 8.884198576240928e-05 
		9 0.40997839895752475 10 0.0014895163658906201
		5 0 0.5165475863497323 1 7.3373223823323676e-05 5 0.0031551721728289564 
		9 0.47939665677527693 10 0.00082721147833870546
		5 0 0.4688963855183072 1 4.2153967681118207e-05 5 8.4820897214373859e-05 
		9 0.53080745593326872 10 0.00016918368352858521
		5 0 0.32520450484726782 1 0.00072367508062442262 5 0.0023431625540287974 
		9 0.6552508818990358 10 0.016477775619043081
		5 0 0.32962787440084901 1 0.00061767879303148616 5 0.0071656982394588883 
		9 0.63240066174773302 10 0.030188086818927439
		5 0 0.309528777020465 1 0.00070562205109932967 5 0.015734224850697559 
		9 0.60284063526350795 10 0.071190740814230311
		5 0 0.34823128596923547 1 0.00057211163433550322 5 0.0083474582079535835 
		9 0.60236258354291838 10 0.040486560645557008
		5 0 0.29734204681889009 1 0.00061584273373733762 5 0.00067239892461876246 
		9 0.68275089029086344 10 0.018618821231890542
		5 0 0.25886636236900862 1 0.00087386193167475501 5 0.0028620501876048536 
		9 0.69014759980946783 10 0.047250125702244093
		5 0 0.25536750529895685 1 0.00066856527504220004 5 0.0076141908718575513 
		9 0.65989217628071417 10 0.076457562273429217
		5 0 0.23955623114572619 1 0.00068797642546716928 5 0.013636068119877517 
		9 0.61683775331612767 10 0.12928197099280139
		5 0 0.2687500784656181 1 0.00070862854933360204 5 0.0096936829620531857 
		9 0.62033440472750667 10 0.10051320529548856
		5 0 0.22323315891756379 1 0.00070261622214296427 5 0.00072729763602673574 
		9 0.7294183275361219 10 0.04591859968814474
		5 0 0.001709971856897389 1 4.6375316644167506e-05 5 8.594677937413132e-05 
		9 0.49907885500615035 10 0.49907885104093402
		5 0 0.0032137596522018078 1 7.9181919939783177e-05 5 0.00021226684115806921 
		9 0.49824741279227658 10 0.49824737879442382
		5 0 0.0051856305680455508 1 0.00012439719263543505 5 0.00037794610777535189 
		9 0.49715609614797418 10 0.4971559299835695
		5 0 0.0024872093667220943 1 8.2594784697696499e-05 5 0.00020246181607019728 
		9 0.49861401247486664 10 0.49861372155764327
		5 0 0.00054332208565229792 1 2.1104705383906206e-05 5 1.6949515939549804e-05 
		9 0.49970969966075113 10 0.49970892403227302
		5 0 0.00089948592093611372 1 3.5611088590647528e-05 5 4.5229660708939454e-05 
		9 0.49950983666488213 10 0.49950983666488213
		5 0 0.0015523430259854899 1 5.3495343638320702e-05 5 0.00011427245631001479 
		9 0.49913994598530126 10 0.49913994318876487
		5 0 0.003438169353014389 1 0.00010472362768555213 5 0.00028865253659499589 
		9 0.49808425463369743 10 0.49808419984900754
		5 0 0.001536757404836629 1 5.7935574599718236e-05 5 0.00013348984424908853 
		9 0.49913606748328082 10 0.49913574969303381
		5 0 0.00044781165293214341 1 1.9218476854585202e-05 5 1.638726248614793e-05 
		9 0.49975861171547808 10 0.4997579708922491
		5 0 0.0006560756168165683 1 2.9910218374425513e-05 5 2.9369580680878022e-05 
		9 0.49964232229206407 10 0.49964232229206407
		5 0 0.00090104834681252683 1 3.6242163511019628e-05 5 6.3343001522679247e-05 
		9 0.49949968324407684 10 0.49949968324407684
		5 0 0.0021202671445717373 1 7.498151632306638e-05 5 0.00019238245834134313 
		9 0.49880618837161483 10 0.49880618050914893
		5 0 0.00090364897331461473 1 3.5920429511886332e-05 5 7.8521309928626047e-05 
		9 0.4994911241263032 10 0.49949078516094164
		5 0 0.00033512592392473368 1 1.4934255875881298e-05 5 1.3158035642584992e-05 
		9 0.49981861824781115 10 0.49981816353674552
		5 0 0.76391438741474726 5 0.024827534296183437 9 0.15561572584806593 
		12 0.040624040246344507 16 0.015018312194658911
		5 0 0.59710928919129702 5 0.31095910163856011 9 0.010036150333130656 
		12 0.048750141954167769 16 0.033145316882844542
		5 0 0.17549503833528277 5 0.74315176037806752 6 0.044500283591191653 
		12 0.021363957035128646 16 0.01548896066032944
		5 0 0.58481063262248933 5 0.30311139531737508 9 0.034175040730737523 
		12 0.043935091045399333 16 0.03396784028399881
		5 0 0.71326131713024277 5 0.10259063755995565 9 0.10867644244648911 
		12 0.049605180740731128 16 0.025866422122581455
		5 0 0.34455435622664321 1 0.00040449836130550194 5 0.00045642232947774018 
		9 0.64870507879397465 10 0.0058796442885988096
		5 0 0.404655315291163 1 0.00035540560284050439 5 0.0055392437419513564 
		9 0.57713002702415317 10 0.012320008339891981
		5 0 0.37279326909910709 1 0.00055997271633277516 5 0.014198585417777285 
		9 0.58135309140575264 10 0.031095081361030324
		5 0 0.3821956925414165 1 0.00039365631387614435 5 0.0049198917974244919 
		9 0.6028553944753704 10 0.0096353648719126189
		5 0 0.36886536374844137 1 0.00039368561849638167 5 0.001416201632819661 
		9 0.62480335714315494 10 0.004521391857087712
		5 0 0.73250721615418457 1 0.0018741154488210931 5 0.0082146923345095824 
		9 0.25668204877467998 11 0.00072192728780499807
		5 0 0.77930720830094979 5 0.14310387080971174 6 0.00043744781929183537 
		9 0.077035879684062905 11 0.00011559338598365409
		5 0 0.73088904590602555 1 2.9655312757376692e-05 5 0.25092454713428303 
		6 0.00055926674538894674 9 0.017597484901545262
		5 0 0.75349939601716853 1 0.0009930310959549301 5 0.12491223964725565 
		6 0.0003602193553936262 9 0.12023511388422728
		5 0 0.71890119550800813 1 0.0038967013935253358 5 0.046402450502528753 
		9 0.2301037211152886 11 0.00069593148064906374
		5 11 0.014098436567301531 12 0.70352982321373625 13 0.0077031792227315685 
		16 0.24969126268571781 17 0.024977298310512982
		5 5 0.0030356069719323382 11 0.004720577644154963 12 0.56244237786619755 
		16 0.40320889909514646 17 0.026592538422568809
		5 11 0.0053955328838157565 12 0.62009113936078331 13 0.0022244503184646264 
		16 0.33523137473980119 17 0.037057502697135127
		5 11 0.0063443038615024856 12 0.69771861857915352 13 0.0027475303627750866 
		16 0.25697905296051071 17 0.036210494236058079
		5 11 0.0022588614917498952 12 0.63800369759218478 13 0.00096163520166241687 
		16 0.31351378315899459 17 0.045262022555408253
		5 0 0.0038865127826985695 11 0.0060406522563400851 12 0.5857440587842998 
		16 0.37660528903044371 17 0.027723487146217793
		5 11 7.4333334134569667e-07 12 0.0058931408740089345 16 0.20591749146552135 
		17 0.50866879240274376 18 0.27951983192438468
		5 11 4.5970636530467561e-07 12 0.0044558905262838139 16 0.17312095754133128 
		17 0.51493852151144281 18 0.30748417071457668
		5 11 7.9219122142417264e-07 12 0.004605861817038719 16 0.19403354988963517 
		17 0.50868239532953341 18 0.29267740077257109
		5 11 9.7642851367944374e-07 12 0.0055274350322545001 16 0.18843537125400395 
		17 0.50949338709228809 18 0.29654283019293975
		5 11 7.4320930248886518e-07 12 0.0069328682357376811 16 0.18859998668697586 
		17 0.51192430740435246 18 0.29254209446363133
		5 11 6.8074349686626644e-07 12 0.0087128928633300982 16 0.19777283319694364 
		17 0.51435987465966027 18 0.27915371853656906
		5 11 0.00079672052575993418 12 0.46423853076458255 16 0.4119057289463916 
		17 0.11987789927345389 18 0.0031811204898121465
		5 11 0.00086310133769427382 12 0.54809874400223801 16 0.32538251668225754 
		17 0.12246484212497007 18 0.0031907958528402613
		5 11 0.0017492678757767709 12 0.60065715449376633 16 0.27677133592813519 
		17 0.1176987904753279 18 0.0031234512269937751
		5 11 0.0014474289382215319 12 0.56098017732694327 16 0.31582288512351253 
		17 0.11856478254083765 18 0.0031847260704850251
		5 11 0.0007589483734618429 12 0.47533101144680168 16 0.40232562384559917 
		17 0.11836586100319041 18 0.003218555330946784
		5 11 0.00093022799165190127 12 0.43286526234545047 16 0.44780446202795443 
		17 0.11524486382764637 18 0.0031551838072967028
		5 0 0.19052949621802678 11 0.10354497782054979 12 0.50627303741849938 
		13 0.053340955101016919 16 0.14631153344190698
		5 0 0.14877671270030896 5 0.094168406572050972 11 0.0086259739821659635 
		12 0.44768873624222982 16 0.3007401705032442
		5 0 0.081694439639486888 5 0.14288011408083198 11 0.0036141569157457122 
		12 0.44548573190102758 16 0.3263255574629077
		5 0 0.20791663351852954 5 0.05974283882387206 11 0.040476207047193069 
		12 0.44308211762011995 16 0.24878220299028536
		5 0 0.12535638740596236 11 0.096348813347486295 12 0.53608311994568558 
		13 0.063147240367220192 16 0.17906443893364568
		5 0 0.66684261013798873 1 0.0003632798595457398 5 0.0026830723502920357 
		9 0.33000672045422996 11 0.00010431719794350674
		5 0 0.77021854631081743 1 5.6521954034326863e-05 5 0.042198277630824926 
		6 0.0001302693325842705 9 0.18739638477173901
		5 0 0.81155686831790341 1 1.9522080600020074e-05 5 0.10508121808117585 
		6 7.8100693797221172e-05 9 0.083264290826523535
		5 0 0.70956649642405023 1 0.00070976672564999335 5 0.039063392852964139 
		6 0.00012432646864549889 9 0.2505360175286902
		5 0 0.65774134298133691 1 0.0014084743940540911 5 0.013033259169802702 
		9 0.32767379491417215 11 0.00014312854063408781
		5 0 0.39553357518792792 1 0.00015601401565177624 5 0.00018793237213430151 
		9 0.60291549936777478 10 0.0012069790565112533
		5 0 0.44512764369767233 1 0.00015412937383259479 5 0.0028338241511154968 
		9 0.54903581631534748 10 0.0028485864620323847
		5 0 0.45633289554391615 1 0.00025129118437434132 5 0.0097920984352194481 
		9 0.52558840393019901 10 0.0080353109062909212
		5 0 0.43339975997238833 1 0.00015602749968998456 5 0.0032117437636648332 
		9 0.56123135220401621 10 0.0020011165602406571
		5 0 0.41175085512422793 1 0.00013372158505036197 5 0.00088608659207805858 
		9 0.58645856130881213 10 0.00077077538983142486
		5 0 0.76726964741046866 1 0.0047490813975792417 5 0.011775264712681826 
		9 0.21378550351168402 12 0.0024205029675862773
		5 0 0.73130734910192075 5 0.22859400910268557 9 0.033640135040865375 
		12 0.0038336005130748729 16 0.0026249062414533636
		5 0 0.55390628716380297 5 0.42672000289586798 6 0.013987183965176756 
		7 0.0021853019149378266 9 0.00320122406021467
		5 0 0.72933791766184952 5 0.1561460555833446 9 0.10584175310631216 
		12 0.0051800573817604133 16 0.0034942162667332879
		5 0 0.74863926317018881 1 0.0079731313489458822 5 0.050832009481046235 
		9 0.18857475911775073 12 0.0039808368820683244
		5 0 0.62727207280967179 9 0.10839822628264088 11 0.038359414370110229 
		12 0.17128623339314522 16 0.054684053144431949
		5 0 0.46087856900039131 5 0.25046935050875091 9 0.0063867249946332957 
		12 0.16837020395182753 16 0.11389515154439693
		5 0 0.22307679237964664 5 0.5537912549617201 6 0.0049657237592117881 
		12 0.12611789373733889 16 0.092048335162082537
		5 0 0.48869072589559948 5 0.19235650328333112 9 0.037409491050804176 
		12 0.16706907298076523 16 0.1144742067895001
		5 0 0.52088583984633019 5 0.070655947930242297 9 0.065965082595425537 
		12 0.23930867953322901 16 0.10318445009477291
		5 0 0.00053525498569366057 1 2.400384572075641e-05 5 2.9191003012063627e-05 
		9 0.49970577570501401 10 0.49970577446055942;
	setAttr ".wl[100:199].w"
		5 0 0.00078289442512259047 1 3.1080430221881138e-05 5 6.2136569592923557e-05 
		9 0.49956194486069772 10 0.49956194371436491
		5 0 0.00040134321463062113 1 1.671943002685668e-05 5 2.669303587111247e-05 
		9 0.49977763667041758 10 0.49977760764905388
		5 0 0.00102461303360921 1 3.8781843665005051e-05 5 9.1567414807741581e-05 
		9 0.49942252105571411 10 0.49942251665220389
		5 0 0.00056522458373218804 1 2.204187446669913e-05 5 4.7188419787547215e-05 
		9 0.49968288145236273 10 0.49968266366965081
		5 0 0.00025257208654100505 1 1.0676651906037301e-05 5 1.1965181478720403e-05 
		9 0.49986249489385659 10 0.49986229118621756
		5 0 0.00096719163665508071 1 3.741035294469781e-05 5 8.3644179527570179e-05 
		9 0.4994558769154363 10 0.4994558769154363
		5 0 0.0013420174477588873 1 5.0306200199364555e-05 5 0.00011500809109832102 
		9 0.49924633444200217 10 0.49924633381894118
		5 0 0.0024927605314957659 1 8.0559443560193538e-05 5 0.00020554152720740978 
		9 0.49861057734667275 10 0.49861056115106395
		5 0 0.0044989421078109239 1 0.00010932296002964176 5 0.00032111732202792006 
		9 0.4975353564188395 10 0.49753526119129199
		5 0 0.2521350378659537 1 0.00063930940124765252 5 0.011929915392639235 
		9 0.63062854484298514 10 0.10466719249717416
		5 0 0.32804083404072076 1 0.00060816905471223072 5 0.012541940839317697 
		9 0.61203360266808138 10 0.046775453397167939
		5 0 0.38695791175405225 1 0.00041730348807785488 5 0.0097237861913908492 
		9 0.58577154341972215 10 0.017129455146756845
		5 0 0.46743057400862914 1 0.0001589212993349237 5 0.0070176207120507079 
		9 0.52185273673355015 10 0.0035401472464350915
		5 0 0.58117556407164184 5 0.012067237999279296 6 6.5601084053539151e-05 
		9 0.405988465112325 10 0.00070313173270017285
		5 0 0.6802946308482466 1 0.0001048052758868 5 0.02398971611435401 
		9 0.29550357424505036 10 0.00010727351646222782
		5 0 0.77365829548115828 1 0.0001441288806283151 5 0.065090399407288099 
		6 0.00011598036270812372 9 0.16099119586821728
		5 0 0.77710486815187352 1 0.00013373330101574041 5 0.16494214748673916 
		6 0.00028229788840838742 9 0.057536953171963202
		5 0 0.65354238449541069 5 0.31111377712432414 6 0.0035912538345164754 
		9 0.028695587891911602 12 0.0030569966538371838
		5 0 0.38216099109070739 5 0.5486919152124573 6 0.01489855942186054 
		12 0.03066586564177861 16 0.023582668633195948
		5 0 0.36463938871218415 5 0.36720249247383496 9 0.0095089244392264818 
		12 0.14620858288439614 16 0.11244061149035815
		5 0 0.14897894027144051 5 0.10155266508984302 11 0.01380708540289898 
		12 0.43367986041821316 16 0.30198144881760441
		5 0 0.030739090523984984 5 0.033787843739120131 11 0.0079796095986826056 
		12 0.54182950260686313 16 0.38566395353134919
		5 0 0.00095286601385009817 1 3.7794479166982633e-05 5 8.7980544846706009e-05 
		9 0.49946075690974234 10 0.49946060205239384
		5 0 0.0014626693792253371 1 5.7774130354149031e-05 5 0.00013722672393744778 
		9 0.49917125332861467 10 0.4991710764378684
		5 0 0.0023469004561617302 1 8.5397901028453518e-05 5 0.00021288311132558758 
		9 0.49867748482391483 10 0.49867733370756945
		5 0 0.0039074465812222693 1 0.00011330753815543747 5 0.00030613909010620709 
		9 0.49783667387012626 10 0.49783643292038982
		5 0 0.29185860955278431 1 0.0008387006662757086 5 0.013757391332596638 
		9 0.59608195697650102 10 0.097463341471842393
		5 0 0.36188449291582098 1 0.0007392751813138118 5 0.013114150515635263 
		9 0.57634575200791072 10 0.047916329379319153
		5 0 0.41376913734340415 1 0.0004924113059988891 5 0.0094934191846909148 
		9 0.55806004681733434 10 0.018184985348571808
		5 0 0.46729149645915474 1 0.00020720406577017184 5 0.0052463875270103962 
		9 0.52285907205362991 10 0.0043958398944346925
		5 0 0.58442666834547086 1 8.5599728870660894e-05 5 0.0084690442627651311 
		9 0.40589932436254417 10 0.0011193633003492055
		5 0 0.74321014167862109 5 0.023747732510309594 6 6.535216631085084e-05 
		9 0.23286283478001304 10 0.00011393886474542504
		5 0 0.80015916143442722 5 0.059084181861078403 6 0.00010862884289786418 
		9 0.14061814514943491 10 2.9882712161684143e-05
		5 0 0.79204340036189458 5 0.15716811207095144 6 0.00025638976887913483 
		9 0.050512004515354626 11 2.0093282920313461e-05
		5 0 0.67747924545217131 5 0.30061801639705249 6 0.0027871418458045175 
		9 0.015794474983287229 12 0.0033211213216846384
		5 0 0.45108326559733314 5 0.48512180492682994 6 0.012002015059647937 
		12 0.030985750025662475 16 0.020807164390526618
		5 0 0.36387454549071147 5 0.30996986598372289 11 0.0023660853995157898 
		12 0.19341080617950912 16 0.13037869694654078
		5 0 0.074852849534299506 5 0.073335663570359255 11 0.0055575747530219365 
		12 0.50630079435661124 16 0.33995311778570803
		5 0 0.036887489302903038 5 0.04612633482819941 11 0.00540873060818236 
		12 0.54709443264717184 16 0.36448301261354349
		5 11 7.8121823418536141e-06 12 0.053009161011603669 16 0.3622102685473102 
		17 0.46259999944320762 18 0.1221727588155367
		5 11 9.0805510148520367e-06 12 0.065047072869163142 16 0.34582155496339173 
		17 0.46759389423951647 18 0.12152839737691368
		5 11 1.0818431957557888e-05 12 0.071253075583463221 16 0.34784608712963139 
		17 0.46225164346633801 18 0.11863837538860969
		5 11 1.5052142594121639e-05 12 0.063430203922296188 16 0.35728213349368393 
		17 0.45716612075036711 18 0.12210648969105865
		5 11 1.500965631916395e-05 12 0.051028132551570279 16 0.37246552691245449 
		17 0.45442369912353264 18 0.12206763175612333
		5 11 9.5022596325911017e-06 12 0.046681340940412944 16 0.37957330208902418 
		17 0.45452845998581221 18 0.11920739472511827
		5 11 4.1377353857608248e-05 12 0.18867362595342357 16 0.41376550954065039 
		17 0.35820259202204258 18 0.039316895130025863
		5 11 5.6356913702476242e-05 12 0.22094964343885748 16 0.38300679868406867 
		17 0.35716013913393135 18 0.038827061829440068
		5 11 8.1028708943491962e-05 12 0.2226244553348137 16 0.38785490259931693 
		17 0.35063949863419069 18 0.038800114722735174
		5 11 9.1559672475443219e-05 12 0.18915707760673714 16 0.42353900654050947 
		17 0.34792106268075595 18 0.039291293499521797
		5 11 7.6743830527597047e-05 12 0.15886791361729755 16 0.45663525751898171 
		17 0.34550069155699792 18 0.038919393476195302
		5 11 5.1239712552873729e-05 12 0.15988685671325806 16 0.45189360016662511 
		17 0.34927353055283678 18 0.038894772854727193
		5 0 0.00084942651006497671 1 2.2027619483240002e-05 5 1.8861597418764474e-05 
		9 0.50026324079435658 10 0.49884644347867652
		5 0 0.0039106368185231289 1 9.4145097773175204e-05 5 0.00025071820423551487 
		9 0.49846317577924321 10 0.49728132410022502
		5 0 0.0075896500184765778 1 0.00014103666966072142 5 0.00045613950800842725 
		9 0.49760919268311554 10 0.49420398112073899
		5 0 0.0088328611041516032 1 0.0001430152578826556 5 0.00053498902941738914 
		9 0.49657074081258956 10 0.49391839379595875
		5 0 0.0080859920671563813 1 0.00012431133507360669 5 0.00046713765489402162 
		9 0.4972253439348987 10 0.49409721500797743
		5 0 0.0059871226146425097 1 8.869045262669263e-05 5 0.00031207490941019084 
		9 0.49854881107746735 10 0.49506330094585327
		5 0 0.0037077491840900871 1 5.7209729573270891e-05 5 0.00014092067932274939 
		9 0.5009940565722647 10 0.4951000638347493
		5 0 0.013816595912457741 1 8.5782353365894244e-05 5 0.00011704571571063506 
		9 0.55733960035738561 10 0.42864097566108
		5 0 0.030945309189254706 1 0.00022008249320385444 5 0.0011066947655537635 
		9 0.53867469644810217 10 0.42905321710388561
		5 0 0.050466866018726478 1 0.00032704911043685166 5 0.0023844592435138152 
		9 0.54252964188938846 10 0.40429198373793446
		5 0 0.045647530627414931 1 0.00028161177895852081 5 0.0025788694940316759 
		9 0.52869217235808441 10 0.42279981574151038
		5 0 0.045007717332467563 1 0.00025584630236047905 5 0.0023876484189874116 
		9 0.53313956687277775 10 0.41920922107340675
		5 0 0.040615238783160708 1 0.00021755468552057261 5 0.0017313483454737622 
		9 0.54924440332059232 10 0.40819145486525266
		5 0 0.036512199317771638 1 0.00023861247339712965 5 0.00077196977625532451 
		9 0.59203457626921763 10 0.37044264216335815
		5 0 0.071458210830573993 5 0.030939958609168153 11 0.014515024625154858 
		12 0.53585161796720615 16 0.34723518796789682
		5 0 0.25930599890344225 5 0.086539520670685557 11 0.01599376039967881 
		12 0.39106941988862681 16 0.24709130013756661
		5 0 0.6493548925854733 5 0.20921265230949354 9 0.027202336639413092 
		12 0.068202117204113691 16 0.046028001261506343
		5 0 0.72830019132497359 5 0.2131496289712537 9 0.035156124276447445 
		12 0.01372368620897875 16 0.0096703692183464657
		5 0 0.77928309629336967 5 0.13598516009956152 9 0.081784184848981978 
		12 0.0017153393380380029 16 0.0012322194200489053
		5 0 0.78069928962741852 5 0.065579057656649134 6 0.00034277480820732334 
		9 0.15311060247547745 11 0.00026827543224764653
		5 0 0.71900247844576748 1 8.5259075200425807e-05 5 0.01687976351773977 
		6 8.8374554814595868e-05 9 0.26394412440647769
		5 0 0.60817121510042749 1 4.0842324214300893e-05 5 0.0033425272456724885 
		9 0.38837103621627067 10 7.43791134149711e-05
		5 0 0.47900216254591838 1 4.0433000167701401e-05 5 0.00087068079146823772 
		9 0.51979674786012986 10 0.0002899758023157878
		5 0 0.43940564138482413 1 9.220406522132476e-05 5 0.0012191863103937174 
		9 0.55794369316481818 10 0.0013392750747425583
		5 0 0.39377141381500375 1 0.00023777911237875615 5 0.002372795179978392 
		9 0.59635217814720454 10 0.0072658337454345771
		5 0 0.33774069413024932 1 0.00039448316655458642 5 0.003858331794735458 
		9 0.62997017952298373 10 0.028036311385476943
		5 0 0.23486453745604813 1 0.00048393040196738053 5 0.0044687163552219909 
		9 0.66296504173027415 10 0.097217774056488321
		5 0 0.0015939386174669745 1 4.8952561069466401e-05 5 0.00010998302589995129 
		9 0.4991238156870122 10 0.49912331010855143
		5 0 0.00084771673643251012 1 3.1071227684106121e-05 5 6.2314200750807728e-05 
		9 0.49952972066639617 10 0.49952917716873652
		5 0 0.00052005785864749023 1 1.9989733981755089e-05 5 3.7105604479879296e-05 
		9 0.49971166091086655 10 0.49971118589202429
		5 0 0.00035300773908397839 1 1.321221404844444e-05 5 2.4213336004433986e-05 
		9 0.49980491696228507 10 0.49980464974857791
		5 0 0.00060715572668893587 1 1.9494746693422313e-05 5 2.3788127480816783e-05 
		9 0.49967516343517804 10 0.49967439796395896
		5 0 0.00041340531249770576 1 1.5948963527883501e-05 5 1.8613543619240636e-05 
		9 0.49977632225636992 10 0.49977570992398523
		5 0 0.00030409145195381653 1 1.217613298141534e-05 5 1.3863346627117801e-05 
		9 0.49983514912025195 10 0.49983471994818585
		5 0 0.00025631827909685019 1 9.7354299306168093e-06 5 1.3554984833275932e-05 
		9 0.49986032172338329 10 0.49986006958275586
		5 0 0.00039145730768643861 1 1.4896310125274928e-05 5 2.9937837249892634e-05 
		9 0.49978189064727163 10 0.49978181789766674
		5 0 0.00092633716390482001 1 3.5173703680856453e-05 5 8.5696848931688849e-05 
		9 0.4994764053599981 10 0.49947638692348445
		5 0 0.0018699067315058318 1 6.8296485944006956e-05 5 0.00017568264772324389 
		9 0.49894306533865868 10 0.49894304879616824
		5 0 0.003034824689020429 1 0.00010020489980598461 5 0.00027104831591824135 
		9 0.4982969876427521 10 0.49829693445250328
		5 0 0.0045502215759432481 1 0.00012113992972387394 5 0.00035424638621896556 
		9 0.49748727645014229 10 0.4974871156579716
		5 0 0.0079891062018444502 1 0.00014392206988970735 5 0.0005047045484244052 
		9 0.49641589313882295 10 0.49494637404101854
		5 0 0.040815233464276089 1 0.00027809480241448343 5 0.002298608200247616 
		9 0.52373976772778108 10 0.43286829580528075
		5 0 0.25381781912933365 1 0.00074452799676643744 5 0.014480937915640344 
		9 0.60715473625758232 10 0.12380197870067723
		5 0 0.33526231524500288 1 0.00074357442358993114 5 0.016178891030817752 
		9 0.58535012974748768 10 0.06246508955310176
		5 0 0.40049523504274059 1 0.00055440270386401629 5 0.013716204968711652 
		9 0.55965457420032017 10 0.025579583084363578
		5 0 0.46653711192927183 1 0.00025489699104471017 5 0.0090440826568341792 
		9 0.51717267323753013 10 0.0069912351853192211
		5 0 0.56861152920271474 5 0.011164696146335253 6 9.7896950675264733e-05 
		9 0.41831813955735997 10 0.0018077381429147472
		5 0 0.75577427217277982 5 0.029665640757852774 6 5.9514656742926643e-05 
		9 0.21430525172261397 10 0.00019532069001039826
		5 0 0.82355204668349613 5 0.074530932227548724 6 5.8157149596773824e-05 
		9 0.10183444274132133 10 2.4421198037062554e-05;
	setAttr ".wl[200:299].w"
		5 0 0.76805968578800232 5 0.20872312165357157 6 0.00035225106152175193 
		7 5.6963602285861641e-06 9 0.022859245136675713
		5 0 0.62451402397364741 5 0.36341423032446735 6 0.0072634004447795341 
		7 0.0012069371430927923 9 0.0036014081140129262
		5 0 0.20484580427232385 5 0.70858973594972241 6 0.031109405346259368 
		12 0.032512283351005998 16 0.022942771080688339
		5 0 0.24419215601657962 5 0.5384200152439037 6 0.0036844375024285814 
		12 0.12631677885391776 16 0.087386612383170387
		5 0 0.081365911110126851 5 0.18729343377817437 11 0.0028710655006544844 
		12 0.43042912037460307 16 0.29804046923644112
		5 0 0.020208726877673843 5 0.050752183371728335 11 0.0063041914839782444 
		12 0.55861493164458698 16 0.36411996662203244
		5 0 0.0069907331042682978 11 0.028075694569431073 12 0.66117121335879026 
		13 0.013186644776959341 16 0.29057571419055112
		5 0 0.08876408401924947 11 0.069403528670283307 12 0.58064352263940922 
		13 0.030277078342932646 16 0.23091178632812531
		5 0 0.26189465145257779 9 0.036769593642856667 11 0.065659836487695245 
		12 0.4579493371027632 16 0.17772658131410707
		5 0 0.63684681495625384 5 0.044211537287498853 9 0.090348179627931 
		12 0.15698328905584646 16 0.071610179072469873
		5 0 0.75632320443840284 5 0.063436599723090598 9 0.11695721380487425 
		12 0.041122598794039941 16 0.022160383239592345
		5 0 0.76822518510532145 1 0.0028840266616074551 5 0.027671699842191588 
		9 0.19697529443323944 12 0.0042437939576399656
		5 0 0.72901272513829574 1 0.00075054772175385878 5 0.015771478318200898 
		9 0.25399301072086677 11 0.00047223810088270094
		5 0 0.64811294284621046 1 0.00011285294661413422 5 0.0022486167734975925 
		9 0.34947930325983917 11 4.628417383870004e-05
		5 0 0.57588374855714564 1 2.8660713785976279e-05 5 0.00038938264481515171 
		9 0.42368220076939461 10 1.600731485844406e-05
		5 0 0.49742483679660759 1 2.07331185508339e-05 5 0.00016653358566983697 
		9 0.50231580847418333 10 7.2088024988245582e-05
		5 0 0.43649461058779493 1 5.3731380785620291e-05 5 0.00017226138226795012 
		9 0.56287890602063861 10 0.00040049062851290929
		5 0 0.38463844089030069 1 0.00018701821599161121 5 0.00044330311274487131 
		9 0.61211385315472011 10 0.0026173846262426861
		5 0 0.34304373169060837 1 0.0003538181955318315 5 0.00081342991115384341 
		9 0.6458151018809456 10 0.0099739183217603493
		5 0 0.27414055158144518 1 0.00047540582165609416 5 0.0010542753148310828 
		9 0.68968867395766753 10 0.034641093324399908
		5 0 0.0021763729799291931 1 3.5594401800472077e-05 5 6.6295039377672985e-05 
		9 0.49886119808720414 10 0.49886053949168846
		5 0 0.0013561100552756437 1 2.6642207981683338e-05 5 4.7934127513653328e-05 
		9 0.49928501377072848 10 0.49928429983850064
		5 0 0.0020720018675734557 1 3.6271302026644816e-05 5 5.5123141752852065e-05 
		9 0.49891873727197533 10 0.49891786641667174
		5 0 0.0012198735132495035 1 2.5888096413704498e-05 5 3.8100135245260762e-05 
		9 0.49935853713406009 10 0.49935760112103156
		5 0 0.0021570037708901878 1 3.5633314102030677e-05 5 6.51927994284186e-05 
		9 0.49887142078825936 10 0.49887074932732012
		5 0 0.001364784789254304 1 2.6910501789456979e-05 5 4.7811612980890331e-05 
		9 0.49928061276115759 10 0.49927988033481774
		5 0 0.0021306115030763364 1 3.7595473464443529e-05 5 5.5872348815335831e-05 
		9 0.49888840174057586 10 0.49888751893406813
		5 0 0.0013254119431375215 1 2.7573541084456674e-05 5 3.9139968356665517e-05 
		9 0.49930441330663322 10 0.499303461240788
		5 0 0.024248592143309541 1 0.00015076935282981791 5 0.00019009208149153913 
		9 0.62403815404295004 10 0.35137239237941892
		5 0 0.065321711047541794 1 0.00022629476083278264 5 0.00048928717886683501 
		9 0.65047794518493174 10 0.28348476182782695
		5 0 0.052143964397790316 1 0.00023031069974321913 5 0.0010910943061830717 
		9 0.60010704354083455 10 0.3464275870554489
		5 0 0.0819073855260634 1 0.0003742031270587976 5 0.0027570521482457532 
		9 0.59988205558544117 10 0.31507930361319092
		5 0 0.11452813284705227 1 0.00052434302514041712 5 0.00544126049184102 
		9 0.59498494948896341 10 0.28452131414700277
		5 0 0.094703515790216186 1 0.00044879756967358193 5 0.0054419737296601857 
		9 0.571993441019645 10 0.3274122718908053
		5 0 0.10036338206356271 1 0.00044031846274694746 5 0.0058003992319367237 
		9 0.57633543681913701 10 0.31706046342261662
		5 0 0.098213475126299674 1 0.00040021678913341178 5 0.0051995416980517 
		9 0.58601906833569539 10 0.31016769805081962
		5 0 0.091825555039721035 1 0.00037179213962896287 5 0.0036278894362442465 
		9 0.61908906577692491 10 0.28508569760748081
		5 0 0.090386528692930193 1 0.0004779797409093668 5 0.0015519281829833277 
		9 0.68157304570997379 10 0.22601051767320324
		5 0 0.15515217901803804 1 0.00068260075010932297 5 0.00063347992678792933 
		9 0.76770315017729263 10 0.075828590127771947
		5 0 0.17540495636570375 1 0.0004589421784232774 5 0.0009224311819377803 
		9 0.72177020131733538 10 0.1014434689565996
		5 0 0.12019003068108867 1 0.00036330832323822797 5 0.002349986687439588 
		9 0.65955675991464391 10 0.21753991439358955
		5 0 0.16393400940829428 1 0.00055112618236694162 5 0.0055961618652083135 
		9 0.63718893836436641 10 0.19272976417976401
		5 0 0.20166931928402165 1 0.00072213817175375856 5 0.0097801744178666866 
		9 0.61395773015518107 10 0.17387063797117686
		5 0 0.17057211189842708 1 0.00063002711790011699 5 0.0099427609551323362 
		9 0.60481869460267357 10 0.21403640542586699
		5 0 0.17147988919356302 1 0.00059580165907339923 5 0.010039418773090579 
		9 0.60967542735747848 10 0.20820946301679458
		5 0 0.16899749719921908 1 0.00054189104959586059 5 0.0087370577084314102 
		9 0.62585882173289142 10 0.19586473230986234
		5 0 0.16703580791804207 1 0.00054600720090523791 5 0.0059421929786756186 
		9 0.66439563747554353 10 0.16208035442683347
		5 0 0.17072327090072084 1 0.00074116648265923097 5 0.0024166343506663098 
		9 0.71361808158597506 10 0.11250084667997859
		5 0 0.081618891221521814 5 0.71588760423893893 6 0.16000136601886761 
		7 0.036873897502911833 8 0.0056182410177598166
		5 0 0.19725842616374908 5 0.68011706236016456 6 0.095542871413973704 
		7 0.023501402485485531 8 0.0035802375766271614
		5 0 0.31269792626424653 5 0.57077453947231738 6 0.08949427857704996 
		7 0.02198671676791876 8 0.0050465389184674225
		5 0 0.39535260396934918 5 0.54569936960770937 6 0.046676939665430524 
		7 0.010204947838499281 9 0.0020661389190115851
		5 0 0.28274218035221921 5 0.61449372533419289 6 0.08334929052889542 
		7 0.016318567045074294 12 0.0030962367396183896
		5 0 0.11474644764647379 5 0.72609379659081952 6 0.12970202068618455 
		7 0.025397058549805573 8 0.0040606765267165402
		5 0 0.45819067309173078 5 0.49952519592589856 6 0.034643234619042618 
		7 0.0059607197041832427 12 0.0016801766591447646
		5 0 0.39048174549913728 5 0.5340613693836036 6 0.058380196669742673 
		7 0.014474052835961832 8 0.0026026356115545933
		5 0 0.0213289912858622 5 0.51504841492674325 6 0.30157397832659011 
		7 0.12028400124193302 8 0.041764614218871364
		5 0 0.05900371806635174 5 0.55072445026147776 6 0.24489031737623007 
		7 0.10818902606475732 8 0.037192488231183173
		5 0 0.1244503187267518 5 0.53323095493183092 6 0.22092980299748455 
		7 0.082326729308427257 8 0.039062194035505315
		5 0 0.15287788676686101 5 0.55070815895591241 6 0.18946723013617861 
		7 0.076371867110323052 8 0.03057485703072492
		5 0 0.10367920769269447 5 0.52033912788839454 6 0.25692446812647174 
		7 0.092241754745376436 8 0.026815441547062936
		5 0 0.033724751770884021 5 0.52558809920984351 6 0.29975217100510143 
		7 0.1036474596493891 8 0.037287518364782016
		5 0 0.22300243163064276 5 0.56929948391355534 6 0.15323159194182606 
		7 0.045000394842983453 8 0.0094660976709925876
		5 0 0.16265395071766128 5 0.54424774398668907 6 0.19110012464991735 
		7 0.070606548715697243 8 0.031391631930035011
		5 0 0.0062629999309512466 5 0.2886652079848247 6 0.32852394010711117 
		7 0.23327599434836635 8 0.14327185762874653
		5 0 0.0092082835097329653 5 0.3030939267529098 6 0.30495787966846372 
		7 0.24192650315189199 8 0.14081340691700153
		5 0 0.039436314378413682 5 0.32109894065744371 6 0.27572122497432744 
		7 0.21367246755665992 8 0.15007105243315527
		5 0 0.029581773323269382 5 0.31562622386322248 6 0.27874942640189804 
		7 0.23175389397989588 8 0.14428868243171419
		5 0 0.021738494370286136 5 0.27522153403587085 6 0.33094921825259083 
		7 0.23753481303410948 8 0.13455594030714293
		5 0 0.011022296646083661 5 0.25568575718936037 6 0.33633282230057826 
		7 0.24325750129064685 8 0.15370162257333078
		5 0 0.062007227667180656 5 0.40171493711717232 6 0.3025657663776119 
		7 0.15886279785463239 8 0.07484927098340266
		5 0 0.039741684978158796 5 0.32978834429838555 6 0.28164683275227825 
		7 0.20322166356167351 8 0.14560147440950394
		5 0 0.00055109510621891716 5 0.045739621490194081 6 0.13020964559433837 
		7 0.43056025216055382 8 0.39293938564869479
		5 0 0.00041995976744695784 5 0.063969271679751832 6 0.14976815614221289 
		7 0.4191891337142144 8 0.36665347869637371
		5 0 0.0024976293693316593 5 0.060037990754247747 6 0.12140791431251204 
		7 0.42601725487418235 8 0.39003921068972608
		5 0 0.0017938780016677838 5 0.08053747649376615 6 0.16257659890959927 
		7 0.4086525719943796 8 0.34643947460058711
		5 0 0.0010234390766165255 5 0.046254200098016812 6 0.14637658978203921 
		7 0.42997494297215128 8 0.37637082807117617
		5 0 0.00069217606056265057 5 0.035684809472731081 6 0.12500435865991733 
		7 0.43894308033502222 8 0.39967557547176663
		5 0 0.0059503927469562968 5 0.11860055226684142 6 0.21959121993342584 
		7 0.36189150747719073 8 0.29396632757558561
		5 0 0.0029977626296487049 5 0.067574837850318023 6 0.13700413210247281 
		7 0.41072716603898135 8 0.38169610137857923
		5 0 0.087187180226265149 11 0.12538405012700773 12 0.57269730235049299 
		13 0.083929766959272026 16 0.1308017003369619
		5 0 0.26669573847185046 11 0.10915365569260338 12 0.43701718780895216 
		13 0.072963221409452411 16 0.11417019661714173
		5 0 0.014301453875786995 11 0.12822711329045949 12 0.66059549460991585 
		13 0.07846703724796078 16 0.11840890097587685
		5 0 0.063562386108697716 11 0.13827322475013745 12 0.59153943372993845 
		13 0.080698633432506842 16 0.12592632197871947
		5 0 0.0096208651561393906 11 0.1071452126587628 12 0.70015646596721393 
		13 0.070045661905984741 16 0.11303179431189908
		5 0 0.55068014420274036 1 0.00023135375632680265 5 0.00095591208233028609 
		9 0.44809725796842215 10 3.5331990180394781e-05
		5 0 0.43655053460153997 1 9.6129931902137517e-05 5 0.00059156697371160762 
		9 0.56248439434543185 10 0.00027737414741436944
		5 0 0.62152865795086665 1 0.00020728085514690273 5 0.00054899742022976122 
		9 0.37769018379034236 11 2.4879983414432326e-05
		5 0 0.4955332655600091 1 4.8358675205823829e-05 5 6.5440603983309218e-05 
		9 0.50426872395762579 10 8.4211203175972124e-05
		5 0 0.38353196004362156 1 0.00024262729324322807 5 0.00040634340080772532 
		9 0.61424840524147095 10 0.0015706640208564713
		5 0 0.42256069894301684 1 9.7675973661817542e-05 5 8.1356468817644589e-05 
		9 0.57675932038258337 10 0.00050094823192028102
		5 0 0.28768964963528632 1 0.0009268775887535471 5 0.0012678156686238219 
		9 0.68399757776443693 10 0.026118079342899357
		5 0 0.20763147291021711 1 0.000938132708444444 5 0.0012772328002648727 
		9 0.72015267380241055 10 0.070000487778663037
		5 0 0.31242289161713477 1 0.00062745764021387659 5 0.00049991346672406656 
		9 0.67441648803265286 10 0.012033249243274547
		5 0 0.251580563752616 1 0.00080975108992045134 5 0.00062574954231373156 
		9 0.71523539363789601 10 0.031748541977253825
		5 0 0.12021522773184549 1 0.00068446817886931024 5 0.00090187724097969544 
		9 0.7214854538136789 10 0.15671297303462664
		5 0 0.171623455478464 1 0.00085150582961184137 5 0.0006014137975853648 
		9 0.76882237312571999 10 0.058101251768618793
		5 0 0.00097541764994024183 1 3.512200552601421e-05 5 3.6983628198858338e-05 
		9 0.4994762383581674 10 0.4994762383581674
		5 0 0.0007008270943613422 1 3.1657263393696074e-05 5 2.653684271619509e-05 
		9 0.49962048939976433 10 0.49962048939976433
		5 0 0.00062300000860368359 1 2.265283176755386e-05 5 1.6150832040630482e-05 
		9 0.49966951603092935 10 0.49966868029665878;
	setAttr ".wl[300:399].w"
		5 0 0.00048138505623655098 1 2.1623799910624395e-05 5 1.5650658178106181e-05 
		9 0.49974101480451188 10 0.49974032568116283
		5 0 0.00055364336669897157 1 2.68207020943031e-05 5 2.1298077494294241e-05 
		9 0.49969911892685626 10 0.49969911892685626
		5 0 0.00038633323918396261 1 1.8419489628787473e-05 5 1.3767428656787226e-05 
		9 0.49979100115892783 10 0.4997904786836026
		5 0 0.73196051440370169 9 0.14110627151905886 11 0.025886697610074699 
		12 0.080014227995592255 16 0.021032288471572489
		5 0 0.77736454977649683 1 0.0074745488087672339 5 0.010179996643892455 
		9 0.19632466263107642 12 0.0086562421397669929
		5 0 0.7704949162972059 1 0.011044167451943299 5 0.039321832041046063 
		9 0.16422771227403163 12 0.014911371935772999
		5 0 0.72959257790976251 1 0.007795432870260543 5 0.023038896429645041 
		9 0.23785588717848616 11 0.0017172056118458338
		5 0 0.35440287398984754 1 0.0003666122602350111 5 0.00029137591386931401 
		9 0.64127473705366445 10 0.0036644007823836708
		5 0 0.33789246229471087 1 0.0006451933235888241 5 0.0008970118502953571 
		9 0.65193154746746296 10 0.0086337850639419799
		5 0 0.74704443601756165 1 0.0035766313549617829 5 0.005214895433446015 
		9 0.24300731697953676 11 0.0011567202144937996
		5 0 0.68420384811521651 1 0.00087895042445519287 5 0.0018821433038376618 
		9 0.31284367658388085 11 0.00019138157260979304
		5 0 0.68537000209207 1 0.0039732895905585678 5 0.014573695027960369 
		9 0.29554838437496095 11 0.00053462891445012011
		5 0 0.61861469569221794 1 0.00089868186943049041 5 0.0030699948223283889 
		9 0.37734807197594211 11 6.8555640081022172e-05
		5 0 0.54834119337683518 9 0.097385122313636566 11 0.064739385097790508 
		12 0.23230603141497744 16 0.057228267796760324
		5 0 0.72839275928999059 5 0.049612277640027298 9 0.11879909286505154 
		12 0.074005810987861104 16 0.029190059217069367
		5 0 0.00038042541689404179 1 1.8285945203692254e-05 5 1.6599715654190085e-05 
		9 0.49979234823977614 10 0.49979234068247191
		5 0 0.00024827044973841018 1 1.1430256122975331e-05 5 1.1123389474273902e-05 
		9 0.49986462809054183 10 0.49986454781412226
		5 0 0.00026910585439270769 1 1.2709865670097744e-05 5 1.0008330290235486e-05 
		9 0.49985423122392331 10 0.49985394472572381
		5 0 0.001270098153281441 1 2.7554014094317413e-05 5 2.0556305526696439e-05 
		9 0.50234577952917925 10 0.49633601199791838
		5 0 0.0023786937507556329 1 4.5871746895828139e-05 5 6.2089287722505389e-05 
		9 0.50150074697869917 10 0.49601259823592703
		5 0 0.0092301768519368436 1 9.2482334636681673e-05 5 8.4815120946991117e-05 
		9 0.56714842996065051 10 0.42344409573182906
		5 0 0.016773856007985709 1 0.00015471012548022171 5 0.00020569088412289842 
		9 0.55539117775550129 10 0.42747456522690991
		5 0 0.01402845253873552 1 0.00015016666562623517 5 0.0001251833373370759 
		9 0.63189900820217559 10 0.35379718925612552
		5 0 0.056037616815374773 1 0.0003919523456922598 5 0.00050316407083962297 
		9 0.65768520126036167 10 0.2853820655077316
		5 0 0.026775615968785301 11 0.10319317563309455 12 0.65120228394604396 
		13 0.17823148627467436 16 0.040597438177401829
		5 0 0.042644410078697549 1 0.021040725535974216 11 0.042215667372861462 
		12 0.60973337722512422 13 0.28436581978734271
		5 0 0.03096570077764426 1 0.016911560902127969 11 0.0077274642611722053 
		12 0.53841814663726162 13 0.40597712742179409
		5 0 0.041962764778819522 1 0.050657287156252916 11 0.013771097701063951 
		12 0.50111342944771275 13 0.39249542091615075
		5 0 0.03726793718171964 11 0.10951924550465633 12 0.62273654414351609 
		13 0.18842373366029985 16 0.042052539509807974
		5 0 0.59558472682854136 1 0.0095580920854089254 2 4.3517261942238255e-05 
		5 0.00012851350968821304 9 0.39468515031441931
		5 0 0.62486889997152706 1 0.029473845641805569 2 9.8503666078781312e-05 
		9 0.34545966894789615 10 9.9081772692534816e-05
		5 0 0.74234436631758594 1 0.074062342853779203 2 0.00011144944341819348 
		9 0.18333861983350472 10 0.00014322155171203209
		5 0 0.61405724686267327 1 0.023423912579632989 2 8.1864724428087058e-05 
		9 0.36233186680991203 10 0.00010510902335349943
		5 0 0.58297050975255638 1 0.0019677292655583055 5 4.4447035246961535e-05 
		9 0.41499847763726716 10 1.8836309371086787e-05
		5 0 0.0049983483659544583 11 0.072688441195647782 12 0.69867837718201653 
		13 0.19499871902556939 16 0.028636114230811808
		5 0 0.49565265606404907 1 0.0079618549558301121 2 4.1817883399729063e-05 
		9 0.49608809553973765 10 0.00025557555698346225
		5 0 0.5220183406896266 1 0.021203657267337462 2 0.00010872204879847369 
		9 0.45604276741823935 10 0.00062651257599809478
		5 0 0.53612083622010764 1 0.033567040841521747 2 0.00018800372069968516 
		9 0.42895509169239149 10 0.0011690275252794913
		5 0 0.41667255885710214 1 0.0077462999486226126 2 6.7184157285647274e-05 
		9 0.57502231843997709 10 0.000491638597012489
		5 0 0.44497685248848901 1 0.00034931960331766032 5 3.0834098974139461e-05 
		9 0.55447274110854095 10 0.00017025270067823044
		5 0 0.33148166116992533 1 0.005795995950844084 5 0.00040298320245266334 
		9 0.6466831999653837 10 0.015636159711394072
		5 0 0.3203545559851716 1 0.016849576269370017 2 0.00049143990134995277 
		9 0.63425440757042129 10 0.028050020273687012
		5 0 0.28678774323434747 1 0.03386379441564983 2 0.0011251427367989762 
		9 0.607974152423016 10 0.070249167190187811
		5 0 0.33965107563065977 1 0.015195592647640156 2 0.00050436670096079171 
		9 0.60932297158279125 10 0.035325993437948171
		5 0 0.30824371783576154 1 0.0017017737396688793 5 0.00044925857658162821 
		9 0.6698138655221052 10 0.019791384325882625
		5 0 0.2703677169188306 1 0.0063236601318278447 5 0.0005033440897523622 
		9 0.67532328350428394 10 0.047481995355305381
		5 0 0.24261895046864915 1 0.015576428986029517 2 0.00052825981388478715 
		9 0.66321025141244638 10 0.078066109318990065
		5 0 0.21274767195301852 1 0.027297430755716889 2 0.0010310037102060242 
		9 0.617916060695195 10 0.14100783288586355
		5 0 0.29714145925309038 1 0.017793591944825049 2 0.00069458459053218797 
		9 0.57902016140486889 10 0.10535020280668343
		5 0 0.24571910752387435 1 0.0018882595339242902 5 0.00053739686074017075 
		9 0.7018492193724315 10 0.050006016709029717
		5 0 0.0017526509885560494 1 0.00012992255076534073 5 3.6620222311145911e-05 
		9 0.50801130443755027 10 0.49006950180081715
		5 0 0.0029366385505155751 1 0.00029760806316278272 5 5.5496265116339552e-05 
		9 0.5227039121842546 10 0.47400634493695065
		5 0 0.0054835560980604475 1 0.00064779896401197191 5 9.4025865296749829e-05 
		9 0.53563205829180716 10 0.45814256078082377
		5 0 0.0038935636023763442 1 0.00045637952720757515 5 8.9310232251923569e-05 
		9 0.5122536259560343 10 0.48330712068212978
		5 0 0.00068758607793491353 1 3.5493176433346293e-05 5 1.8189697577496514e-05 
		9 0.49962970452035393 10 0.49962902652770036
		5 0 0.0011519856801959511 1 9.0713346120622842e-05 5 3.0955653541196683e-05 
		9 0.50195416564045547 10 0.49677217967968662
		5 0 0.0019508520465543427 1 0.00020652799738283916 5 4.5799850846692499e-05 
		9 0.50981049341467155 10 0.48798632669054454
		5 0 0.0041092868499547786 1 0.00052355664994035772 5 8.5703769106844322e-05 
		9 0.52861504611690413 10 0.46666640661409381
		5 0 0.0024978767567854511 1 0.00030979038864226193 5 6.6508568009189807e-05 
		9 0.50338985268831005 10 0.493735971598253
		5 0 0.00056691842975090047 1 3.4308381782325505e-05 5 1.7197533463773747e-05 
		9 0.49969107117579808 10 0.49969050447920482
		5 0 0.00083981232639125528 1 6.1682506861647675e-05 5 2.5072035565995969e-05 
		9 0.4999619791073221 10 0.49911145402385909
		5 0 0.0012802262642123666 1 0.00012804230961076379 5 3.3105583210553611e-05 
		9 0.50234889348588141 10 0.49620973235708493
		5 0 0.0028676529548415071 1 0.00037634509106791443 5 6.7445086117333495e-05 
		9 0.51544080384622848 10 0.48124775302174472
		5 0 0.0015272419371702526 1 0.00018702629241129867 5 4.2553790747397978e-05 
		9 0.49981928049705332 10 0.49842389748261762
		5 0 0.000434973563150844 1 2.8156976071128402e-05 5 1.3941755377227242e-05 
		9 0.49976166931622956 10 0.49976125838917129
		5 0 0.74577816543843334 1 0.047618169656584206 9 0.14996990050164094 
		12 0.041291079505961087 13 0.015342684897380306
		5 0 0.53772490189354405 1 0.38569832274282373 9 0.0083945007946829193 
		12 0.038275417239067043 13 0.029906857329882495
		5 0 0.31718965676771255 1 0.59810545094821788 2 0.047938264557390711 
		12 0.020037866958598986 13 0.016728760768079866
		5 0 0.53336799725887651 1 0.35142588654976303 9 0.037922711821069502 
		12 0.045146440423678436 13 0.03213696394661246
		5 0 0.65256833077140097 1 0.15314727435804404 9 0.11810273134796309 
		12 0.050845935686813788 13 0.025335727835778265
		5 0 0.34079009543300448 1 0.0011753061083155749 5 0.00028429010870518025 
		9 0.65167457206020285 10 0.006075736289771998
		5 0 0.3446487716435998 1 0.01021029407104268 2 0.00027521697002785427 
		9 0.63619546900182233 10 0.0086702483135074771
		5 0 0.34061228855313186 1 0.033389390920789436 2 0.00090928875096952068 
		9 0.59850602261581565 10 0.026583009159293642
		5 0 0.36997040514057172 1 0.013275048375915881 2 0.00029452811080022805 
		9 0.60806541421737526 10 0.0083946041553368753
		5 0 0.36955552195371427 1 0.0039928303165271788 5 0.00021213617011783754 
		9 0.62209643645312906 10 0.0041430751065115378
		5 0 0.71342687611501732 1 0.021422825692107662 5 0.0011025437531240162 
		9 0.26335089843819043 11 0.00069685600156062818
		5 0 0.7400209699314042 1 0.19119731493196479 2 0.00057552408826305312 
		9 0.068139785148828319 11 6.6405899539712871e-05
		5 0 0.63222918726932265 1 0.35769978834366006 2 0.0009384715914782935 
		5 1.993496749746526e-05 9 0.0091126178280414444
		5 0 0.69650584935750937 1 0.20267086691269631 2 0.00061290072196284887 
		5 0.00049102504607395668 9 0.09971935796175746
		5 0 0.69232128863674125 1 0.083643537848608965 5 0.0016047008644454351 
		9 0.22168968479579768 11 0.00074078785440657264
		5 11 0.01502729712962407 12 0.68520110084041297 13 0.2707720703903409 
		14 0.023917547326424014 16 0.0050819843131978647
		5 0 0.0032447054669906966 11 0.0056994451361458637 12 0.54961635123436792 
		13 0.41439491188618316 14 0.027044586276312226
		5 11 0.0058835202119900077 12 0.58880283481733109 13 0.36852261461478314 
		14 0.03528011087648332 16 0.0015109194794125081
		5 11 0.0064605870059206592 12 0.66232101526970177 13 0.29547193699050361 
		14 0.033996558037813401 16 0.0017499026960606328
		5 11 0.0027703458454458518 12 0.6260800281619594 13 0.32543841509679267 
		14 0.045080111177078559 16 0.00063109971872361142
		5 0 0.0039496978204640798 11 0.0073377646566124138 12 0.58450697533741724 
		13 0.37554760363238426 14 0.028657958553121816
		5 11 1.8633816727660058e-06 12 0.0058329719040115342 13 0.21052548512405952 
		14 0.50366236456806068 15 0.27997731502219547
		5 11 9.5233534552111687e-07 12 0.0042278112756423845 13 0.18143000298234666 
		14 0.50624952351309294 15 0.30809170989357271
		5 11 1.6615149260477693e-06 12 0.0046738617463585302 13 0.19357624425154429 
		14 0.50847189365208068 15 0.29327633883509041
		5 11 1.6895930029703782e-06 12 0.0054215119953447532 13 0.18864099538340706 
		14 0.5087658327618394 15 0.29716997026640585
		5 11 1.154360871740156e-06 12 0.0067115797950589966 13 0.19626683739941003 
		14 0.50390441018628174 15 0.29311601825837735
		5 11 1.0590313155598161e-06 12 0.0083686207168948302 13 0.21248586447481027 
		14 0.49948075404854453 15 0.27966370172843491
		5 11 0.0010484558001168508 12 0.4497870277443401 13 0.42882586285424595 
		14 0.117173627625461 15 0.0031650259758362526
		5 11 0.00098133818486245326 12 0.52137933728594588 13 0.35951763147790611 
		14 0.11495114067577786 15 0.0031705523755077543
		5 11 0.0019296406145060327 12 0.5781065672237643 13 0.30558008666913089 
		14 0.11126652225392661 15 0.0031171832386723583
		5 11 0.0017129522579313044 12 0.54744432718348646 13 0.33136621763116336 
		14 0.11630690403581358 15 0.0031695988916052662
		5 11 0.0011477159811564875 12 0.47287327078845448 13 0.402304997654511 
		14 0.12047697644269754 15 0.0031970391331803305
		5 11 0.0013561951810371151 12 0.43318470434200007 13 0.44448038400416906 
		14 0.11783233707118794 15 0.0031463794016058149
		5 0 0.18497883516902514 11 0.10273634438399949 12 0.51253881283783875 
		13 0.16339232053295774 16 0.036353687076178857
		5 0 0.14011304862389257 1 0.13101435170766706 11 0.013628167199368652 
		12 0.40238891063867732 13 0.31285552183039433;
	setAttr ".wl[400:499].w"
		5 0 0.12636978282073361 1 0.096277573352442844 11 0.0059977894798150929 
		12 0.43082367923363224 13 0.34053117511337627
		5 0 0.18324707994022621 1 0.077116971233268175 11 0.04483492620015251 
		12 0.45558535767807556 13 0.2392156649482777
		5 0 0.11362321778182621 11 0.10196133603411711 12 0.5500814311253297 
		13 0.19472159290428567 16 0.039612422154441357
		5 0 0.65616454855146777 1 0.0082777231001760522 5 0.00020972432939996894 
		9 0.33525039509159255 11 9.7608927363719756e-05
		5 0 0.73541839468647263 1 0.065766335084793931 2 0.00017542427927943644 
		9 0.19861318084876053 10 2.6665100693531261e-05
		5 0 0.77616869553887158 1 0.16969617722273642 2 0.00011413171569875502 
		9 0.054000485088498987 10 2.0510434194380542e-05
		5 0 0.70816197154316696 1 0.075568459011181185 2 0.00021052268852085636 
		5 0.00028543198983426506 9 0.21577361476729678
		5 0 0.65693157549897552 1 0.027862608912718356 5 0.00050048851886849656 
		9 0.31456201640476517 11 0.00014331066467237986
		5 0 0.37316383684587745 1 0.00052072624049174978 5 0.00010716178986264583 
		9 0.62500091178883499 10 0.001207363334933159
		5 0 0.34743975895602197 1 0.0061456153454260334 2 0.00011094937601346473 
		9 0.64457007611445249 10 0.0017336002080860597
		5 0 0.40176613432657615 1 0.027501418168507315 2 0.00043224442019440735 
		9 0.56427884179767096 10 0.0060213612870512823
		5 0 0.42305166840564412 1 0.0098395540675700072 2 0.00011486737309768763 
		9 0.56522574848218032 10 0.0017681616715078598
		5 0 0.4121983408654975 1 0.0029416085998647413 5 6.7847969546148433e-05 
		9 0.58407758988629088 10 0.00071461267880066975
		5 0 0.74697773522797495 1 0.028351950828528909 5 0.0028020746147656007 
		9 0.21940980582254854 12 0.0024584335061819959
		5 0 0.68378400601710598 1 0.28310623860960216 9 0.027896515447087065 
		12 0.0029125637490154213 13 0.0023006761771894009
		5 0 0.42618500749172733 1 0.55269691636373641 2 0.015840808292637329 
		3 0.0032003970063303796 9 0.002076870845568552
		5 0 0.65111217646280595 1 0.23497947556975032 9 0.10527077392597815 
		12 0.0053560240033624648 13 0.0032815500381032838
		5 0 0.70913957484419177 1 0.089363772854893345 5 0.0036425768993557776 
		9 0.193811264232254 12 0.0040428111693049914
		5 0 0.61992861816962141 9 0.10838478753673172 11 0.037769873734978164 
		12 0.17567524741347848 13 0.058241473145190376
		5 0 0.42191253961937525 1 0.31300267565528544 9 0.0058979926558018481 
		12 0.14629677664699306 13 0.11289001542254444
		5 0 0.34993798296370887 1 0.4239026945796654 2 0.0062095363877271402 
		12 0.12071955540426421 13 0.099230230664634406
		5 0 0.44716955136832892 1 0.22867425328524124 9 0.044232381958347604 
		12 0.17206871408660993 13 0.10785509930147241
		5 0 0.47333673470966398 1 0.10450784186989708 9 0.075386914778760736 
		12 0.24218890537950674 13 0.10457960326217138
		5 0 0.00072649007508802823 1 6.1032087227898632e-05 5 2.0505782950191484e-05 
		9 0.50001168935879448 10 0.49918028269593928
		5 0 0.0011989781315969337 1 0.000130125360263548 5 2.9654673405954095e-05 
		9 0.50143282293271896 10 0.49720841890201478
		5 0 0.00059923171412871643 1 5.8594980872759956e-05 5 1.5696188727880996e-05 
		9 0.50010798536114842 10 0.49921849175512228
		5 0 0.001573121818420175 1 0.00019473108625184309 5 3.8488338122664722e-05 
		9 0.50357388431307593 10 0.4946197744441293
		5 0 0.00096682501586660603 1 0.00011082636790907384 5 2.5723581427096902e-05 
		9 0.49956177167913285 10 0.49933485335566452
		5 0 0.00035651322208207661 1 2.7095170602893778e-05 5 1.0498975665505334e-05 
		9 0.49981882031228902 10 0.49978707231936037
		5 0 0.0015257127717086829 1 0.00017673325859885131 5 3.6634431249090171e-05 
		9 0.50246742199414973 10 0.49579349754429353
		5 0 0.0019187489074315566 1 0.00022775099968903146 5 4.5939797686527755e-05 
		9 0.50697683903101831 10 0.49083072126417465
		5 0 0.002973469975156249 1 0.00036038954179293492 5 6.499483403401379e-05 
		9 0.5201113941783202 10 0.47648975147069655
		5 0 0.0043029469857929761 1 0.00049056460532042776 5 7.6530446825651282e-05 
		9 0.53220394681262073 10 0.46292601114944038
		5 0 0.22232723480127797 1 0.023865086808404903 2 0.00084157236753993464 
		9 0.64241225946273384 10 0.11055384656004337
		5 0 0.30368063076736551 1 0.028351611976514649 2 0.00085704781940205326 
		9 0.62307434426630914 10 0.044036365170408799
		5 0 0.35852466871140687 1 0.025247434053012021 2 0.00059288533743426816 
		9 0.60112992022480916 10 0.014505091673337652
		5 0 0.4356713453906742 1 0.021153416662815946 2 0.00024135436064893538 
		9 0.54000949133632403 10 0.002924392249536922
		5 0 0.56154257539915042 1 0.032221849176589434 2 0.00013817745001462494 
		9 0.4054359324843233 10 0.00066146548992228251
		5 0 0.68659971756107208 1 0.052822929780169114 2 0.00012746054942804034 
		9 0.26031517311997127 10 0.00013471898935949692
		5 0 0.76209532825544113 1 0.11739674477077519 2 0.00018236544735350925 
		5 6.60990560453908e-05 9 0.12025946247038469
		5 0 0.70800245071700696 1 0.25482529305365859 2 0.00047268948114974346 
		5 7.5049857313218876e-05 9 0.036624516890871414
		5 0 0.56359675545098775 1 0.40424189875347993 2 0.0048017166250549463 
		9 0.024290612687612994 12 0.0030690164828643279
		5 0 0.42685714463706009 1 0.50123517081561464 2 0.018058670917948539 
		12 0.02988346378383069 13 0.023965549845546028
		5 0 0.40108490018782555 1 0.32962524871177568 9 0.01165556620551586 
		12 0.14626632795997793 13 0.111367956934905
		5 0 0.14984660633927691 1 0.098246902932828908 11 0.017237664445660827 
		12 0.44125514526043658 13 0.29341368102179666
		5 0 0.038956651985991422 1 0.025234699126345017 11 0.010562000830826724 
		12 0.54048476524141875 13 0.38476188281541807
		5 0 0.0015736821875863933 1 0.00020052198898621256 5 4.3116129280514982e-05 
		9 0.50024577550329641 10 0.49793690419085052
		5 0 0.002286225612583708 1 0.00030305670166340311 5 6.4098525948427573e-05 
		9 0.50214280481565898 10 0.49520381434414534
		5 0 0.0033618417823206227 1 0.00044264866395141156 5 8.8526193472964211e-05 
		9 0.5103268984750774 10 0.48578008488517765
		5 0 0.0050768213114592191 1 0.00060484156382865689 5 0.00010841458063682166 
		9 0.52301589193878129 10 0.47119403060529391
		5 0 0.28244444600804386 1 0.024948558868108844 2 0.00095638426740143813 
		9 0.57693943650780011 10 0.11471117434864564
		5 0 0.33967185884029155 1 0.024183192769880138 2 0.00080375406147398319 
		9 0.59325391127687255 10 0.042087283051481787
		5 0 0.35229721084006788 1 0.017585761624850392 2 0.00048386332229211071 
		9 0.61730919288594499 10 0.012323971326844726
		5 0 0.36895928340854689 1 0.01082268342391513 2 0.00018955415119616185 
		9 0.61756640646646521 10 0.0024620725498765272
		5 0 0.47842254743838991 1 0.016437703675724058 2 0.00011569221804801961 
		9 0.50431610383180825 10 0.00070795283602966149
		5 0 0.67846916068178442 1 0.039799225667709041 2 0.00010067719383250439 
		9 0.28148969325714224 10 0.00014124319953178816
		5 0 0.77873387484611722 1 0.0928924120221927 2 0.00014594787991157397 
		9 0.12819667379296257 10 3.1091458815993659e-05
		5 0 0.73968187035861821 1 0.22298212694713707 2 0.00035160664794458689 
		3 1.8986496594043136e-05 9 0.036965409549706223
		5 0 0.59095571137096381 1 0.39102803757232152 2 0.0033707181090264103 
		9 0.011762156484766605 12 0.0028833764629216962
		5 0 0.34834408295845215 1 0.5811696777646661 2 0.01351967658488433 
		12 0.032162149179488023 13 0.024804413512509293
		5 0 0.33647379856210219 1 0.41196401874433175 11 0.003872965444260819 
		12 0.13909153677469488 13 0.10859768047461024
		5 0 0.10266400105368102 1 0.15487192491464771 11 0.0093827132560633172 
		12 0.40917926448956266 13 0.32390209628604527
		5 0 0.033342596051578272 1 0.052818704461024317 11 0.0099698053738842239 
		12 0.50348889635147942 13 0.40037999776203381
		5 11 1.7171486746571965e-05 12 0.051562145611587847 13 0.37598965605037599 
		14 0.45048713612417407 15 0.12194389072711569
		5 11 1.6071937903482274e-05 12 0.062305029426122836 13 0.37080678423627822 
		14 0.44535048098257501 15 0.12152163341712044
		5 11 1.7087156560973059e-05 12 0.068990264980760052 13 0.36844361595702285 
		14 0.44400115158175313 15 0.1185478803239028
		5 11 2.4988665968512371e-05 12 0.061954329582412974 13 0.3632658293939719 
		14 0.45287024433344691 15 0.1218846080241998
		5 11 2.6949488777310935e-05 12 0.051011163359598724 13 0.36731293682605953 
		14 0.4596192451363828 15 0.12202970518918159
		5 11 2.017873946227121e-05 12 0.047211617581625807 13 0.37790576017842581 
		14 0.45578137632367777 15 0.11908106717680844
		5 11 7.8992055290587191e-05 12 0.18100184941449962 13 0.43741256157173652 
		14 0.34224989497276109 15 0.039256701985712142
		5 11 8.6994126603993213e-05 12 0.21222350935785247 13 0.4119079864671768 
		14 0.33699080750578958 15 0.038790702542577167
		5 11 0.0001212393685533539 12 0.2158451956923586 13 0.4053901112799983 
		14 0.33987839195813968 15 0.0387650617009501
		5 11 0.0001532452649643969 12 0.18607809334025105 13 0.42486203008153889 
		14 0.34967886259901237 15 0.039227768714233488
		5 11 0.00014612491240080091 12 0.16002872481459401 13 0.449130835977683 
		14 0.35181961352233482 15 0.038874700772987589
		5 11 0.00010621349524527752 12 0.15856381178083059 13 0.45534095382211542 
		14 0.34713489170307454 15 0.038854129198734183
		5 0 0.0011428583300818814 1 4.3276938023278027e-05 5 1.9838452291306244e-05 
		9 0.49991464633069899 10 0.49887937994890463
		5 0 0.0073812646194770194 1 0.00065551384087588209 5 0.0001037975516069656 
		9 0.52174618592841171 10 0.4701132380596284
		5 0 0.0094042269233909886 1 0.00090415982261781173 5 0.00012602015491885901 
		9 0.53255851664632126 10 0.45700707645275124
		5 0 0.0073481923066539964 1 0.00080443362144997526 5 9.3873871561973702e-05 
		9 0.53817287379585443 10 0.4535806264044796
		5 0 0.0053997648101710722 1 0.00053492525843678001 5 6.8956307493026601e-05 
		9 0.53531611573379745 10 0.45868023789010193
		5 0 0.0037566969169944217 1 0.00027941002488388717 5 4.9067775795659115e-05 
		9 0.52388673025964916 10 0.47202809502267695
		5 0 0.0027755109551671686 1 0.00012213903557437093 5 3.7641364521420902e-05 
		9 0.50920394464025331 10 0.4878607640044838
		5 0 0.018449182249863097 1 0.00033809664573809258 5 7.8086374888417507e-05 
		9 0.54660805259363077 10 0.43452658213587952
		5 0 0.050734977412245426 1 0.0022219550782653624 5 0.00019810756795526725 
		9 0.53156926798992399 10 0.4152756919516099
		5 0 0.055345228878965078 1 0.003284106634992132 5 0.00022784832217062373 
		9 0.53156098832565402 10 0.40958182783821817
		5 0 0.035476645266327413 1 0.0042103284768703932 2 0.00025165401621203619 
		9 0.54864099850460857 10 0.4114203737359815
		5 0 0.030033588592583919 1 0.0035168614960908429 2 0.00020187429494103481 
		9 0.55389656182532265 10 0.41235111379106154
		5 0 0.028132873458092535 1 0.0023374645837802078 2 0.00012689800658842972 
		9 0.56059463428862299 10 0.40880812966291569
		5 0 0.035100436996325202 1 0.0011214769210025055 5 0.0001476501864517259 
		9 0.58805524290551803 10 0.37557519299070252
		5 0 0.066929771471633814 1 0.039667299571125594 11 0.019958339973426761 
		12 0.500487916394042 13 0.37295667258977189
		5 0 0.24409572778900379 1 0.1053159205026241 11 0.019632587541454229 
		12 0.37136007030230395 13 0.25959569386461401
		5 0 0.61844096595604936 1 0.25263676208186675 9 0.020457854094936341 
		12 0.062261745931040995 13 0.046202671936106582
		5 0 0.69617244825141888 1 0.2548943414029109 9 0.027356518063517726 
		12 0.012113566362594344 13 0.0094631259195582084
		5 0 0.75939777349062887 1 0.15999583361395486 9 0.078154295180740671 
		12 0.0013958920452351836 13 0.0010562056694402126
		5 0 0.75892195913387828 1 0.098990128335197963 2 0.00043105208413644479 
		9 0.14156493855278382 11 9.1921894003522297e-05
		5 0 0.68596719619795277 1 0.034011561457860495 2 0.00015030639265943883 
		5 3.8194550097319463e-05 9 0.27983274140142977
		5 0 0.54506302369271376 1 0.0094221601323148489 2 4.8287086950207004e-05 
		9 0.44540457602313421 10 6.1953064886937113e-05
		5 0 0.37229948244402622 1 0.0028136140667450642 5 2.6346435985623649e-05 
		9 0.62462221861259148 10 0.00023833844065156888
		5 0 0.3373265789733837 1 0.003212094604737229 5 5.6713233056357847e-05 
		9 0.65837470824022304 10 0.0010299049485996271
		5 0 0.33276922484732779 1 0.0049687551639607764 5 0.00014947456362168272 
		9 0.65614510621631283 10 0.0059674392087769772;
	setAttr ".wl[500:599].w"
		5 0 0.32915319354272654 1 0.0076126128770871862 5 0.00026354513210135363 
		9 0.63689726793136126 10 0.02607338051672364
		5 0 0.28452284426512103 1 0.0090761989158370925 2 0.0003601931536254345 
		9 0.60620793745679102 10 0.099832826208625436
		5 0 0.00287228217155129 1 0.00028674483772970263 5 5.8624869809370966e-05 
		9 0.5060972163861136 10 0.49068513173479616
		5 0 0.0014642538555284246 1 0.00015879610285248754 5 3.8012493744190012e-05 
		9 0.50050141964794426 10 0.49783751789993069
		5 0 0.00080719766124094216 1 8.3609873173355945e-05 5 2.2021627163015882e-05 
		9 0.49960915207940215 10 0.49947801875902065
		5 0 0.00058717867201059837 1 5.8652394556892787e-05 5 1.5278203885117507e-05 
		9 0.49966950110062947 10 0.49966938962891783
		5 0 0.00087143251171358611 1 5.6451950037959521e-05 5 2.0012297613498828e-05 
		9 0.49974499084630658 10 0.4993071123943284
		5 0 0.00056522311135030355 1 4.1169057282722726e-05 5 1.622784496676255e-05 
		9 0.49968893846023177 10 0.49968844152616831
		5 0 0.00042263877903008179 1 3.0975494290790225e-05 5 1.2670850257802234e-05 
		9 0.49976703870777656 10 0.49976667616864495
		5 0 0.00039105334178333648 1 3.2347669443710604e-05 5 1.0944811680795648e-05 
		9 0.49978931425790135 10 0.49977633991919074
		5 0 0.0006491359358880408 1 7.0219850355913939e-05 5 1.6545850132871985e-05 
		9 0.50006040667864571 10 0.49920369168497752
		5 0 0.0014875587261437369 1 0.00019075586677531331 5 3.8127559578605196e-05 
		9 0.50196703950651878 10 0.49631651834098378
		5 0 0.0026869459608048385 1 0.00036387362032835261 5 6.7712030835799197e-05 
		9 0.51082477821926964 10 0.48605669016876141
		5 0 0.0040563806026158071 1 0.00053806863818877196 5 9.2623353103377115e-05 
		9 0.52459503649209682 10 0.47071789091399519
		5 0 0.0056170340733549063 1 0.00068157349092526386 5 0.0001032811982574153 
		9 0.53400431258081582 10 0.45959379865664646
		5 0 0.0086199661904589053 1 0.00094328253844295899 5 0.00011088753854965454 
		9 0.53725836683366934 10 0.45306749689887904
		5 0 0.042349132865453616 1 0.0043101397074993691 2 0.0002624766358863376 
		9 0.54139090570782822 10 0.41168734508333255
		5 0 0.24291193858748536 1 0.029818778626064659 2 0.0011234073094208942 
		9 0.59617273988024655 10 0.12997313559678256
		5 0 0.31716573525060882 1 0.034246588300672634 2 0.0011106686904609152 
		9 0.59085848947721398 10 0.056618518281043612
		5 0 0.35216227714887499 1 0.030430310233447846 2 0.00079433836661435716 
		9 0.59695051606998961 10 0.019662558181073174
		5 0 0.39487041562229958 1 0.023423092797165656 2 0.00036514345720266105 
		9 0.57686396993558786 10 0.0044773781877442392
		5 0 0.52090004021108294 1 0.030670942091795432 2 0.00019726144702574737 
		9 0.44699987262138596 10 0.0012318836287098186
		5 0 0.74433552721632668 1 0.061718921574341529 2 0.00010453330004574619 
		9 0.19366562302633572 10 0.00017539488295026138
		5 0 0.80052007228493882 1 0.12537881760271777 2 8.4690916421571526e-05 
		9 0.073984084733025812 10 3.2334462896113705e-05
		5 0 0.68804397378412818 1 0.2994386967562 2 0.0005120441316573954 
		3 6.9949710880602055e-06 9 0.011998290356926249
		5 0 0.50561639800917912 1 0.48295567859466032 2 0.0082085594968227451 
		3 0.001686304260860774 9 0.0015330596384771041
		5 0 0.27210955462140196 1 0.63779253749419118 2 0.031419748916684573 
		12 0.032067540077829852 13 0.026610618889892378
		5 0 0.26560380267587053 1 0.48813784638445584 2 0.0043239941234772712 
		12 0.13317912345599073 13 0.10875523336020559
		5 0 0.12064480292989122 1 0.13003720541983999 11 0.0055665944829743448 
		12 0.40950815871484797 13 0.33424323845244641
		5 0 0.040237247514058778 1 0.027390805503155882 11 0.0088550367917848913 
		12 0.52287083695245806 13 0.40064607323854234
		5 0 0.0081739389552489463 11 0.028973552764730421 12 0.62991304687550342 
		13 0.32423929546624319 16 0.0087001659382741226
		5 0 0.08652585831489143 11 0.069081230419919509 12 0.57422600805641544 
		13 0.25024799816551502 16 0.019918905043258602
		5 0 0.25449102391010531 9 0.034155762356052145 11 0.0638270263685526 
		12 0.46128194753533852 13 0.18624423982995139
		5 0 0.62509539043008255 1 0.066891254816695681 9 0.07913496873226071 
		12 0.15674531872620476 13 0.072133067294756284
		5 0 0.74749208250963584 1 0.09340890914056775 9 0.095653818160920182 
		12 0.04113977767266707 13 0.022305412516209103
		5 0 0.75535105223917232 1 0.052914074706446844 9 0.18544038473956392 
		11 0.0020274487006567486 12 0.0042670396141599905
		5 0 0.71539961483023773 1 0.036422907565930286 5 0.00048618338929080841 
		9 0.24729766430872482 11 0.00039362990581656471
		5 0 0.63089176549105097 1 0.0073609059384595497 2 6.2309159512444719e-05 
		5 7.4827263407559348e-05 9 0.36161019214756962
		5 0 0.55404773763233339 1 0.0017015926216619635 5 2.356444731237088e-05 
		9 0.44420651747013273 10 2.0587828559551459e-05
		5 0 0.43575823425013238 1 0.00071923321145613971 5 1.8312822343605981e-05 
		9 0.56342983477394737 10 7.4384942120361689e-05
		5 0 0.36641771011748647 1 0.00058252358994190711 5 4.1728305239100622e-05 
		9 0.63257814675206636 10 0.00037989123526628951
		5 0 0.33714412586898146 1 0.0012592025138859334 5 0.00014273701990121491 
		9 0.65884492566656283 10 0.0026090089306684346
		5 0 0.32633444541321238 1 0.0021611571569853903 5 0.0002802041275436152 
		9 0.6608744979988489 10 0.010349695303409689
		5 0 0.28648211369202964 1 0.0027812959155319498 5 0.00040431598689998907 
		9 0.67329059429793681 10 0.037041680107601609
		5 0 0.0053396122253144699 1 0.00026102045261931143 5 5.6139631627308181e-05 
		9 0.4971719077662074 10 0.49717131992423164
		5 0 0.003250648619419207 1 0.00017913433276693121 5 4.0548760383993169e-05 
		9 0.49826513715019882 10 0.49826453113723101
		5 0 0.0038271857968691283 1 0.00017600325013344896 5 4.7427198790765253e-05 
		9 0.49797501138809108 10 0.49797437236611547
		5 0 0.0022550922755613895 1 0.00011834799135596001 5 3.4706581047606496e-05 
		9 0.49879629724465002 10 0.49879555590738506
		5 0 0.0050550832418126152 1 0.00024780512351979078 5 5.4399598830021654e-05 
		9 0.49732165046627985 10 0.49732106156955785
		5 0 0.0027533949918959115 1 0.00015708356873384111 5 3.6962103324365742e-05 
		9 0.4985265940555858 10 0.49852596528046017
		5 0 0.0037536064377128669 1 0.00017192994960317428 5 4.7814224229297957e-05 
		9 0.49801364357031597 10 0.49801300581813868
		5 0 0.0022525395913337446 1 0.00011806443818938429 5 3.5367420546249716e-05 
		9 0.49879739727845507 10 0.49879663127147561
		5 0 0.031792353816345736 1 0.00054075709133580058 5 0.00013035400356007555 
		9 0.60885959158217717 10 0.35867694350658119
		5 0 0.090603482553211045 1 0.0014770543987703757 5 0.00022699942221274659 
		9 0.61421447427696474 10 0.29347798934884106
		5 0 0.097789110439648982 1 0.0028525554179739897 5 0.00023855940042273287 
		9 0.55212545228037457 10 0.34699432246157985
		5 0 0.12780840347341649 1 0.0052597409154352239 5 0.00030460640338657226 
		9 0.54238455663833629 10 0.32424269256942534
		5 0 0.12694337425525534 1 0.0079928139363518863 2 0.00042233336437627351 
		9 0.53929015296966809 10 0.32535132547434842
		5 0 0.095133196930539426 1 0.010522514189087215 2 0.00052585328128893817 
		9 0.56302247364774149 10 0.33079596195134287
		5 0 0.08148068743156904 1 0.010151119241892652 2 0.00050045273771919115 
		9 0.57369262796818843 10 0.33417511262063082
		5 0 0.071885729538272949 1 0.0083938698802457495 2 0.00039683425341069227 
		9 0.58817107874806906 10 0.3311524875800016
		5 0 0.073391178597739665 1 0.0054962219184403931 2 0.00024699140100767906 
		9 0.61703730540974833 10 0.30382830267306399
		5 0 0.093870943510443283 1 0.0025599309878081042 5 0.00028918383405982949 
		9 0.66704924704388524 10 0.23623069462380364
		5 0 0.18366166853101407 1 0.0016957436684114789 5 0.00054043332645057436 
		9 0.73066372786329237 10 0.08343842661083134
		5 0 0.20822435936940814 1 0.0025610462438656525 5 0.00041978567558384759 
		9 0.68078144758699588 10 0.10801336112414647
		5 0 0.1900353523162257 1 0.0054548630095437338 5 0.00032905148634181905 
		9 0.57857739838413513 10 0.22560333480375344
		5 0 0.21964233459723287 1 0.010369775472168387 2 0.00047905299034345562 
		9 0.56020478667642293 10 0.20930405026383236
		5 0 0.20686071757765484 1 0.015631437238811552 2 0.0006986363438419048 
		9 0.55904214486735926 10 0.21776706397233245
		5 0 0.16719080547457754 1 0.019814392256826151 2 0.00085294843898273945 
		9 0.58585736737825345 10 0.22628448645136015
		5 0 0.14729091792598187 1 0.018950860458881884 2 0.00080489832346518104 
		9 0.60136176531136987 10 0.23159155798030126
		5 0 0.1369212804137423 1 0.015602596258147482 2 0.00063219862381119361 
		9 0.62937215560460558 10 0.21747176909969373
		5 0 0.14898619965423718 1 0.010411262485088746 2 0.00040199358844914245 
		9 0.66485472725582195 10 0.17534581701640312
		5 0 0.18068448577676419 1 0.0046521709841313734 5 0.00043817888553587537 
		9 0.69648998631090808 10 0.11773517804266054
		5 0 0.1540744136561398 1 0.62324447164362806 2 0.15924088179882753 
		3 0.057824656372178845 4 0.0056155765292257775
		5 0 0.24445615572666654 1 0.61767871525069473 2 0.10406136941811785 
		3 0.0302151032621653 4 0.0035886563423555688
		5 0 0.20684341348163091 1 0.66727167835817125 2 0.09090861369980012 
		3 0.029953278394858483 4 0.0050230160655391851
		5 0 0.32767898761465186 1 0.60625618456572061 2 0.051390396910929836 
		3 0.012899051195886493 9 0.00177537971281116
		5 0 0.18546833104252561 1 0.69693747539537265 2 0.085975776403666965 
		3 0.027698386915372079 12 0.0039200302430626166
		5 0 0.16766465708927705 1 0.67134232704475005 2 0.11895429439492373 
		3 0.039010354617105655 4 0.0030283668539436157
		5 0 0.34539775568647962 1 0.60756639272319835 2 0.036696238216865865 
		3 0.008522353569471848 12 0.0018172598039842809
		5 0 0.27244811158854643 1 0.6466195423653035 2 0.058507578618103927 
		3 0.019849054619593309 4 0.0025757128084528355
		5 0 0.036156415193108138 1 0.468248128223274 2 0.2778886165568229 
		3 0.17611339383623434 4 0.041593446190560643
		5 0 0.072519174894245225 1 0.50622948093838893 2 0.24746621256845291 
		3 0.13668439896055654 4 0.037100732638356511
		5 0 0.069085392265907014 1 0.57372715876424041 2 0.21470908037190375 
		3 0.10361908752992474 4 0.038859281068024054
		5 0 0.11533963632533181 1 0.56940263469268637 2 0.19341382355176956 
		3 0.091500733812289792 4 0.030343171617922413
		5 0 0.048631786585422485 1 0.5030468825972978 2 0.2458688167271571 
		3 0.15824196868662929 4 0.044210545403493152
		5 0 0.045511600335511701 1 0.50521505674890854 2 0.25472999676688862 
		3 0.15956302197558256 4 0.034980324173108479
		5 0 0.14369390286592604 1 0.62850039421615356 2 0.15189622130926914 
		3 0.06474924790434361 4 0.01116023370430771
		5 0 0.094557494193094324 1 0.60149261504818929 2 0.18228575894527085 
		3 0.090514922779006718 4 0.031149209034438859
		5 0 0.0057433163698140206 1 0.26937680544254661 2 0.27090305448953927 
		3 0.31162166634714755 4 0.14235515735095267
		5 0 0.0098883683307302243 1 0.27271732801660475 2 0.28157000097828594 
		3 0.29521347293066824 4 0.14061082974371086
		5 0 0.021961526115275184 1 0.32144971484873791 2 0.26781626113609858 
		3 0.23923680915468187 4 0.14953568874520645
		5 0 0.021440869881966564 1 0.29919205821725686 2 0.27534314905406088 
		3 0.26046994370799953 4 0.14355397913871606
		5 0 0.0063110845568994517 1 0.19693986124961371 2 0.25549298872951487 
		3 0.34393348589308231 4 0.19732257957088961
		5 0 0.0059084136569782821 1 0.27246601484057653 2 0.26933622300500942 
		3 0.31149426014781734 4 0.14079508834961829
		5 0 0.03371643901482848 1 0.39448416964592214 2 0.27744271711558716 
		3 0.20820369808430508 4 0.08615297613935731
		5 0 0.019258156834787779 1 0.33753231580514953 2 0.26490206251049792 
		3 0.23322581316395977 4 0.14508165168560513
		5 0 3.4937579492154764e-05 1 0.044048431596330297 2 0.096198419098258964 
		3 0.46818369573993396 4 0.39153451598598454
		5 0 0.00017322428755135708 1 0.05505661979222138 2 0.12183779693923734 
		3 0.45560134797027146 4 0.36733101101071836
		5 0 0.0013809743056149063 1 0.053440468566010806 2 0.1168871118255979 
		3 0.43811258369463241 4 0.39017886160814402
		5 0 0.0011111102181332346 1 0.068664913262600935 2 0.15029665740309686 
		3 0.43304514693092705 4 0.34688217218524198;
	setAttr ".wl[600:699].w"
		5 0 0.00011713522848300041 1 0.020316768453994782 2 0.085440338951172506 
		3 0.47508775472803472 4 0.41903800263831492
		5 0 0.00014435559034724094 1 0.045027860163662475 2 0.10550772759153036 
		3 0.46628534820807299 4 0.38303470844638687
		5 0 0.0028178015718773874 1 0.10132008170350948 2 0.18389157422566402 
		3 0.40113377155717789 4 0.31083677094177131
		5 0 0.0014058591926799726 1 0.063136034231760771 2 0.12836746738598706 
		3 0.4252239396639198 4 0.38186669952565228
		5 0 0.082055310567700379 11 0.13030978620839387 12 0.57737542836461275 
		13 0.15817152525821448 16 0.052087949601078501
		5 0 0.25404570397349474 11 0.11476457718532038 12 0.44720603559266681 
		13 0.13834685865071256 16 0.045636824597805631
		5 0 0.013389605737273604 11 0.12896619946144375 12 0.65896775489278026 
		13 0.14517628511313158 16 0.053500154795370694
		5 0 0.060314889724375959 11 0.13849283635228138 12 0.59512526033694391 
		13 0.1503324136051892 16 0.055734599981209582
		5 0 0.0089485710230265119 11 0.1092710374267029 12 0.69773504325298497 
		13 0.13926104409418208 16 0.044784304203103427
		5 0 0.55102020185867095 1 0.0033825247567649715 5 7.2098739164470191e-05 
		9 0.44548374111854511 10 4.143352685452389e-05
		5 0 0.43784011743554851 1 0.0020732850799834736 5 4.2196854846014112e-05 
		9 0.55977641204349859 10 0.00026798858612338375
		5 0 0.61814601337863417 1 0.0022332344958794332 5 0.00010587794063288535 
		9 0.37948765981927857 11 2.7214365574851031e-05
		5 0 0.49414096503963656 1 0.00032731463871509892 5 2.9992461401580212e-05 
		9 0.50541423607199387 10 8.7491788253132207e-05
		5 0 0.38643584477460857 1 0.0012824981737650279 5 0.00011793305161713628 
		9 0.61070794693668473 10 0.0014557770633245848
		5 0 0.41786287979475023 1 0.00022993349010108456 5 6.1651004019899278e-05 
		9 0.58134659031149682 10 0.00049894539963201193
		5 0 0.30186227069683136 1 0.0030437064202872418 5 0.00049625472371372752 
		9 0.66867759077631084 10 0.025920177382856836
		5 0 0.22674255327518134 1 0.0028268211633748885 5 0.00052499982636006767 
		9 0.69808794991033907 10 0.071817675824744645
		5 0 0.32479438591876342 1 0.0011856711535836372 5 0.00041904750659094712 
		9 0.66103494132674212 10 0.012565954094319967
		5 0 0.26957701860903094 1 0.0014906849219125931 5 0.00055641458874881595 
		9 0.69421466040299362 10 0.034161221477314284
		5 0 0.13511388019085854 1 0.0018158140951343815 5 0.00039938413612628513 
		9 0.70077082500491394 10 0.16190009657296689
		5 0 0.19268516579578099 1 0.0014601806435021463 5 0.00059042920765923351 
		9 0.7415213762863333 10 0.063742848066724256
		5 0 0.001153331749326376 1 7.2661944689476996e-05 5 2.915529609355853e-05 
		9 0.50168974898792529 10 0.49705510202196534
		5 0 0.00085728394127473494 1 5.5822795426416338e-05 5 2.5707610534169316e-05 
		9 0.49995171297265678 10 0.49910947268010786
		5 0 0.0007868199662178913 1 3.3735504056875667e-05 5 1.8563372669756235e-05 
		9 0.49958080805918065 10 0.49958007309787478
		5 0 0.0005842507467629602 1 3.1493057755188766e-05 5 1.7799179456078571e-05 
		9 0.49968354017146432 10 0.49968291684456151
		5 0 0.00066840028631010376 1 4.4047182410558535e-05 5 2.0969626641902785e-05 
		9 0.49966740561177897 10 0.4995991772928583
		5 0 0.00047502527271753054 1 2.812222697016111e-05 5 1.5731038110676337e-05 
		9 0.49974080353344374 10 0.49974031792875789
		5 0 0.71519795855383184 1 0.033427691611105884 9 0.14352694358809268 
		11 0.025853121722379982 12 0.08199428452458965
		5 0 0.75585217504884672 1 0.025699936783385554 9 0.20446902398776837 
		11 0.0051682633605525819 12 0.0088106008194467345
		5 0 0.73349905853940323 1 0.070062603374960508 9 0.17431839995111822 
		11 0.007064680634962666 12 0.015055257499555396
		5 0 0.7089962729930489 1 0.044842997478645889 5 0.0032197186178295305 
		9 0.24112092366906193 11 0.0018200872414136863
		5 0 0.3582710837301763 1 0.00070785995764307197 5 0.00023835294879025055 
		9 0.63702684415328381 10 0.0037558592101066069
		5 0 0.34466391202274627 1 0.0023417636397040807 5 0.00033262557695048031 
		9 0.64440998759444945 10 0.0082517111661497503
		5 0 0.72475488635469132 1 0.015327376710879892 5 0.0019267896044696639 
		9 0.25678655355507773 11 0.00120439377488147
		5 0 0.66970421081779663 1 0.0062701781637142309 5 0.00044707019706606029 
		9 0.32338168400445361 11 0.00019685681696938456
		5 0 0.67543688657318945 1 0.029357756001086113 5 0.0014602107797804639 
		9 0.29319977355996596 11 0.00054537308597801316
		5 0 0.6172852778767115 1 0.0079503136097869818 5 0.0002887973904702516 
		9 0.37440958369620858 11 6.6027426822630323e-05
		5 0 0.534925599541209 9 0.10016441838363886 11 0.06440217710980238 
		12 0.23569725937225344 13 0.06481054559309625
		5 0 0.68104465477592779 1 0.083517947182571897 9 0.13076499902052316 
		12 0.074258770829048887 13 0.030413628191928346
		5 0 0.00047493129180057426 1 3.4340032042334348e-05 5 1.4295088560637569e-05 
		9 0.49978815595238024 10 0.49968827763521623
		5 0 0.00032401689540895797 1 2.3758458334910957e-05 5 9.5781043953572054e-06 
		9 0.49984757845142219 10 0.49979506809043872
		5 0 0.00033971964775532371 1 2.1070959248583113e-05 5 1.1143813390048923e-05 
		9 0.49981416853157795 10 0.49981389704802803
		5 0 0.0016614196612198086 1 4.8528005301485969e-05 5 2.3280635176910544e-05 
		9 0.50163677626980296 10 0.49662999542849895
		5 0 0.0018509485864583485 1 7.7475756997703128e-05 5 3.1928573572728894e-05 
		9 0.50340672740951153 10 0.49463291967345963
		5 0 0.011471170865253927 1 0.00022235675561572746 5 7.2609213450419472e-05 
		9 0.56040945355815996 10 0.42782440960751988
		5 0 0.017655748820312931 1 0.0003518519262243202 5 9.8361638441653673e-05 
		9 0.55354393710752026 10 0.428350100507501
		5 0 0.017101724073014222 1 0.00032043007589995377 5 0.00010935320440913302 
		9 0.62525083991602226 10 0.35721765273065442
		5 0 0.062935150310317031 1 0.00092809731979686923 5 0.00023790614943642699 
		9 0.64492842656400029 10 0.29097041965644954
		5 0 7.1901641983245135e-07 5 0.0029725331381872445 6 0.024877446443303603 
		7 0.48949064298501982 8 0.48265865841706962
		5 0 5.2662598146581522e-06 5 0.0073353640339477947 6 0.044979531082935509 
		7 0.48135957232216448 8 0.46632026630113743
		5 0 1.7393593398405294e-05 5 0.004934169533999804 6 0.023385652774128577 
		7 0.48934975015045801 8 0.48231303394801517
		5 0 3.836721355015722e-05 5 0.014022169445625314 6 0.060146114569944578 
		7 0.47452050278839164 8 0.45127284598248846
		5 0 4.5558203357486427e-06 5 0.0032581105910515101 6 0.032607443053961849 
		7 0.48882990286978645 8 0.47529998766486431
		5 0 1.0605041723652772e-06 5 0.0044198634563500198 6 0.036819142627990895 
		7 0.48499021419416743 8 0.4737697192173192
		5 0 5.0121058424718246e-05 5 0.015955491850847232 6 0.075249942547921361 
		7 0.46638056066401329 8 0.44236388387879327
		5 0 2.6765663552950337e-05 5 0.0085100632676343713 6 0.038240628208360522 
		7 0.48093259191745363 8 0.47228995094299869
		5 0 1.7565133893893536e-07 5 3.7366138292760959e-06 6 0.0016565818256067744 
		7 0.49936070057949739 8 0.49897880532972766
		5 0 3.7055471617901237e-07 5 6.5131855810519155e-05 6 0.0067627862422082342 
		7 0.49758235257084843 8 0.49558935877641652
		5 0 1.4735754454798389e-07 5 0.00018102426298437498 6 0.0019412573877241042 
		7 0.49919664959000615 8 0.49868092140174086
		5 0 5.3498653131889935e-07 5 0.00049889550784668166 6 0.0080717922448099253 
		7 0.49721957294025382 8 0.49420920432055832
		5 0 3.4503986348934084e-07 5 6.4231928699995096e-05 6 0.0047046801739786728 
		7 0.49863090938320681 8 0.49659983347425096
		5 0 1.9462632937622674e-07 5 1.1960340873724667e-05 6 0.0041210812770266416 
		7 0.49851103645285333 8 0.49735572730291688
		5 0 4.6840235749650404e-07 5 0.00043073400957221471 6 0.0094350476659283353 
		7 0.49654939094851525 8 0.49358435897362668
		5 0 1.616530971335937e-07 5 0.00027559448336116489 6 0.0038224549569417276 
		7 0.49837971059791392 8 0.49752207830868611
		5 0 4.1241350453062383e-05 1 0.010499828018802615 2 0.052991626923621638 
		3 0.48476284782136281 4 0.45170445588575986
		5 0 4.0012003342240687e-06 1 0.0060484263336226312 2 0.03250217882741565 
		3 0.49476272409131344 4 0.46668266954731391
		5 0 2.0658335225535967e-05 1 0.003547237793251026 2 0.022212412299836361 
		3 0.49168186735139735 4 0.48253782422028957
		5 0 5.4355241480234395e-07 1 0.0027488924538205104 2 0.016583182359501798 
		3 0.49799464559644341 4 0.48267273603781941
		5 0 3.0738668657442677e-05 1 0.0065661156009104655 2 0.035189480555849403 
		3 0.48511412928474495 4 0.47309953588983789
		5 0 1.8016735016147724e-06 1 0.0046429436566073987 2 0.026564348570323578 
		3 0.496483557123368 4 0.47230734897619958
		5 0 3.9453180011453595e-05 1 0.011564711786692604 2 0.058671118750363009 
		3 0.47952283855537314 4 0.45020187772755982
		5 0 4.5156068225444042e-06 1 0.0028275889309308253 2 0.027132350162702403 
		3 0.49605153534402774 4 0.47398400995551665
		5 0 4.2958865097218646e-07 1 0.00019590886719236214 2 0.0068151170250104467 
		3 0.49885746485126475 4 0.49413107966788156
		5 0 3.1924370670337355e-07 1 4.7553128214256239e-05 2 0.0045268021390297451 
		3 0.49997042688290083 4 0.49545489860614861
		5 0 8.0999408081110175e-08 1 6.162735389505772e-05 2 0.0020433930373089438 
		3 0.49929794362762792 4 0.49859695498176004
		5 0 9.4187457251527054e-08 1 4.6185785263656679e-06 2 0.0010450564412189957 
		3 0.49999417768446414 4 0.4989560531083333
		5 0 6.9292212243904074e-08 1 9.0697671703598656e-05 2 0.0037283008681072835 
		3 0.49869547649820328 4 0.49748545566977365
		5 0 8.5529536900394696e-08 1 1.1866360540035603e-05 2 0.0026768923364659959 
		3 0.49999095621323469 4 0.49732019956022233
		5 0 3.1175025885351159e-07 1 0.00019259629555231606 2 0.0077422742908134197 
		3 0.49804770356246325 4 0.4940171141009122
		5 0 3.6528202353402784e-07 1 7.1121918011398451e-05 2 0.0048960836136615763 
		3 0.49995850297910405 4 0.49507392620719942
		5 0 0.0047509732546013785 1 0.00013238884081878257 5 4.6140089783577161e-05 
		9 0.51374294995801173 10 0.48132754785678444
		5 0 0.0094119778891705967 1 0.00040586948990939593 5 6.5861838827392893e-05 
		9 0.53090924071898904 10 0.45920705006310358
		5 0 0.010084095427770693 1 0.00092133432804861984 5 7.5758240955676719e-05 
		9 0.53828385013572477 10 0.45063496186750029
		5 0 0.012711245749077468 1 0.0014309661809518454 2 0.0001056472877671614 
		9 0.54160562188591421 10 0.4441465188962892
		5 0 0.015648844007248322 1 0.0017422172316853418 2 0.000133000025030178 
		9 0.53907437605598585 10 0.44340156268005021
		5 0 0.018361202551475185 1 0.0017832996694663453 5 0.00014617700116692712 
		9 0.5360825920113077 10 0.44362672876658393
		5 0 0.020755060251959619 1 0.0014125437534761958 5 0.00015472312778813121 
		9 0.53051354594731326 10 0.44716412691946295
		5 0 0.016680223757568613 1 0.00094136650072885553 5 0.00012235784615777405 
		9 0.52280908281929606 10 0.45944696907624866
		5 0 0.003983398960183889 1 0.00020976038390859244 5 4.6208233935181782e-05 
		9 0.49788061246420134 10 0.49788001995777076
		5 0 0.0045307296779264873 1 0.00023180180716849305 5 5.0179832270070524e-05 
		9 0.49759393850290223 10 0.49759335017973283
		5 0 0.0028379447097711141 1 0.00013405422561046568 5 3.9696057490208016e-05 
		9 0.49849450414776858 10 0.49849380085935968
		5 0 0.0028937250144142317 1 0.00013767387733602647 5 4.0766801842011411e-05 
		9 0.49846427116753245 10 0.49846356313887552
		5 0 0.0042691536169895995 1 0.00010276201318428239 5 3.2611688988572382e-05 
		9 0.50818920406649459 10 0.48740626861434294
		5 0 0.0048967496605091341 1 0.00010673291103013719 5 3.9781581361916138e-05 
		9 0.51744953176492203 10 0.47750720408217678
		5 0 0.0022254018653244841 1 0.00012960989073513931 5 3.3072529580748223e-05 
		9 0.49880629694059947 10 0.49880561877376023
		5 0 0.0020766417872287372 1 0.00012044894810021694 5 3.2575408101450432e-05 
		9 0.49888552515715928 10 0.49888480869941038
		5 0 0.0013134394896600532 1 0.00011924357358158282 5 3.0562391780137842e-05 
		9 0.50067944081877103 10 0.49785731372620706
		5 0 0.0008046084652241016 1 7.2143928110621916e-05 5 2.1512740807398996e-05 
		9 0.49968102306649415 10 0.4994207117993637
		5 0 0.0005242183256452805 1 4.4643165613346746e-05 5 1.480242896444906e-05 
		9 0.49970834469743325 10 0.49970799138234367
		5 0 0.00048449985359453078 1 4.5354669387430488e-05 5 1.2852788516178778e-05 
		9 0.49973430746254638 10 0.49972298522595554;
	setAttr ".wl[700:799].w"
		5 0 0.00074066029987598426 1 8.2191940969671417e-05 5 1.8850806473711892e-05 
		9 0.49978679569791978 10 0.49937150125476087
		5 0 0.0013275802543929237 1 0.00016568925364274351 5 3.4898284526950364e-05 
		9 0.50038121823052084 10 0.49809061397691662
		5 0 0.0023718303121828288 1 0.00031957356306236 5 6.3791652762010704e-05 
		9 0.50530580108689838 10 0.49193900338509444
		5 0 0.0038268877937308846 1 0.00051045295808886627 5 9.4713053703989199e-05 
		9 0.5186070867440854 10 0.47696085945039068
		5 0 0.0055387426844301377 1 0.00067194066116298861 5 0.00011041571302447669 
		9 0.53064332309734974 10 0.46303557784403276
		5 0 0.0093148691268727657 1 0.0009622869106226628 5 0.00012112214986646834 
		9 0.5360696575324333 10 0.45353206428020471
		5 0 0.020641511064731301 1 0.0016832667145861905 5 0.00015858326703790341 
		9 0.53394316880592207 10 0.44357347014772275
		5 0 0.049412538276405051 1 0.0039440096970885076 2 0.00024773516233683691 
		9 0.53444712713902198 10 0.41194858972514747
		5 0 0.11092166042317915 1 0.0098171100963787838 2 0.00050015637005948216 
		9 0.54934839915914391 10 0.3294126739512388
		5 0 0.18513695276834288 1 0.018609500415500912 2 0.00081097330402939366 
		9 0.57264068963395776 10 0.22280188387816913
		5 0 0.26386496800026388 1 0.028501008155081688 2 0.0010772087518061359 
		9 0.5848852912691993 10 0.12167152382364908
		5 0 0.33123540624511166 1 0.030473540466841292 2 0.00099505039912407313 
		9 0.58878958953522764 10 0.048506413353695439
		5 0 0.35358757301968119 1 0.024691087034836835 2 0.00066496906083109272 
		9 0.60519409604729979 10 0.015862274837351156
		5 0 0.38581342908685351 1 0.017061696444007735 2 0.00028216209647589008 
		9 0.59340348380630747 10 0.0034392285663554555
		5 0 0.50749207344445557 1 0.024122671428831587 2 0.00015661905114876365 
		9 0.46730888647311736 10 0.00091974960244652862
		5 0 0.72806417980898797 1 0.052821035268143031 2 0.00010463184196145639 
		9 0.21885348575491118 10 0.00015666732599659518
		5 0 0.8018581120656848 1 0.10678106950672796 2 0.00010053916267685286 
		9 0.091226731986483553 10 3.354727842665453e-05
		5 0 0.71222219566112799 1 0.26858198787577703 2 0.00045492536110048178 
		3 1.2467912905444738e-05 9 0.018728423189089082
		5 0 0.54956752452914881 1 0.43965318033832573 2 0.0065082678511727112 
		3 0.00097737363873531087 9 0.0032936536426175422
		5 0 0.31567703528610702 1 0.61644078355797727 2 0.050955170390651443 
		3 0.015563616940413007 4 0.0013633938248512139
		5 0 0.12095483530617206 1 0.60343807507795455 2 0.17063542872251711 
		3 0.082559598575913953 4 0.022412062317442274
		5 0 0.026187943826334846 1 0.35458277130923987 2 0.26549931198281668 
		3 0.22736409805511404 4 0.1263658748264947
		5 0 0.0014750476244603866 1 0.068426849517542271 2 0.14044663463254783 
		3 0.42234797721182776 4 0.3673034910136217
		5 0 2.2426077007454316e-05 1 0.0070958744299386752 2 0.039542415343023947 
		3 0.48385121830830463 4 0.4694880658417252
		5 0 7.824989255055443e-08 1 9.9574363053188579e-05 2 0.0048473991495432741 
		3 0.49831108402795321 4 0.49674186420955768
		5 0 1.5917822466175676e-07 1 2.8193446613432657e-05 2 0.0035635032575110125 
		3 0.49998183413941782 4 0.49642630997823317
		5 0 4.0837960639111055e-06 1 0.0041962417490176446 2 0.027764946716202603 
		3 0.49650460686124037 4 0.47153012087747537
		5 0 0.00023307572532948174 1 0.035416307818668849 2 0.099803205662368777 
		3 0.46998109064037469 4 0.39456632015325827
		5 0 0.0065022676111971761 1 0.25412183338833549 2 0.27285271233692515 
		3 0.31717622047287658 4 0.14934696619066554
		5 0 0.040323003718687057 1 0.51502015699267356 2 0.25187968611905348 
		3 0.15739428081142615 4 0.035382872358159866
		5 0 0.14067124682431184 1 0.70740266952412312 2 0.11018616697624833 
		3 0.037837396694433444 12 0.0039025199808833226
		5 0 0.24173912182548518 1 0.67049447054304323 2 0.02534122160203247 
		12 0.034673687615299556 13 0.027751498414139375
		5 0 0.25948861920764665 1 0.49523300779190688 2 0.0033341051016586493 
		12 0.13515615258622277 13 0.10678811531256512
		5 0 0.096473885121314551 1 0.15577873026466174 11 0.0069212441295646333 
		12 0.4098466520035467 13 0.33097948848091235
		5 0 0.039528152080204895 1 0.044714518212765834 11 0.0080148513234324804 
		12 0.5028053523098811 13 0.40493712607371574
		5 0 0.013704127565539143 1 0.010559009127820578 11 0.016290853991830379 
		12 0.55513334568084427 13 0.40431266363396551
		5 0 0.069393422275374358 1 0.020923800726749261 11 0.032946753705998325 
		12 0.54272612152863686 13 0.33400990176324119
		5 0 0.22355184762925084 1 0.041021807732027883 11 0.039828387231752353 
		12 0.45331292596114536 13 0.24228503144582364
		5 0 0.62142775720722132 1 0.12777498460222186 9 0.042724286184643981 
		12 0.1287579815574843 13 0.079314990448428629
		5 0 0.73931321832111863 1 0.16352688009967953 9 0.052972578417453238 
		12 0.026222922861017583 13 0.017964400300731095
		5 0 0.76848476935505139 1 0.092676402954960158 9 0.13327273363894948 
		12 0.0034105160262043821 13 0.0021555780248346109
		5 0 0.7447363870081648 1 0.068000811192281588 2 0.00047190339581912533 
		9 0.18658238639951474 11 0.00020851200421967834
		5 0 0.65297079166142835 1 0.017836134870282367 2 0.00012036884299710694 
		5 7.5258343217165914e-05 9 0.32899744628207511
		5 0 0.55908697127119489 1 0.0042754034570161459 2 2.9155928416356063e-05 
		5 2.6134825930410027e-05 9 0.43658233451744216
		5 0 0.40187410158394005 1 0.0016073241736394648 5 2.137038294552716e-05 
		9 0.59636985438575085 10 0.00012734947372404888
		5 0 0.33473085521687851 1 0.0013502236543170361 5 4.9490309080508111e-05 
		9 0.66319444945050854 10 0.00067498136921528113
		5 0 0.32744939899416375 1 0.0024749269689835589 5 0.00014342129712993326 
		9 0.66582487029305648 10 0.0041073824466663815
		5 0 0.32167147071185875 1 0.0038725005727070477 5 0.00025641571405750021 
		9 0.65781176318768275 10 0.0163878498136939
		5 0 0.28085539707549229 1 0.0047065498376534084 5 0.00035280876368364706 
		9 0.65271889372580605 10 0.061366350597364706
		5 0 0.20620946676650639 1 0.0041030131447190674 5 0.00033722570295916605 
		9 0.62788999784165522 10 0.1614602965441603
		5 0 0.12407803258677143 1 0.0027213494068589975 5 0.00025693227108070126 
		9 0.58840508016499093 10 0.28453860557029786
		5 0 0.0046765075150199857 1 0.00021823256152082103 5 5.3096627475173025e-05 
		9 0.49752638273063798 10 0.49752578056534585
		5 0 0.0050004277927397167 1 0.00023578075325116272 5 5.4522262352067694e-05 
		9 0.49735493335570347 10 0.49735433583595345
		5 0 0.0023590566891255253 1 3.8355596654693386e-05 5 6.656017748223663e-05 
		9 0.49876837971984239 10 0.49876764781689514
		5 0 0.0023581760224475885 1 3.902395085993843e-05 5 6.4851185139956527e-05 
		9 0.49876936030889185 10 0.49876858853266065
		5 0 0.073896082296871682 1 0.00024335324368544289 5 0.00092334799535840142 
		9 0.64856404075179475 10 0.2763731757122897
		5 0 0.15185124535304476 1 0.00035608215309877787 5 0.0015938630248928008 
		9 0.69197114163344664 10 0.15422766783551684
		5 0 0.25294191795542476 1 0.00040842741739610948 5 0.0019881604976863722 
		9 0.68590189619902797 10 0.058759597930464792
		5 0 0.34012494495887718 1 0.00032573778347876948 5 0.0016479809156875948 
		9 0.64142621386893284 10 0.01647512247302365
		5 0 0.38788702008234011 1 0.0001916369497824284 5 0.00096024402847435728 
		9 0.60661180663144132 10 0.0043492923079618559
		5 0 0.43274928786527506 1 6.640078810472238e-05 5 0.00042338461966694933 
		9 0.56601909057781286 10 0.00074183614914048073
		5 0 0.49267947354872182 1 2.6849522931846622e-05 5 0.00042237037122434633 
		9 0.50673938904209692 10 0.00013191751502511007
		5 0 0.60307916563181552 1 3.626940347997409e-05 5 0.0010858135369029088 
		9 0.39578104306149392 10 1.770836630788426e-05
		5 0 0.68219697140899671 1 0.00012415501123310923 5 0.0059987041419481907 
		9 0.31161447846567586 11 6.5690972146056908e-05
		5 0 0.75306568548127217 1 0.00032914140790063821 5 0.027235499581915658 
		9 0.21908124146841421 11 0.00028843206049733504
		5 0 0.77820947160067833 5 0.060439784580305043 9 0.1563653065860314 
		12 0.0030744961511045637 16 0.0019109410818805891
		5 0 0.7532215957709979 5 0.130971759495707 9 0.070839564677401906 
		12 0.027159067640676535 16 0.01780801241521663
		5 0 0.63327878473023669 5 0.1004626643949271 9 0.056487621641331809 
		12 0.13187695334010952 16 0.077893975893395084
		5 0 0.23218226011190118 5 0.031849655677281721 11 0.039407024896849337 
		12 0.4626845069570471 16 0.23387655235692056
		5 0 0.072817904492962951 5 0.017142510986714665 11 0.030066916477053104 
		12 0.56829828511817215 16 0.31167438292509708
		5 0 0.012720818561676757 5 0.011007205873742784 11 0.012304937588597615 
		12 0.5976519461173746 16 0.36631509185860828
		5 0 0.035976254042452069 5 0.066169786328506133 11 0.0044191121777986944 
		12 0.53475151964572842 16 0.35868332780551448
		5 0 0.13731366618690055 5 0.19339505573180574 11 0.0030356287824281876 
		12 0.39706635738362839 16 0.26918929191523705
		5 0 0.36446742267394772 5 0.5012146970505833 6 0.0031407052228150109 
		12 0.078222784281124308 16 0.052954390771529761
		5 0 0.30540234000639216 5 0.62674466355901703 6 0.024172348887435975 
		12 0.025927536344471938 16 0.017753111202682945
		5 0 0.17943328939103553 5 0.67551090502240052 6 0.11658507725853483 
		7 0.024832769954023219 8 0.0036379583740060225
		5 0 0.051936962869749206 5 0.46304173810223609 6 0.30485322970205875 
		7 0.12887344598848488 8 0.05129462333747118
		5 0 0.0084206232882998479 5 0.17004912439660605 6 0.298168920605687 
		7 0.30895939690541269 8 0.21440193480399439
		5 0 9.4374118317363111e-05 5 0.010510520305074085 6 0.070928749285242662 
		7 0.47290267002268865 8 0.44556368626867715
		5 0 1.0012147003761205e-06 5 0.0022797162685342675 6 0.027174679201017297 
		7 0.49021654308334178 8 0.4803280602324061
		5 0 2.0868990846736433e-07 5 1.9278179028563581e-05 6 0.0041832008420462329 
		7 0.49859904843348568 8 0.49719826385553123
		5 0 1.7035487941136243e-07 5 0.00027839939342435888 6 0.0051647759689118517 
		7 0.49777543376086653 8 0.49678122052191781
		5 0 2.2480440486679268e-05 5 0.0088966462843181673 6 0.04550421120743648 
		7 0.47780348156230612 8 0.46777318050545263
		5 0 0.0031344268658608631 5 0.073303966608904703 6 0.15572137615115025 
		7 0.40281230894979986 8 0.36502792142428436
		5 0 0.048414432169271757 5 0.3468269637354302 6 0.2852509524034797 
		7 0.1944096719363109 8 0.12509797975550752
		5 0 0.19043684298090061 5 0.54609755028196594 6 0.1771838342258629 
		7 0.06424081347809156 8 0.022040959033178955
		5 0 0.42831015661832522 5 0.50887344541663926 6 0.049769360967133247 
		7 0.011655630763187652 8 0.0013914062347143775
		5 0 0.6572348464013037 5 0.33022050871378128 6 0.0056592115732430892 
		7 0.0007452975439205822 9 0.006140135767751566
		5 0 0.7815054318154363 5 0.18741209739511988 6 0.00032009395064702158 
		7 1.0602345926077821e-05 9 0.030751774492870816
		5 0 0.81603836785250783 5 0.063482825296783479 6 7.054528059614751e-05 
		9 0.12037684853418552 10 3.1413035927046425e-05
		5 0 0.72239141884356606 5 0.024253473717610722 6 6.2822050969145844e-05 
		9 0.25303950090661842 10 0.00025278448123566545
		5 0 0.54623826353550342 1 0.0001066072706155596 5 0.0087164335354969896 
		9 0.44321084266253052 10 0.0017278529958535196
		5 0 0.4732972219233999 1 0.00024738321859062254 5 0.0075452798356770807 
		9 0.51299033122859961 10 0.0059197837937327779
		5 0 0.41346150845997881 1 0.00055918526427604855 5 0.012343183919199219 
		9 0.55118936171610666 10 0.022446760640439135
		5 0 0.35533147930544845 1 0.00077765885833702198 5 0.015487560770410379 
		9 0.57286143063398731 10 0.055541870431816763
		5 0 0.25535959023728033 1 0.00078777139175800878 5 0.01367817986807086 
		9 0.60109945208039706 10 0.12907500642249378
		5 0 0.15072881023615955 1 0.00061738746008656103 5 0.0083127874434857224 
		9 0.60016274266147251 10 0.2401782721987957
		5 0 0.077891267868684833 1 0.00041909217128354277 5 0.0042410465962445373 
		9 0.56043911394311419 10 0.35700947942067307
		5 0 0.030290584037965602 1 0.00025102885028319399 5 0.0016402691302467955 
		9 0.51401937018618193 10 0.45379874779532248
		5 0 0.0062475484367998796 1 0.00013640627304142643 5 0.00042511796851657236 
		9 0.49676230346793387 10 0.49642862385370828;
	setAttr ".wl[800:853].w"
		5 0 0.0038753610826221616 1 0.00011674570480617471 5 0.00032308932120869884 
		9 0.49784247698690537 10 0.49784232690445757
		5 0 0.0027795031924301239 1 9.6642171495692797e-05 5 0.00025296253700569037 
		9 0.49843548769918355 10 0.49843540439988487
		5 0 0.0015845063510850751 1 6.0547596495773797e-05 5 0.00015057955924240938 
		9 0.499102213745233 10 0.49910215274794378
		5 0 0.00079501066379853444 1 3.0830970433657255e-05 5 7.2857237487925034e-05 
		9 0.49955068661245977 10 0.49955061451582017
		5 0 0.00042945930585071691 1 1.6152316704841714e-05 5 3.4781930317814726e-05 
		9 0.49975985091803893 10 0.49975975552908775
		5 0 0.00027825913239523095 1 1.0194201753566874e-05 5 1.7381826947867257e-05 
		9 0.49984718095966185 10 0.49984698387924137
		5 0 0.00034866817026993655 1 1.3163080915502566e-05 5 1.9363472940886426e-05 
		9 0.49980963207327511 10 0.49980917320259832
		5 0 0.0005239031656395169 1 1.8991621588608271e-05 5 2.9847737251027497e-05 
		9 0.49971395410151143 10 0.49971330337400949
		5 0 0.00078120907588415719 1 2.535899722791677e-05 5 4.5197331162369704e-05 
		9 0.49957445427059699 10 0.49957378032512861
		5 0 0.001196997636742666 1 2.5653656456032613e-05 5 4.0601928050706901e-05 
		9 0.49936881069156291 10 0.49936793608718782
		5 0 0.0011937178743463843 1 2.5274602278521854e-05 5 4.1827443539303272e-05 
		9 0.49937000560377764 10 0.49936917447605805
		5 0 0.0038447992884193634 1 4.8183531734425523e-05 5 4.1411406247175155e-05 
		9 0.52051196090504015 10 0.47555364486855889
		5 0 0.0031666445426759247 1 3.5072479712498673e-05 5 3.7877179958696277e-05 
		9 0.51120852029856012 10 0.48555188549909267
		5 0 0.0017107296627105126 1 3.2563899570878982e-05 5 4.5914593441389387e-05 
		9 0.49910586538844282 10 0.49910492645583437
		5 0 0.0015136420436438135 1 2.9695984377571619e-05 5 4.1850278854447035e-05 
		9 0.49920788110743058 10 0.49920693058569349
		5 0 0.0017194485473751341 1 3.0518952545312912e-05 5 5.6672914748830342e-05 
		9 0.49909701259866002 10 0.49909634698667088
		5 0 0.0016924239794759964 1 3.0277622395125552e-05 5 5.6095359945668409e-05 
		9 0.4991109335719433 10 0.49911026946623988
		5 0 0.0093133594667910644 1 0.00012346839551655698 5 0.00041080306678122931 
		9 0.5056371501741791 10 0.48451521889673205
		5 0 0.018847356467431374 1 0.00020107216112049637 5 0.00094460888593675125 
		9 0.50714303527646587 10 0.47286392720904552
		5 0 0.012177272570204609 1 0.0001707078021297484 5 0.00070059175283740383 
		9 0.49793397616616336 10 0.4890174517086649
		5 0 0.016692510742853529 1 0.0001850948688623851 5 0.00094513328921488665 
		9 0.50048429212531287 10 0.48169296897375641
		5 0 0.019045603736686043 1 0.00018663615404095911 5 0.0010667733185317713 
		9 0.50265809275829987 10 0.47704289403244127
		5 0 0.018331149532276221 1 0.00016584390193486958 5 0.00098246932247944671 
		9 0.50437701475325425 10 0.47614352249005509
		5 0 0.015283320903646617 1 0.00012659758300646054 5 0.0007061616179629193 
		9 0.50880990952529115 10 0.47507401037009284
		5 0 0.010234219300153013 1 9.6144998138685873e-05 5 0.00027126184829158771 
		9 0.52034934004202993 10 0.46904903381138674
		5 0 0.0050733972923262772 1 7.03432329979808e-05 5 7.946639889105532e-05 
		9 0.51213688305982463 10 0.48263991001595985
		5 0 0.10989231166743568 1 0.00044761732367391751 5 0.00056227664735214824 
		9 0.73532676900679872 10 0.15377102535473963
		5 0 0.052281210852466946 1 0.00023632800968641479 5 0.00034186802714028286 
		9 0.67496451371060318 10 0.27217607940010319
		5 0 0.13821802479885267 1 0.00077950542428722254 5 0.00056955708768195495 
		9 0.78441351660659409 10 0.076019396082584054
		5 0 0.15250024640179072 1 0.00093512099054349001 5 0.00057450127190271567 
		9 0.78261142832421493 10 0.063378703011548271
		5 0 0.019548440927765278 1 0.00016473846172893869 5 0.00016020102747947121 
		9 0.64507023517858453 10 0.33505638440444174
		5 0 0.011824084322692059 1 0.00016035601654277722 5 0.00011155463713596036 
		9 0.64277634425880459 10 0.34512766076482476
		5 0 0.024254587503703469 1 0.00042386127021342042 5 0.00012738994517277747 
		9 0.63425782974349998 10 0.34093633153741032
		5 0 0.068830565325394402 1 0.00099633333171736393 5 0.00022227975923077347 
		9 0.64578219236941292 10 0.28416862921424457
		5 0 0.013907139499685913 1 0.00026753145297948161 5 0.00010728633811139731 
		9 0.63866761993984811 10 0.34705042276937514
		5 0 0.13880494642835356 1 0.001611984832951353 5 0.00040232228764541149 
		9 0.69579203693201797 10 0.16338870951903181
		5 0 0.16306043599379028 1 0.0014435348602954102 5 0.00056510134911045326 
		9 0.75164407228330654 10 0.083286855513497349
		5 0 0.16889881923411895 1 0.0013189426499050675 5 0.00059988840661242095 
		9 0.76039012401713701 10 0.068792225692226566
		5 0 0.00603835529260129 1 7.7542540098770541e-05 5 0.00021084457773637826 
		9 0.50776553001026847 10 0.48590772757929512
		5 0 0.0029480549537991702 1 6.1595386187241131e-05 5 0.00015385895939640029 
		9 0.4996333194639897 10 0.49720317123662755
		5 0 0.01826899064181248 1 0.00013191030789439032 5 0.00045366217005507795 
		9 0.5379500257492873 10 0.44319541113095068
		5 0 0.032941015078099753 1 0.00014796044234066839 5 0.00042920412746545809 
		9 0.58805624078592844 10 0.37842557956616557
		5 0 0.016229510661365087 1 8.1685955910044074e-05 5 0.0001546671871037063 
		9 0.5514147065638062 10 0.43211942963181493
		5 0 0.0036799917976946925 1 3.2730004137751136e-05 5 4.5794194484761353e-05 
		9 0.51176500163580907 10 0.48447648236787355
		5 0 0.0010596389563791572 1 2.1702334447429322e-05 5 2.5658568092687317e-05 
		9 0.50089156974218629 10 0.49800143039889438
		5 0 0.0010972120362200413 1 2.8936572137120939e-05 5 5.4488227465702446e-05 
		9 0.49941003875523093 10 0.49940932440894631
		5 0 0.0019691606115906728 1 0.00015104507063347082 5 3.4768102181380155e-05 
		9 0.50240691817807503 10 0.49543810803751948
		5 0 0.0058846315883371069 1 0.00042647769391161879 5 7.2999815136170283e-05 
		9 0.51197386314359983 10 0.48164202775901543
		5 0 0.0015265358493334949 1 6.5010553038897869e-05 5 2.2311769719455905e-05 
		9 0.50050364497796462 10 0.49788249684994351
		5 0 0.0052132152297816332 1 0.0001316302753945165 5 3.3874981904366457e-05 
		9 0.507785024719839 10 0.48683625479308063
		5 0 0.023869527292685901 1 0.00048668604143157888 5 8.540993867532926e-05 
		9 0.53670475964288789 10 0.4388536170843193
		5 0 0.058453978982895262 1 0.001383309432340641 5 0.00016777163967026911 
		9 0.55762840266760783 10 0.38236653727748593
		5 0 0.036242878348256395 1 0.0012815175161378649 5 0.00014907686051961636 
		9 0.53031977232823024 10 0.43200675494685586
		5 0 0.013268300498941907 1 0.00064610104383649688 5 9.6691390445560404e-05 
		9 0.51583921409162703 10 0.47014969297514897;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 19 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 19 ".lw";
	setAttr -s 19 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 19 ".ifcl";
	setAttr -s 19 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "4B3F8E57-443A-EF51-37EC-4C98369C4333";
createNode objectSet -n "skinCluster1Set";
	rename -uid "10EF2FE9-47FD-88D7-A9FE-25935E168E80";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "0D0C0E20-435E-26AD-964B-F3AB46E98620";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "18AAE0FD-4133-AC55-62B9-F986AF3BBC2B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "B529887F-4263-A3A5-B073-83A5ED70E24C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId18";
	rename -uid "4B2596F5-4F31-5965-7240-7E8A802AAA42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "105D32FD-42F1-0E55-CCDC-2A9AECE7EC3F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "72A1E643-4BA1-17F2-1CE2-68939BAD2DAE";
	setAttr -s 20 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 20 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 -3.0964120156795616e-13
		 389.44428480846318 11.742333399462041 0 0 0 -3.0964120156795616e-13 389.44428480846318
		 11.742333399462041 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 693.2591049844857 -10.863193994019486 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.037156669526004327 0.70612986193032179 0.037156669526004826 0.70612986193032179 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 113.08467334542688 0 -1.0097419586828951e-28 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.4998105917102787 0.86613473109800942 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 76.370366049616621 17.700909147617722
		 -5.8058065200469595e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.21555799630675662 0.97649103950226612 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 44.712462025315745 -1.1368683772161603e-13
		 -3.3991427765753053e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.069584962510425993 0.99757602867772566 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 151.24796034446649 0 -1.1530132334150578e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.48596751276331523 -0.51364927386168568 0.48596751276331518 0.5136492738616858 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -123.36133311112781 20.556702578097433
		 1.4406718598563026e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.40949143450230868 0.91231396189537817 2.0692484631557447e-16 4.6101190513592943e-16 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 73.872668219748675 18.685129073591327
		 -2.6414448448142804e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.2269029834548609 0.97391736615550861 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 46.497835429796737 -5.6843418860808015e-14
		 7.6096940129224631e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.064683472239510056 0.99790583143853839 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 149.09876576435767 -1.1368683772161603e-13
		 3.8478145494965174e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.65601129728153784 0.75475107011450715 -2.5115843189145575e-16 -2.8896163225220214e-16 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -9.9679267268062478e-17 -1.4349227608286059e-16
		 7.1516024692830336e-33 0 5.9772031220009154 69.690445062687672 4.8841035045012264e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.66430703123872281 0.74745981045591647 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 153.6463994835575 -1.2982670494210424e-14
		 1.0693520337471414e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66430703123872281 0.74745981045591647 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.319036087236356 -128.3485043109614
		 -8.9950262068033032e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.73570035212996754 0.6773071621323975 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 96.445538028646808 2.1316282072803006e-14
		 -6.7361288948194095e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.27504395526822795 0.9614316526256087 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 97.742394946258628 0
		 -6.0927547525038068e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.95809925362628934 -0.28643641563311617 -1.7539171978216831e-17 5.8666659210945168e-17 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 210.19708126070879 1.4210854715202004e-14
		 1.4647986918445899e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0032403787251548666 0.99999474995907733 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 233.16963133671993 -5.6843418860808015e-13
		 1.6255796779416383e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.66611361828495563 0.74585028493346062 4.0787695525056637e-17 4.5670158204345196e-17 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 32.917094877738805 -99.282733429170577
		 -5.2319877109110837e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.27878922581654703 0.96035231429335888 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 209.76105882229987 7.1054273576010019e-14
		 -1.4640622072363978e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99994668785233454 -0.010325766467714164 -7.6932955924988677e-11 7.4501834516999268e-09 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 234.9773030334195 4.9737991503207013e-14
		 1.6366434399016431e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.95742240340947193 0.28869073668829476 -1.7923892582690483e-09 5.9443321638343817e-09 1
		 1 1 yes;
	setAttr -s 20 ".m";
	setAttr -s 20 ".p";
	setAttr -s 20 ".g[0:19]" yes no no no no no no no no no no no no no 
		no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "3EB4408A-4253-8507-E03A-968C1C3CF41B";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		5 0 0.069384840012259183 1 0.00030158953470403707 5 0.00032431989382145782 
		9 0.78375336553715014 10 0.14623588502206503
		5 0 0.050366260735573098 1 0.00022135158618815227 5 0.00026966617453600729 
		9 0.74179241640396176 10 0.20735030509974092
		5 0 0.080254779906881721 1 0.00045080485309376833 5 0.00035196936039312999 
		9 0.81504604471837339 10 0.10389640116125802
		5 0 0.030393014809384829 1 0.0001899990053472953 5 0.00018382350683783386 
		9 0.71848224747171774 10 0.25075091520671233
		5 0 0.076175478268947064 1 0.00047078473190482437 5 0.00032532903165814558 
		9 0.82328440868478403 10 0.099743999282705872
		5 0 0.022656371423772494 1 0.00018060096648770006 5 0.00014918159180913514 
		9 0.7060315929460006 10 0.27098225307193013
		5 0 0.067407990264507694 1 0.00026569180243275287 5 0.00030274909595745021 
		9 0.79123647024044652 10 0.1407870985966557
		5 0 0.058881569011942608 1 0.00024225599671787233 5 0.0002833062042775687 
		9 0.77022810218037729 10 0.17036476660668459
		5 0 0.062094211925382031 1 0.00032482684414045828 5 0.00027693191593609201 
		9 0.7950544943328296 10 0.14224953498171178
		5 0 0.042231206763846001 1 0.00021942371971116176 5 0.00021967153601985074 
		9 0.7490054387627888 10 0.20832425921763406
		5 0 0.057306951172453033 1 0.00036119134082572487 5 0.00024573937977623344 
		9 0.80565669152141972 10 0.13642942658552523
		5 0 0.037432846376222809 1 0.0002413613396748538 5 0.00018635308176809403 
		9 0.75569773482745495 10 0.20644170437487935;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "8F9AEEB5-43A1-BF51-B257-3AA7FA5EA439";
createNode objectSet -n "skinCluster2Set";
	rename -uid "C36394A8-4000-0331-CDF6-CB8E0C09902F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "BBE4E3DC-46BF-DEA3-3FA0-8C9E7D2F5BC3";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "CC4F99E7-4382-D876-551E-8B900E0A562A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "3669AFA5-4C03-53AA-8F1A-1FA8140BBCCA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	rename -uid "C206F39F-4F41-75A3-A31C-3281A9202E10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "7E3B9167-4210-B3C2-8601-60BD51BA58EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	rename -uid "6F2FB74E-444B-D99A-1897-BE907E841677";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		5 0 0.03828424655305384 1 0.00050147055144597477 5 0.00014740688427977925 
		9 0.68923081958395682 10 0.27183605642726361
		5 0 0.069135182361966835 1 0.00073949761232789074 5 0.00019633945356976217 
		9 0.71706834737753933 10 0.21286063319459611
		5 0 0.1004831087706456 1 0.00090785155495000261 5 0.00034271848107154593 
		9 0.78605946277689942 10 0.11220685841643342
		5 0 0.094372826950747099 1 0.00090071384674450647 5 0.00026878129519685633 
		9 0.75361908517714415 10 0.15083859273016734
		5 0 0.031742798307326861 1 0.00041086617543749588 5 0.00013931859254346624 
		9 0.69913031831006855 10 0.26857669861462358
		5 0 0.10757682791001236 1 0.00096281078698104352 5 0.000401539955451379 
		9 0.79851202433793544 10 0.092546797009619805
		5 0 0.048396231635580371 1 0.00053769821940399473 5 0.00016534620219312886 
		9 0.71713002073170051 10 0.23377070321112184
		5 0 0.068376603980085993 1 0.00069380508884435465 5 0.00019018507351775557 
		9 0.73093348743625952 10 0.19980591842129231
		5 0 0.076622364862968584 1 0.00071690031651267352 5 0.00023771779807732672 
		9 0.75979572154229991 10 0.16262729548014163
		5 0 0.084133607127286986 1 0.000814752642860909 5 0.00022167828572746732 
		9 0.74266564341781471 10 0.17216431852630995
		5 0 0.05088462398306294 1 0.00050708780198852662 5 0.00018809969745996834 
		9 0.74396583538744465 10 0.20445435313004398
		5 0 0.08180167260286518 1 0.00073365053906146807 5 0.00029413197015236859 
		9 0.78447753970656053 10 0.13269300518136035;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak3";
	rename -uid "CC1F9B6B-48B1-748C-4666-9AB99411EDDF";
createNode objectSet -n "skinCluster3Set";
	rename -uid "6A30DDED-4479-DDCC-0013-1AB8DDCCD76E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "CC381A3E-4E3C-6A0B-5901-088F8585DDBF";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "12505B3F-45A4-3211-92C5-AE9C5F42CC11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "E5A12F41-4D84-2943-DF90-999BA7A51497";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId22";
	rename -uid "3C3C1C7C-4414-BA4D-67F7-2399AA6D5CC4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "61C2B72A-4371-D649-5B37-D3816FF5D1FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	rename -uid "0050646D-41AB-64FD-A6DD-BDA0B897835C";
	setAttr -s 49 ".wl";
	setAttr ".wl[0:48].w"
		5 0 0.005012925210009643 1 0.00026571786793805233 5 6.2896424827677257e-05 
		9 0.49732951664853436 10 0.49732894384869031
		5 0 0.0031925207302180144 1 0.00018944346056645864 5 4.675702884097163e-05 
		9 0.49828594306657181 10 0.49828533571380274
		5 0 0.0037813190530416843 1 0.00017760383442552911 5 5.1184674264606052e-05 
		9 0.49799526263972155 10 0.49799462979854664
		5 0 0.0024592578304811047 1 0.00013206247352645902 5 4.0371486561772057e-05 
		9 0.49868455461994798 10 0.49868375358948275
		5 0 0.0026354744431747287 1 0.00014141651986919208 5 4.3284561926712417e-05 
		9 0.4985903016318371 10 0.49858952284319219
		5 0 0.0031927556459194492 1 0.00018867468759764584 5 4.8112023469222804e-05 
		9 0.49828553537154824 10 0.49828492227146537
		5 0 0.0038711066855702911 1 0.00018703933194182137 5 5.4403225955057468e-05 
		9 0.49794403939957732 10 0.49794341135695547
		5 0 0.0046912017110668502 1 0.00025408700598266099 5 6.2306127962680229e-05 
		9 0.49749648758348597 10 0.49749591757150169
		5 0 0.0027420640593575898 1 0.00014519395002321182 5 4.3773588679097943e-05 
		9 0.49853484459297814 10 0.49853412380896206
		5 0 0.0033560375730289729 1 0.00019526758644485817 5 4.9465928598137378e-05 
		9 0.49819990802039638 10 0.49819932089153163
		5 0 0.0038929751858959635 1 0.00019071889381069639 5 5.3996158879780964e-05 
		9 0.49793145451240473 10 0.49793085524900882
		5 0 0.0043449936504523995 1 0.00024164309101623742 5 5.9350650229603375e-05 
		9 0.4976772919034379 10 0.49767672070486396
		5 0 0.0027197022858044227 1 0.00014339044980493407 5 4.1375569794859722e-05 
		9 0.49854808468443629 10 0.49854744701015946
		5 0 0.0030505510006374526 1 0.00017059364474731893 5 4.4476549468693783e-05 
		9 0.49836748638896322 10 0.49836689241618332
		5 0 0.0033317109024350415 1 0.00016720180706081441 5 4.674034829029554e-05 
		9 0.49822747344091606 10 0.49822687350129785
		5 0 0.0036929146170586349 1 0.00019920935761455008 5 5.0436970949585276e-05 
		9 0.49802901144080974 10 0.49802842761356775
		5 0 0.002766434686192584 1 0.0001453550192097348 5 4.1564937919098484e-05 
		9 0.4985236269718174 10 0.49852301838486135
		5 0 0.0029191768894062512 1 0.00015875046747286877 5 4.2158393853751037e-05 
		9 0.49844025349395349 10 0.49843966075531365
		5 0 0.0031655440705215805 1 0.0001604091548416014 5 4.486862958097247e-05 
		9 0.49831488645493499 10 0.49831429169012098
		5 0 0.0032004108127266727 1 0.00016883506560241274 5 4.4276492008132181e-05 
		9 0.49829353463930554 10 0.49829294299035726
		5 0 0.0043382330606148009 1 0.00024440944877580196 5 5.8153515127437123e-05 
		9 0.49767988853480399 10 0.49767931544067817
		5 0 0.004113474011663263 1 0.00023621585609272686 5 5.7634797957451536e-05 
		9 0.49779662321972762 10 0.49779605211455902
		5 0 0.0037453072272677569 1 0.00021205289616565656 5 5.2692486753151345e-05 
		9 0.49799526210119394 10 0.49799468528861929
		5 0 0.0032332497826220649 1 0.00017632917190552546 5 4.5395894029675373e-05 
		9 0.49827280644830124 10 0.49827221870314131
		5 0 0.0029873125277705896 1 0.00015994650090789928 5 4.2424456868682303e-05 
		9 0.49840545434721534 10 0.49840486216723751
		5 0 0.0029840837770784751 1 0.00015421970207910211 5 4.3324028294242397e-05 
		9 0.49840948454801037 10 0.49840888794453791
		5 0 0.0029209542044866246 1 0.00014910928494107356 5 4.3104378259262148e-05 
		9 0.49844372289140243 10 0.49844310924091068
		5 0 0.0032560299585987539 1 0.00016137605032247846 5 4.8030053035966358e-05 
		9 0.49826760610577303 10 0.49826695783226982
		5 0 0.0031838953299699068 1 0.00015905348541393283 5 4.8925581282139938e-05 
		9 0.49830441998894476 10 0.49830370561438914
		5 0 0.0030704110583870689 1 0.000151431487501598 5 4.6282426969517815e-05 
		9 0.49836630095351536 10 0.49836557407362647
		5 0 0.0028059916631425199 1 0.00014962965004720977 5 4.1315949408449447e-05 
		9 0.4985018318950547 10 0.49850123084234704
		5 0 0.0027404631136589306 1 0.00014928438711020234 5 4.0791497840373523e-05 
		9 0.49853503496337959 10 0.49853442603801118
		5 0 0.0027247330717327669 1 0.00015405190406697695 5 4.2360154798433899e-05 
		9 0.4985397485754216 10 0.49853910629398013
		5 0 0.0025136797193314902 1 0.00014514587908785005 5 4.1475143102079786e-05 
		9 0.49865020464743637 10 0.49864949461104219
		5 0 0.0024342606129348623 1 0.00014313514505622166 5 3.9965008159679374e-05 
		9 0.49869167934986774 10 0.4986909598839816
		5 0 0.0045517951841370346 1 0.00022623688038889928 5 5.8503739842196837e-05 
		9 0.49758202586263545 10 0.49758143833299628
		5 0 0.0044072408949060301 1 0.00022190267442932871 5 5.8974100807495816e-05 
		9 0.49765623214687288 10 0.4976556501829843
		5 0 0.0040874200564176826 1 0.00021250861558235869 5 5.5194677397155384e-05 
		9 0.49782272937483191 10 0.49782214727577095
		5 0 0.0034168784011520386 1 0.00017609675210144448 5 4.654535329717529e-05 
		9 0.49818053582812599 10 0.49817994366532348
		5 0 0.003142105181624031 1 0.00016089531252592927 5 4.3961327127722278e-05 
		9 0.49832681636741682 10 0.49832622181130554
		5 0 0.0029762738551151178 1 0.00015634341586305786 5 4.2480308582233232e-05 
		9 0.49841274812536235 10 0.49841215429507729
		5 0 0.0049199715247235125 1 0.00026287651958507743 5 6.0672785190574138e-05 
		9 0.49737852651143377 10 0.49737795265906715
		5 0 0.004050720831613893 1 0.00022909406422669861 5 5.3649076857399955e-05 
		9 0.49783355655777267 10 0.49783297946952937
		5 0 0.0031678555714876183 1 0.00018773342839235584 5 4.5365379676399312e-05 
		9 0.49829982110601284 10 0.49829922451443082
		5 0 0.0024436761840209865 1 0.00014636653746839907 5 3.8604496272224465e-05 
		9 0.49868601286499242 10 0.49868533991724601
		5 0 0.0024519645497308659 1 0.00013031188279488248 5 3.8634598638136014e-05 
		9 0.4986899189569533 10 0.49868917001188295
		5 0 0.0031593306110253103 1 0.00014923906993656209 5 4.4179587024503773e-05 
		9 0.49832396833184561 10 0.49832328240016804
		5 0 0.00401573901290345 1 0.00018847508967456087 5 5.0868819084242138e-05 
		9 0.49787276661799534 10 0.4978721504603425
		5 0 0.0048422237715634369 1 0.00024212180846667076 5 5.8565140109392268e-05 
		9 0.49742883759169526 10 0.49742825168816523;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak4";
	rename -uid "4CD230CF-489E-126A-2AB6-85B6DF4F318E";
createNode objectSet -n "skinCluster4Set";
	rename -uid "044B7C28-4F7F-C4A2-659A-B296DB3EDAF9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "D0ED2C34-49C4-99D6-F50B-0396B648C571";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "373D6A0C-45C2-1072-3974-449DC4B14B46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "B038A503-4BBF-8D55-3B21-B6A23B53E238";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId24";
	rename -uid "5E8F53E8-4C87-C806-D271-19A6F0B50536";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "883369D7-4942-B25F-D1BD-2A9B1087D28E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	rename -uid "5D640929-45DD-6C4E-64DF-9096CB1EA682";
	setAttr -s 24 ".wl";
	setAttr ".wl[0:23].w"
		5 0 0.0063530903890689936 1 0.00032132483474389283 5 6.8558867215337197e-05 
		9 0.49662887123555149 10 0.49662815467342025
		5 0 0.0038984229622860533 1 0.00022158351869805233 5 4.9588959210317465e-05 
		9 0.4979155674285205 10 0.49791483713128498
		5 0 0.0039953441441326343 1 0.00017792304923823675 5 4.8204623970275149e-05 
		9 0.49788957871981637 10 0.49788894946284246
		5 0 0.0021924088904914777 1 0.00011161150060017173 5 3.4122445260301343e-05 
		9 0.49883129615163085 10 0.49883056101201728
		5 0 0.0062670521242061397 1 0.00031086370609879676 5 6.7674471060537151e-05 
		9 0.49667754242551898 10 0.49667686727311561
		5 0 0.0038245307441042474 1 0.00021630979342445521 5 4.8989749143962164e-05 
		9 0.4979554464301052 10 0.4979547232832221
		5 0 0.0035935100547286659 1 0.00015923825720039778 5 4.7155092040527955e-05 
		9 0.49810036648547346 10 0.49809973011055697
		5 0 0.0021720568773882514 1 0.00011292721834342366 5 3.5701622236154531e-05 
		9 0.49884003824691764 10 0.49883927603511458
		5 0 0.0052312180735551812 1 0.00028087098039034309 5 6.0569172741444577e-05 
		9 0.49721404684418108 10 0.49721329492913185
		5 0 0.0054901025787679096 1 0.00028828904085393607 5 6.2268320895657344e-05 
		9 0.49708003315921712 10 0.49707930690026542
		5 0 0.0027803801575371954 1 0.00012986933605424797 5 4.1667714752773263e-05 
		9 0.49852439393313935 10 0.49852368885851633
		5 0 0.0028250851664101393 1 0.00012440166181735738 5 3.9098822543144074e-05 
		9 0.49850604881685062 10 0.49850536553237879
		5 0 0.0024081257778635393 1 0.00014021473965280585 5 3.7442920857558594e-05 
		9 0.49870747040964081 10 0.49870674615198535
		5 0 0.0025792223764747753 1 0.00015034390121199315 5 3.7624837134077896e-05 
		9 0.49861676157083862 10 0.49861604731434073
		5 0 0.0056608610769646271 1 0.00027042052275144343 5 6.1910398894332464e-05 
		9 0.4970037238465656 10 0.49700308415482392
		5 0 0.0050339395847533346 1 0.00023744143405894744 5 5.8565846860296799e-05 
		9 0.49733533563446986 10 0.49733471749985758
		5 0 0.0057992925430783758 1 0.00029026640392851945 5 6.46583615314873e-05 
		9 0.49692322592645777 10 0.49692255676500385
		5 0 0.0052259152132226377 1 0.00027616559013356662 5 6.0099595332771113e-05 
		9 0.4972192694057927 10 0.49721855019551819
		5 0 0.0037910614556279521 1 0.00021371284137562126 5 4.9035107420015578e-05 
		9 0.49797345141798371 10 0.49797273917759266
		5 0 0.0024180668001402375 1 0.00014487024445176692 5 3.8888546627949791e-05 
		9 0.49869944264783517 10 0.49869873176094487
		5 0 0.0024058965826577691 1 0.000127831692409564 5 3.9667450274341411e-05 
		9 0.49871367125097327 10 0.49871293302368525
		5 0 0.003032398758871398 1 0.00014457678800837128 5 4.6331835141750305e-05 
		9 0.49838869329888735 10 0.49838799931909122
		5 0 0.003884198455238273 1 0.00017909761132092143 5 5.2197562409655158e-05 
		9 0.49794256895953681 10 0.49794193741149423
		5 0 0.0050295850969119945 1 0.00024028620213453316 5 6.0163343512984598e-05 
		9 0.49733528677076683 10 0.49733467858667374;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak5";
	rename -uid "5220F1A1-4F7A-9305-A720-5E8CC7B803F1";
createNode objectSet -n "skinCluster5Set";
	rename -uid "CE8FFAB1-4726-F2BC-4193-F0B7DFE3FB68";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "C00E4742-499E-2DBF-B4C5-1CA6318267D9";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "F78344D6-4DCD-D1DE-4789-848C189E90B6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	rename -uid "4F4B265A-4863-ACA3-7FC7-DD98E6295C6B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId26";
	rename -uid "F95F9C99-4EE0-ED26-F37A-A3A7FBB101AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "28BD3755-459B-591F-132E-2A92F9188BC5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster6";
	rename -uid "905E8DBD-4F0B-965B-1D8F-69B184C8E66C";
	setAttr -s 49 ".wl";
	setAttr ".wl[0:48].w"
		5 0 0.0024377216274490947 1 4.3276775747904827e-05 5 7.8724518282079784e-05 
		9 0.49872046302525669 10 0.49871981405326438
		5 0 0.0015999736516646699 1 3.3464463464039672e-05 5 5.8750907171784136e-05 
		9 0.49915426167496391 10 0.49915354930273559
		5 0 0.0022250064426851662 1 4.0893186207730594e-05 5 5.9906499673125764e-05 
		9 0.49883753445741286 10 0.49883665941402111
		5 0 0.001443683941267817 1 3.1149883672441891e-05 5 4.3942464206024132e-05 
		9 0.49924107718428845 10 0.4992401465265654
		5 0 0.0023753875628344779 1 4.2532098813630522e-05 5 7.6203199731702466e-05 
		9 0.49875326175585805 10 0.498752615382762
		5 0 0.0016140073489320308 1 3.348299190813909e-05 5 5.8042416005194415e-05 
		9 0.49914759579006002 10 0.49914687145309455
		5 0 0.0023999093031343522 1 4.4922025504961276e-05 5 6.6479061621798103e-05 
		9 0.49874476162159587 10 0.49874392798814299
		5 0 0.0015410223801797121 1 3.3904549275544196e-05 5 4.8168769038681712e-05 
		9 0.49918890455818743 10 0.49918799974331868
		5 0 0.0023440696955839067 1 4.1123431642707545e-05 5 7.4225326505976242e-05 
		9 0.498770607532045 10 0.49876997401422235
		5 0 0.0016978198861011414 1 3.3443045226470509e-05 5 5.8945747464783677e-05 
		9 0.49910523692359787 10 0.49910455439760987
		5 0 0.0023716095842043448 1 4.4061730219013197e-05 5 6.7189958917608658e-05 
		9 0.49875896113543233 10 0.49875817759122676
		5 0 0.0015976618792023726 1 3.4108879854995576e-05 5 5.0145201313398957e-05 
		9 0.49915947420171058 10 0.49915860983791854
		5 0 0.0022746753928531683 1 3.912047202017031e-05 5 6.894805110223623e-05 
		9 0.49880894637900031 10 0.4988083097050241
		5 0 0.0017632583999443246 1 3.2982108439034157e-05 5 5.7259251701780988e-05 
		9 0.49907359057718076 10 0.4990729096627341
		5 0 0.0022368246746771406 1 4.0264510142986976e-05 5 6.5617123637576921e-05 
		9 0.49882899670694025 10 0.49882829698460207
		5 0 0.0017157310702354167 1 3.3964325296881095e-05 5 5.4214958561074543e-05 
		9 0.49909842673074667 10 0.49909766291516
		5 0 0.0022888708296975738 1 3.9345211991473512e-05 5 6.819682128867171e-05 
		9 0.49880211104322381 10 0.4988014760937986
		5 0 0.0018892735564966859 1 3.439888176877901e-05 5 5.9266851582809692e-05 
		9 0.49900886157147728 10 0.49900819913867445
		5 0 0.0021810534777917121 1 4.0095401949813841e-05 5 6.6494719272283353e-05 
		9 0.49885650943106524 10 0.49885584696992102
		5 0 0.0019411880768795964 1 3.7325592386882453e-05 5 6.1617891403625504e-05 
		9 0.4989802786881874 10 0.49897958975114254
		5 0 0.0018913955561327815 1 3.5303332706983827e-05 5 5.9459731107119196e-05 
		9 0.49900726239929383 10 0.49900657898075945
		5 0 0.0022645106820120241 1 4.0028352324826856e-05 5 6.7845360348942402e-05 
		9 0.49881413035914823 10 0.49881348524616598
		5 0 0.0023403888077723452 1 3.9844242610248785e-05 5 6.8466305782039261e-05 
		9 0.4987759755642549 10 0.49877532507958028
		5 0 0.0024708251667342859 1 4.2947939026459028e-05 5 7.3302751996803732e-05 
		9 0.49870679859657902 10 0.49870612554566363
		5 0 0.0026245303599493714 1 4.638895606597055e-05 5 7.6194992435843774e-05 
		9 0.49862680352039501 10 0.49862608217115395
		5 0 0.0025481484625739805 1 4.4636146805281152e-05 5 7.3949458685192753e-05 
		9 0.49866700525334456 10 0.49866626067859093
		5 0 0.0013886168247085673 1 3.0595588834282915e-05 5 4.8325021425736838e-05 
		9 0.49926665636409157 10 0.49926580620093991
		5 0 0.001438856808771573 1 3.146649985723482e-05 5 4.9346258162015147e-05 
		9 0.49924058778669533 10 0.49923974264651394
		5 0 0.0015465373075179509 1 3.1522430253363184e-05 5 5.1916775856388652e-05 
		9 0.49918539848145849 10 0.49918462500491384
		5 0 0.0017005311187779724 1 3.2270384137773952e-05 5 5.4315893163054561e-05 
		9 0.49910679947943104 10 0.49910608312449029
		5 0 0.0018624405995572471 1 3.7846598349525048e-05 5 5.2487838736219367e-05 
		9 0.49902406894500856 10 0.49902315601834851
		5 0 0.0019511760410205854 1 3.9957173748827883e-05 5 5.6336639825742102e-05 
		9 0.49897670327330612 10 0.49897582687209852
		5 0 0.001931503361928027 1 3.8241934384942577e-05 5 5.7111029394241946e-05 
		9 0.49898697703577499 10 0.49898616663851758
		5 0 0.0019896403257460265 1 3.8109037818068295e-05 5 6.1555705748255642e-05 
		9 0.49895570212197832 10 0.49895499280870942
		5 0 0.0021287647153843377 1 3.9998107297571949e-05 5 6.6690334494623474e-05 
		9 0.49888260049869937 10 0.49888194634412403
		5 0 0.002145859330550939 1 3.9036164609349423e-05 5 6.6328687000197947e-05 
		9 0.49887471022905749 10 0.49887406558878189
		5 0 0.0021262973185955194 1 3.7579705042487168e-05 5 6.5065936534235852e-05 
		9 0.49888584846830764 10 0.49888520857152024
		5 0 0.0020234804484123231 1 3.5978541204425181e-05 5 6.306116380132168e-05 
		9 0.49893906096849916 10 0.49893841887808266
		5 0 0.0020284194129441884 1 3.6951961747198921e-05 5 6.6449805424144195e-05 
		9 0.49893440906524511 10 0.49893376975463949
		5 0 0.0019137791486185892 1 3.681860054652396e-05 5 6.6623480955336174e-05 
		9 0.49899171194779329 10 0.49899106682208627
		5 0 0.0020116265352963952 1 3.8547477222529115e-05 5 7.0366505527204743e-05 
		9 0.49894005167034527 10 0.49893940781160867
		5 0 0.0022635072861824377 1 4.0886920179520391e-05 5 7.54241793982405e-05 
		9 0.49881041012778771 10 0.498809771486452
		5 0 0.0018444783535813219 1 3.6227269450883268e-05 5 6.606877202504672e-05 
		9 0.4990269372234119 10 0.49902628838153085
		5 0 0.0024875161048078117 1 4.2681677868055599e-05 5 7.4495519648396305e-05 
		9 0.49869800903714012 10 0.49869729766053555
		5 0 0.002241790417669285 1 3.9289419692565114e-05 5 6.0958489604884889e-05 
		9 0.49882940296503236 10 0.49882855870800097
		5 0 0.0017184320837441479 1 3.3529033882961788e-05 5 4.7372724814473103e-05 
		9 0.49910079833881915 10 0.49909986781873922
		5 0 0.0013325334784438101 1 2.847573947117716e-05 5 4.2080566400749643e-05 
		9 0.49929891572012336 10 0.49929799449556089
		5 0 0.0013648721526202719 1 2.9676953909864207e-05 5 4.9128569798598551e-05 
		9 0.49927856822465899 10 0.49927775409901248
		5 0 0.001557707326843369 1 3.2588016782839238e-05 5 5.7736521836613598e-05 
		9 0.4991763330997408 10 0.49917563503479634;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak6";
	rename -uid "9AB18610-433D-31E4-A7D0-00A987D92912";
createNode objectSet -n "skinCluster6Set";
	rename -uid "FC4E02AC-4EE0-5CA5-23F6-F58D85D43445";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "0ABBFBB9-4861-677D-1CE6-E69912AE2CD4";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "ED8A3F92-4D17-84C3-8F0D-CDB1016E8F55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	rename -uid "ADB1C6FD-48EC-9143-24C0-02879C2797E6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId28";
	rename -uid "90744933-4EED-5F01-3DA4-95B1447512B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "181919C1-4BD9-3FA5-884A-9FBD6752E2C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster7";
	rename -uid "4641041E-4103-FF3B-3847-92B7B87FA84A";
	setAttr -s 24 ".wl";
	setAttr ".wl[0:23].w"
		5 0 0.0021062776841164416 1 3.4899977668390234e-05 5 6.5084345093086081e-05 
		9 0.49889719670349519 10 0.49889654128962679
		5 0 0.0012781973366318945 1 2.5398564616768632e-05 5 4.5589537154955878e-05 
		9 0.4993257640268956 10 0.49932505053470061
		5 0 0.0022823525351317923 1 3.9693896744113191e-05 5 6.122938669073929e-05 
		9 0.49880878441676868 10 0.49880793976466481
		5 0 0.0012927843228023107 1 2.7592629228557282e-05 5 4.0437383760784882e-05 
		9 0.49932005467622681 10 0.49931913098798142
		5 0 0.002340501685420957 1 3.8454011632256053e-05 5 7.0420658054245582e-05 
		9 0.49877564350438586 10 0.49877498014050675
		5 0 0.0013425372429559461 1 2.6738107856407762e-05 5 4.7425429049029609e-05 
		9 0.49929201250218352 10 0.4992912867179552
		5 0 0.0022536792776811265 1 4.1347046567472821e-05 5 6.0663608266912504e-05 
		9 0.4988225914617353 10 0.49882171860574914
		5 0 0.0014346698048014344 1 3.0991135754178307e-05 5 4.3700777817522723e-05 
		9 0.49924578434292438 10 0.49924485393870249
		5 0 0.0025613805391053747 1 4.3479916668257144e-05 5 7.2090909760204883e-05 
		9 0.49866189813068851 10 0.49866115050377757
		5 0 0.0024715494277923224 1 4.0426616482531509e-05 5 7.0352559710353945e-05 
		9 0.49870919503888117 10 0.49870847635713361
		5 0 0.0011956021229978704 1 2.5499376177128006e-05 5 4.203533005415586e-05 
		9 0.49936884353175681 10 0.499368019639014
		5 0 0.0012844720101251642 1 2.8150375731224288e-05 5 4.4312864644901086e-05 
		9 0.49932195826624537 10 0.49932110648325351
		5 0 0.0017380742894760356 1 3.4048661660391587e-05 5 4.8029264750553698e-05 
		9 0.4990903884731086 10 0.49908945931100435
		5 0 0.0018671277942735143 1 3.8072528416431763e-05 5 5.2917911823478154e-05 
		9 0.49902139740641022 10 0.49902048435907626
		5 0 0.0017942745588082748 1 3.1651048406808637e-05 5 5.8702326165448398e-05 
		9 0.49905801664722493 10 0.49905735541939467
		5 0 0.0015769621172345082 1 2.8626462090425894e-05 5 5.3122873544777452e-05 
		9 0.49917097800057442 10 0.49917031054655597
		5 0 0.0023131264188360435 1 3.8954262086483863e-05 5 7.0290412826222174e-05 
		9 0.49878914616820591 10 0.49878848273804527
		5 0 0.0017558084823690819 1 3.1509523708135519e-05 5 5.816485975566388e-05 
		9 0.4990775887340605 10 0.49907692840010648
		5 0 0.0014273566889370047 1 2.8556141733739964e-05 5 5.0140076942758349e-05 
		9 0.49924733859432979 10 0.49924660849805663
		5 0 0.0013472404840280331 1 3.0030106572185378e-05 5 4.7370036362901197e-05 
		9 0.49928810088191544 10 0.49928725849112143
		5 0 0.001539884018342965 1 3.4011633606380263e-05 5 4.8385782390671901e-05 
		9 0.49918931141117173 10 0.49918840715448815
		5 0 0.0019383382762563843 1 4.042115052857076e-05 5 5.6007391476776805e-05 
		9 0.49898306622946476 10 0.49898216695227343
		5 0 0.0023976530048135558 1 4.4723523999423196e-05 5 6.6508353593547868e-05 
		9 0.49874597647315205 10 0.49874513864444159
		5 0 0.0026798590665305963 1 4.6002102560528346e-05 5 7.6457896769822168e-05 
		9 0.49859920294134308 10 0.49859847799279594;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak7";
	rename -uid "9649B4F9-47E5-9FA8-CF5C-A7B31BDC6FB5";
createNode objectSet -n "skinCluster7Set";
	rename -uid "26D24B3E-49E9-6790-4653-4DB076F61AF8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	rename -uid "151E70CA-4473-ECCC-8DDE-B98145BA23D0";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "8F853C86-4BED-20CB-B012-53BE9CFB964D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	rename -uid "B5AB43AE-4111-E9CB-6760-A992FF367268";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId30";
	rename -uid "BFCBCBA6-47DC-8F0D-12F9-D1855EB8D100";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "DD9E93C9-4F39-8399-8D15-23B0017DD071";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster8";
	rename -uid "59AA7FCC-4316-05EC-1765-D4B7F8375A85";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.0012790315912016017 1 3.111925305558463e-05 5 4.4993157263427528e-05 
		9 0.49932289110712547 10 0.49932196489135383
		5 0 0.0014187461886921741 1 3.4864487492846523e-05 5 5.1582918479671187e-05 
		9 0.49924788218213889 10 0.49924692422319633
		5 0 0.0057711855523329622 1 8.7608174379466018e-05 5 0.00015920213007601783 
		9 0.5109635002135231 10 0.48301850392968848
		5 0 0.0057833542554469649 1 8.9220886348541318e-05 5 0.00016204606954498604 
		9 0.51049833165582736 10 0.48346704713283228
		5 0 0.0036026423588625066 1 7.8692220871090133e-05 5 0.00013277115368748261 
		9 0.49809321651996025 10 0.49809267774661864
		5 0 0.0032555230538005376 1 7.1672922783230526e-05 5 0.00012003103520848466 
		9 0.49827665255011466 10 0.49827612043809311
		5 0 0.0049566519803689989 1 9.3966413359030437e-05 5 0.00016426264005244015 
		9 0.49890251673583896 10 0.49588260223038039
		5 0 0.004533498184202657 1 8.8452356271501246e-05 5 0.00015316268627898149 
		9 0.4985513626606155 10 0.49667352411263133
		5 0 0.002240533709790265 1 5.2539676982183148e-05 5 8.4256891088238016e-05 
		9 0.49881174475877438 10 0.49881092496336493
		5 0 0.001960715838135175 1 4.6694166743061331e-05 5 7.2826857622304957e-05 
		9 0.49896028703662659 10 0.49895947610087277
		5 0 0.0029327288323850904 1 6.5921397885625578e-05 5 0.00010942710457855343 
		9 0.49844629580364097 10 0.49844562686150978
		5 0 0.0025620092646212143 1 5.8116315226221777e-05 5 9.4906368292687989e-05 
		9 0.49864281773713098 10 0.49864215031472886
		5 0 0.0041617676949800885 1 8.6240051021932706e-05 5 0.00014760030169217342 
		9 0.49790741815061201 10 0.49769697380169375
		5 0 0.0038054656517682293 1 8.0360505891273042e-05 5 0.0001364668215145827 
		9 0.49803062666041792 10 0.49794708036040802
		5 0 0.0017482052109799803 1 4.2734461800535645e-05 5 6.550731134955922e-05 
		9 0.49907223621056718 10 0.49907131680530276
		5 0 0.0015517682908868355 1 3.8068443449060589e-05 5 5.6655557424405251e-05 
		9 0.49917719885785616 10 0.49917630885038339
		5 0 0.0055956261498699509 1 9.627822902650512e-05 5 0.00017170618833655814 
		9 0.50286889399530255 10 0.49126749543746429
		5 0 0.0054443643043315289 1 9.3337511408052548e-05 5 0.00016601228870657467 
		9 0.50337618383997718 10 0.49092010205557651
		5 0 0.0012874415811543599 1 3.1293744166057145e-05 5 4.559362855332743e-05 
		9 0.4993183097081732 10 0.49931736133795279
		5 0 0.0011991710377064735 1 2.8891834326808899e-05 5 4.1404644751869047e-05 
		9 0.4993657276013001 10 0.49936480488191476
		5 0 0.0014011564580650485 1 3.4216997974533401e-05 5 5.0111674396458506e-05 
		9 0.49925770757320254 10 0.49925680729636146
		5 0 0.0017670686705881194 1 4.2642617473772528e-05 5 6.5105992679742152e-05 
		9 0.49906301502756234 10 0.49906216769169615
		5 0 0.0022904269996770745 1 5.2716904727641669e-05 5 8.4630617133190831e-05 
		9 0.4987864780109556 10 0.49878574746750648
		5 0 0.00310357464515577 1 6.7466920831019475e-05 5 0.00011278200771537225 
		9 0.49835836838733594 10 0.49835780803896185
		5 0 0.0038284843747043982 1 7.739129242818268e-05 5 0.00013248943257057751 
		9 0.49817212350486539 10 0.49778951139543143
		5 0 0.0045828684709387406 1 8.3483934713746657e-05 5 0.00014643298655194417 
		9 0.5000160190734676 10 0.49517119553432792
		5 0 0.0052639055508671246 1 8.3403721374080276e-05 5 0.00015051469140637671 
		9 0.5073981123985386 10 0.48710406363781383
		5 0 0.0056161739044216352 1 8.1523485958187833e-05 5 0.00014954535436811139 
		9 0.51429446290853953 10 0.47985829434671251
		5 0 0.0054608331579143006 1 8.0440816261003839e-05 5 0.0001474742959978566 
		9 0.51323538086599751 10 0.48107587086382914
		5 0 0.0054415504959442309 1 8.7180347649059702e-05 5 0.0001575095607491312 
		9 0.50695405153330697 10 0.48735970806235063
		5 0 0.0049500901555225834 1 8.7862536897007532e-05 5 0.00015552968498565317 
		9 0.50082858607036029 10 0.49397793155223424
		5 0 0.0042010829049254307 1 8.2623505847545422e-05 5 0.0001428645353656437 
		9 0.49820855967685612 10 0.49736486937700536
		5 0 0.0034676957786299663 1 7.4344140616080308e-05 5 0.00012563558055796346 
		9 0.49816644815756195 10 0.49816587634263398
		5 0 0.0026411809809804092 1 5.9852820436856157e-05 5 9.8301196568159935e-05 
		9 0.49860069850405131 10 0.49859996649796329
		5 0 0.0020096740563907739 1 4.7882420050955729e-05 5 7.5365224224546531e-05 
		9 0.49893397237307785 10 0.49893310592625578
		5 0 0.0015762698144200572 1 3.8625542704654311e-05 5 5.8193239812927556e-05 
		9 0.49916392421248923 10 0.49916298719057306;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -0.045130237461984114 0.091664934171381524 0.15052175122048086 0
		 0.29031135488003795 0.00049570789319456872 0.086740828128712449 0 0.046967602722469325 0.28391618493087911 -0.15881757383341502 0
		 94.232593973103221 900.6485268947157 18.50896488225284 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak8";
	rename -uid "4E6E3C53-401C-395A-13D7-879FFD90D7CF";
createNode objectSet -n "skinCluster8Set";
	rename -uid "9D42EFAF-42D5-ED6C-B318-5E89E420B72B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	rename -uid "53D6A865-4F35-5136-1F78-E9B11EE8D22A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	rename -uid "76DBA848-42C6-59E3-E7DE-A7ABECC918F4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	rename -uid "2879CC47-46C0-956F-3626-4DB11ED99735";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	rename -uid "F2B551EF-415A-641D-07D5-4C860FC98410";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "3620253E-4B41-412B-6CD0-65B6691664EC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster9";
	rename -uid "B3D2A0E8-4BB8-D10B-3A9D-8DA146B30F19";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.001857990626071251 1 5.1028703001614583e-05 5 8.1941307148509745e-05 
		9 0.49900492419356696 10 0.49900411517021187
		5 0 0.0019988105755899266 1 5.5495095987811737e-05 5 8.9163086367836846e-05 
		9 0.49892864106031792 10 0.4989278901817365
		5 0 0.0068866690653164257 1 0.00011950181951903853 5 0.00020350522404448567 
		9 0.54889895937127309 10 0.4438913645198469
		5 0 0.0069755937476012279 1 0.00012195845546926854 5 0.00021039622497759142 
		9 0.54399980259053371 10 0.4486922489814183
		5 0 0.0039145035229103866 1 8.9044764168682186e-05 5 0.00014991390407127536 
		9 0.49792350097691213 10 0.4979230368319375
		5 0 0.0037359989443246804 1 8.7017307962305014e-05 5 0.00014582652056557542 
		9 0.49801580439180132 10 0.49801535283534615
		5 0 0.00513689678469404 1 0.00010319818035595067 5 0.00017752541645766034 
		9 0.50526949142868305 10 0.48931288818980945
		5 0 0.0046725525317923081 1 9.519971537857545e-05 5 0.00016263645983192272 
		9 0.50293767523451705 10 0.49213193605848027
		5 0 0.0030639036393079358 1 8.0107788115566444e-05 5 0.00013138017565974617 
		9 0.49836259986040354 10 0.49836200853651336
		5 0 0.0027582283441934612 1 7.3286827544542498e-05 5 0.00011935617540283249 
		9 0.49852490122744708 10 0.49852422742541203
		5 0 0.0035959848143379395 1 8.7715857571194609e-05 5 0.00014595975290475254 
		9 0.49808540724953282 10 0.49808493232565343
		5 0 0.0033350069612338483 1 8.3020831899614775e-05 5 0.00013741072690413343 
		9 0.49822254437185548 10 0.49822201710810682
		5 0 0.0042663108700497325 1 9.0968578033296101e-05 5 0.00015498434976281251 
		9 0.49866137945458672 10 0.49682635674756725
		5 0 0.0040030463073614068 1 8.6847942141247671e-05 5 0.00014717206473358749 
		9 0.49826833382587798 10 0.49749459985988581
		5 0 0.0024437752686078192 1 6.7105793068485803e-05 5 0.00010849790139607788 
		9 0.49869066039302534 10 0.49868996064390214
		5 0 0.0022118015918713742 1 6.0941084210910866e-05 5 9.804764544465873e-05 
		9 0.49881498756184561 10 0.49881422211662751
		5 0 0.0062382478048425196 1 0.0001178569556009371 5 0.00020401121521995303 
		9 0.52022039918800311 10 0.47321948483633336
		5 0 0.0060044214143033922 1 0.00011312070086407685 5 0.00019357619041582901 
		9 0.5231401946446318 10 0.47054868704978481
		5 0 0.0018068330781676357 1 4.929408534517886e-05 5 7.929209023432507e-05 
		9 0.49903268961416569 10 0.49903189113208718
		5 0 0.0017367898828988873 1 4.6980183577125744e-05 5 7.5573650890403739e-05 
		9 0.49907074862541295 10 0.49906990765722065
		5 0 0.001953875290464065 1 5.313962801446415e-05 5 8.5499322724074111e-05 
		9 0.49895415010146371 10 0.49895333565733369
		5 0 0.0024350305619322147 1 6.500313914104458e-05 5 0.00010544384019462751 
		9 0.49869763538873074 10 0.49869688707000132
		5 0 0.0030447111159796355 1 7.687306487705938e-05 5 0.00012666315257088521 
		9 0.49837618122717531 10 0.49837557143939687
		5 0 0.0036148213080624105 1 8.3304212477321721e-05 5 0.00013967806522442546 
		9 0.49813030391497282 10 0.49803189249926294
		5 0 0.0040905900061102146 1 8.5657103939089767e-05 5 0.00014561782596032421 
		9 0.4995056144695475 10 0.49617252059444289
		5 0 0.0049971550239223898 1 9.6932983524872818e-05 5 0.00016549321161001235 
		9 0.50962626229930641 10 0.4851141564816363
		5 0 0.0063227220075893226 1 0.0001118432247769599 5 0.0001912006416149621 
		9 0.53538447595952743 10 0.45798975816649123
		5 0 0.0070536011719292222 1 0.00011801995932809047 5 0.00020220158845032473 
		9 0.55562258618723592 10 0.43700359109305631
		5 0 0.007005355530107788 1 0.00011784285016468114 5 0.00020375260502240788 
		9 0.54964082704129669 10 0.44303222197340847
		5 0 0.0065934650768028711 1 0.0001175588294632685 5 0.00020366872993817862 
		9 0.53210813725391992 10 0.46097717010987582
		5 0 0.0055045790978937373 1 0.00010498004830848415 5 0.00018085853018342423 
		9 0.51274600774312074 10 0.48146357458049371
		5 0 0.0044333572665045994 1 9.0793793064871637e-05 5 0.00015528941685346968 
		9 0.50083991651401139 10 0.49448064300956579
		5 0 0.0038498995711455574 1 8.6651299206226846e-05 5 0.0001460460279069308 
		9 0.49811900456929481 10 0.4977983985324464
		5 0 0.0033490511013020289 1 8.2860402752358851e-05 5 0.00013739119749503755 
		9 0.49821561419959526 10 0.49821508309885532
		5 0 0.0027301957039418457 1 7.2087982738876092e-05 5 0.00011772784504767803 
		9 0.49854032861443137 10 0.49853965985384024
		5 0 0.0021340521304225777 1 5.8231057165329049e-05 5 9.3989186432552106e-05 
		9 0.4988572396244228 10 0.49885648800155663;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -0.05876823048121315 -0.03261469087159543 0.16905198344283454 0
		 0.28650052632149242 -0.0061565777637836074 0.098409576418150846 0 -0.012932697312321408 0.32329616338613332 0.057876710424553036 0
		 96.513870478784284 921.43723006721689 18.365567945779947 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak9";
	rename -uid "852F824B-4190-4E4E-D8D6-BAB2CE81AD7C";
createNode objectSet -n "skinCluster9Set";
	rename -uid "8C8C6F54-4C4A-42D5-6EE9-CE96AD8C1EBC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	rename -uid "2ADA2C8C-43A3-A74F-3718-4999F048DEBD";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	rename -uid "E78AF115-423F-37FD-2342-19BF5DD49393";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	rename -uid "7933C1F8-44B4-BC4F-C20E-2E80E3CA0D62";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId34";
	rename -uid "DEA54C12-4ADB-69BB-A6DE-A88E0CA032C1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "E2DADCA3-437E-F573-FFAF-EBA4E18D3EAC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster10";
	rename -uid "DB0BCF09-4EC5-CAE1-3861-26AC1097FD94";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.0019640113397468117 1 0.00013114361241924326 5 4.1226327800428201e-05 
		9 0.49893211932764558 10 0.4989314993923879
		5 0 0.0021183518569305032 1 0.00013996099346461042 5 4.433572088746714e-05 
		9 0.49884899432081448 10 0.49884835710790282
		5 0 0.0072013456665307625 1 0.00034945319011164106 5 7.8072997608001613e-05 
		9 0.54668721288104627 10 0.44568391526470336
		5 0 0.0072920169602459705 1 0.0003524649138699009 5 7.8746752759098037e-05 
		9 0.551104676432563 10 0.44117209494056198
		5 0 0.0044464500719114666 1 0.00026819996554768857 5 7.6145788517354069e-05 
		9 0.49781882549417666 10 0.49739037867984703
		5 0 0.0042996237806455324 1 0.00026578060189980525 5 7.5794032170866353e-05 
		9 0.49773524679318137 10 0.49762355479210246
		5 0 0.0062493078478456122 1 0.00034141845082504533 5 8.8965085379239973e-05 
		9 0.51084272671952236 10 0.48247758189642775
		5 0 0.0058563972926645403 1 0.00033064156450364523 5 8.8844003000499404e-05 
		9 0.50502370105845895 10 0.48870041608137244
		5 0 0.003235257408737396 1 0.00020571649688496589 5 6.1243196745349745e-05 
		9 0.49824930428414943 10 0.49824847861348293
		5 0 0.0031054844451360985 1 0.00020268338845442295 5 6.1380779766821939e-05 
		9 0.49831560795995128 10 0.49831484342669136
		5 0 0.0038607967497275115 1 0.00023899272333318254 5 6.8647514683009301e-05 
		9 0.49791618695092671 10 0.49791537606132963
		5 0 0.0037360744144114316 1 0.00023664673252616405 5 6.8782408660345343e-05 
		9 0.49797967533207493 10 0.49797882111232711
		5 0 0.0051346475470862496 1 0.00029620362343237049 5 8.2414879534079452e-05 
		9 0.49993034278114029 10 0.49455639116880701
		5 0 0.0048706914496013014 1 0.00029022404975618919 5 8.1877674715232133e-05 
		9 0.49847329654610317 10 0.49628391027982399
		5 0 0.0026231698073846772 1 0.00017147962812389224 5 5.330553292667808e-05 
		9 0.49857637697708157 10 0.49857566805448306
		5 0 0.0024754300070688262 1 0.00016551037439086313 5 5.1832196574971545e-05 
		9 0.49865393533677832 10 0.49865329208518694
		5 0 0.0070713864828185887 1 0.00036394517408280163 5 8.7233499245686414e-05 
		9 0.5316645159935578 10 0.46081291885029507
		5 0 0.0069511220328646421 1 0.00036306411080353146 5 8.8189331770104857e-05 
		9 0.52698754141368687 10 0.46561008311087482
		5 0 0.0018771752036101977 1 0.00012378897631620391 5 3.878105224407773e-05 
		9 0.49898044631752425 10 0.49897980845030526
		5 0 0.0017925797342049211 1 0.00011921190589981542 5 3.7015395231710895e-05 
		9 0.49902591182810896 10 0.49902528113655459
		5 0 0.0021404856398934348 1 0.00014293882763682158 5 4.4530071381490185e-05 
		9 0.49883633963273832 10 0.4988357058283498
		5 0 0.0027774179181250074 1 0.00018265746636851157 5 5.6013262420824139e-05 
		9 0.49849231058640814 10 0.49849160076667737
		5 0 0.0034468352835009173 1 0.0002198576886004587 5 6.4918720790730044e-05 
		9 0.49813460367302637 10 0.49813378463408137
		5 0 0.004185089145318413 1 0.00025701075935854616 5 7.3385985644726945e-05 
		9 0.49786715768196949 10 0.49761735642770882
		5 0 0.0049488182237937437 1 0.00028737379948404082 5 7.9396342152520709e-05 
		9 0.49966084571562941 10 0.49502356591894031
		5 0 0.0059512919398718358 1 0.00032314991603338598 5 8.2934846372555824e-05 
		9 0.51036400814476368 10 0.48327861515295861
		5 0 0.0067665055207666146 1 0.00033502019863027298 5 7.7248478997177266e-05 
		9 0.53557609143327078 10 0.4572451343683353
		5 0 0.0071034100443073895 1 0.00033234111820675232 5 7.2000377459619958e-05 
		9 0.55461271095664877 10 0.43787953750337755
		5 0 0.0070531636691122269 1 0.00032939940804457195 5 7.1564178221210232e-05 
		9 0.55532746241005615 10 0.43721841033456577
		5 0 0.0069570317683484212 1 0.00034077212413605282 5 7.7751819900112628e-05 
		9 0.5420147646867769 10 0.45060967960083831
		5 0 0.0062842019187120315 1 0.00032929700421156425 5 8.174771425432985e-05 
		9 0.51812698396780832 10 0.47517776939501388
		5 0 0.0052435501964530305 1 0.00029325668936531254 5 7.9128645350228855e-05 
		9 0.50231757019030854 10 0.49206649427852278
		5 0 0.0043150222823531148 1 0.00025661798617002791 5 7.2469133679691476e-05 
		9 0.49808976796050936 10 0.49726612263728803
		5 0 0.003580606580432404 1 0.00022239123453231282 5 6.4692486147317128e-05 
		9 0.49806656309625241 10 0.49806574660263547
		5 0 0.0029289240512348166 1 0.00018747938066207608 5 5.6785471570137858e-05 
		9 0.49841379612269032 10 0.49841301497384277
		5 0 0.002297145223272107 1 0.00015036671355442651 5 4.6924133125441687e-05 
		9 0.49875312035886582 10 0.49875244357118237;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 0.018303763857625003 -0.043562013662191937 0.17567959265332564 0
		 0.29933720922162704 -0.027518908277884908 -0.038011111870804845 0 0.038702102062999025 0.31772876769259667 0.074752625411969614 0
		 83.621758737469179 923.26842841488303 -95.397379909911535 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak10";
	rename -uid "1FA906EA-44F5-05C2-BBDE-D484F90FB954";
createNode objectSet -n "skinCluster10Set";
	rename -uid "7480DA47-415C-CC02-34D3-5C86C02B428D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster10GroupId";
	rename -uid "1AD163FB-4275-DB96-7E1A-B3A3D9B46DF1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster10GroupParts";
	rename -uid "11860BCE-4D4A-1ECA-8253-4388427A9AC9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	rename -uid "FEBD096E-4397-323C-AB1C-20805634ADA6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId36";
	rename -uid "5406DA59-4D3C-A714-7E8F-87B6BF366E37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "AAABF871-40D9-88B2-EFBF-E4A91C4F5377";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster11";
	rename -uid "6EC41962-449F-F117-F19B-90B1E248E28C";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.0021482436846580852 1 0.00014387288464134783 5 3.8157487268520055e-05 
		9 0.49883514113128696 10 0.49883458481214499
		5 0 0.0022660391683384257 1 0.00015386963801833443 5 4.1561689519474453e-05 
		9 0.49876953084256548 10 0.49876899866155833
		5 0 0.0070202289715205566 1 0.00029441789317440455 5 7.8228210478325738e-05 
		9 0.52534176339298966 10 0.46726536153183695
		5 0 0.0068003199897579839 1 0.0002868266353272588 5 7.68446418240949e-05 
		9 0.51997951394538755 10 0.47285649478770336
		5 0 0.0043282730893428314 1 0.0002579348739123936 5 7.2802023519501693e-05 
		9 0.49767078839177925 10 0.49767020162144598
		5 0 0.0043160276691161844 1 0.00026585541264344628 5 7.5243786281348527e-05 
		9 0.49767175577501321 10 0.49767111735694591
		5 0 0.0055467701358195886 1 0.00028068756529136098 5 7.850225289811738e-05 
		9 0.4997896628264113 10 0.49430437721957948
		5 0 0.0054289322321466145 1 0.00028726281607536228 5 8.093939982250268e-05 
		9 0.49929544589887492 10 0.49490741965308044
		5 0 0.0034535886074001619 1 0.00022764280070491536 5 6.4530001606990454e-05 
		9 0.4981274378781565 10 0.49812680071213128
		5 0 0.0032600754405029196 1 0.00021795602965435815 5 6.1425515450703403e-05 
		9 0.49823056381222935 10 0.49822997920216272
		5 0 0.0039848040827722515 1 0.00025011680442055289 5 7.0731134883010669e-05 
		9 0.49784751541196254 10 0.49784683256596174
		5 0 0.003903603418138724 1 0.00025092549278319851 5 7.1148092795923036e-05 
		9 0.49788749460028009 10 0.49788682839600212
		5 0 0.0047355900482326857 1 0.00026233454330456353 5 7.4059269828437456e-05 
		9 0.49770401101492517 10 0.49722400512370901
		5 0 0.0046731698473111731 1 0.00027036793761435018 5 7.6636146233357715e-05 
		9 0.4976046254193397 10 0.49737520064950136
		5 0 0.0027836260679010298 1 0.00018957511263256575 5 5.288776760824028e-05 
		9 0.49848722577068871 10 0.49848668528116924
		5 0 0.0025993170413996809 1 0.00017695995188479375 5 4.8524306045509524e-05 
		9 0.49858786612251743 10 0.49858733257815263
		5 0 0.0062449705345492858 1 0.00028925734890142691 5 7.9523691292086811e-05 
		9 0.50563053354648879 10 0.48775571487876851
		5 0 0.0064468546322962129 1 0.0003013506841915768 5 8.2635464431561023e-05 
		9 0.50936966680064844 10 0.48379949241843229
		5 0 0.0020599411974991134 1 0.00013679881987751851 5 3.6224534311215407e-05 
		9 0.49888379771785346 10 0.49888323773045878
		5 0 0.0020157472160258903 1 0.00013266031475623718 5 3.4727213879596665e-05 
		9 0.49890872086728538 10 0.49890814438805292
		5 0 0.0022850822260901777 1 0.00015266271251175787 5 4.1001214258886182e-05 
		9 0.49876090401224954 10 0.49876034983488948
		5 0 0.0028618105201822092 1 0.00019058980991778552 5 5.3010918217483658e-05 
		9 0.4984475728432336 10 0.49844701590844898
		5 0 0.0035438547284603766 1 0.00022819415038716415 5 6.4414063245534932e-05 
		9 0.4980820776208113 10 0.49808145943709548
		5 0 0.004222845683820785 1 0.00025727656056472389 5 7.2802419211296683e-05 
		9 0.49772383092292755 10 0.49772324441347565
		5 0 0.0048495749007360636 1 0.00027158613385551482 5 7.6941671393642363e-05 
		9 0.49785471069471071 10 0.49694718659930387
		5 0 0.0057015335542954029 1 0.0002879710269539073 5 8.0527500096816331e-05 
		9 0.50188993210030453 10 0.49204003581834954
		5 0 0.006502997506139579 1 0.00028703478262680947 5 7.7734897678400592e-05 
		9 0.51522946499679112 10 0.47790276781676422
		5 0 0.0069373469022133826 1 0.00028017675264772505 5 7.3944807220833859e-05 
		9 0.52836716530014116 10 0.46434136623777689
		5 0 0.0066798246779885577 1 0.00027381364603945606 5 7.3060965661596688e-05 
		9 0.52191806814371278 10 0.47105523256659759
		5 0 0.006335555939028909 1 0.00027831483120100678 5 7.5745676452866135e-05 
		9 0.51073584715841536 10 0.48257453639490189
		5 0 0.0057316127936824484 1 0.00027727113221545364 5 7.7033097483415958e-05 
		9 0.50210029170314818 10 0.49181379127347041
		5 0 0.004936877798550194 1 0.00026379398083785653 5 7.4347052218384847e-05 
		9 0.49808988706215362 10 0.49663509410623974
		5 0 0.0042661988930661745 1 0.00025065455068633556 5 7.071741154945434e-05 
		9 0.49770649349517126 10 0.49770593564952686
		5 0 0.0036986308630600298 1 0.00023318590157639081 5 6.5857455524022192e-05 
		9 0.49800148722452864 10 0.49800083855531091
		5 0 0.0030630530259382763 1 0.00020211504261911928 5 5.6850012241749206e-05 
		9 0.49833928384407339 10 0.49833869807512726
		5 0 0.0024204413169961522 1 0.00016264230786011989 5 4.454986774394103e-05 
		9 0.49868645309579318 10 0.49868591341160645;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 0.027596958338938753 0.073513914053299365 0.16410395611167367 0
		 0.29521104879750287 0.028035559243821239 -0.062204050099797806 0 -0.054702427806066982 0.29911673632288477 -0.12479663446263678 0
		 82.06725242535606 903.68471379488074 -93.461081244591725 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak11";
	rename -uid "44421858-4053-63BB-521D-F5A8F924E722";
createNode objectSet -n "skinCluster11Set";
	rename -uid "FC93BD07-40C1-43A3-1999-C29940D6696B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster11GroupId";
	rename -uid "46D0DD32-4A0E-DE9B-2939-21853ECAAD57";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster11GroupParts";
	rename -uid "1B5DAD64-4EF1-FB1C-6272-138F1A139B85";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	rename -uid "FD4DEA23-4BFF-EB48-9C31-AC9CA4CC9B60";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId38";
	rename -uid "E907F2B0-4607-7159-BBD5-2AA394F80785";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "06AD444B-4892-E54D-A608-AFBCE2DC426B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster12";
	rename -uid "2B823553-4025-A88C-595A-44A65035DB1A";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.016294752819350763 1 0.00030827411242536072 5 0.00012266493217335348 
		9 0.62677751973300633 10 0.35649678840304444
		5 0 0.017522942747532924 1 0.00033346898433260448 5 0.00013189734626850507 
		9 0.62754699860872121 10 0.35446469231314487
		5 0 0.19502281515908249 1 0.0022830708246446008 5 0.00056044861137328464 
		9 0.74390085719562615 10 0.058232808209273505
		5 0 0.19169360636676641 1 0.0020361753968187921 5 0.00048691406952617558 
		9 0.75381151487101694 10 0.051971789295871672
		5 0 0.12779218978534185 1 0.0027344632712287282 5 0.0011135689345269841 
		9 0.61921847446143774 10 0.24914130354746483
		5 0 0.10543387197696355 1 0.0023994338279357931 5 0.00098029813183003029 
		9 0.60488675175678763 10 0.28629964430648319
		5 0 0.18549920407821663 1 0.0028193268663978519 5 0.00094349939806190211 
		9 0.71155708586042143 10 0.09918088379690225
		5 0 0.18339066634276729 1 0.0031046350603893508 5 0.0010860799947907142 
		9 0.68949470718288608 10 0.12292391141916664
		5 0 0.041681344937987211 1 0.0009620046993501851 5 0.00038157005928349019 
		9 0.61615727654374441 10 0.34081780375963483
		5 0 0.033112259456450827 1 0.0007601188946427601 5 0.00029079202369808424 
		9 0.61592558752073423 10 0.34991124210447416
		5 0 0.080324107120763308 1 0.001836969578020687 5 0.00075268612543103667 
		9 0.60808059070101905 10 0.30900564647476597
		5 0 0.062087520537132755 1 0.001475484240880464 5 0.00059132334352936776 
		9 0.60575005994971154 10 0.33009561192874592
		5 0 0.16487377537044368 1 0.003045097095609284 5 0.0011615092358481425 
		9 0.66498829452299302 10 0.16593132377510611
		5 0 0.15049311803389639 1 0.0030179893399435421 5 0.0011798714323308964 
		9 0.63990134751310412 10 0.20540767368072521
		5 0 0.023829735591783127 1 0.00049739984096835044 5 0.00019155319792056802 
		9 0.62433148857519061 10 0.35114982279413737
		5 0 0.021229320276038618 1 0.00043455851138115865 5 0.00016572572256422083 
		9 0.6225048612803149 10 0.35566553420970115
		5 0 0.19087539217137056 1 0.0023420641406990774 5 0.00065074632069256561 
		9 0.73908595326767323 10 0.067045844099564544
		5 0 0.19423007116281166 1 0.0026975625363763007 5 0.00078567418311374464 
		9 0.72406165809561984 10 0.078225034022078352
		5 0 0.015594777438759807 1 0.00028521698629379623 5 0.00011406934026731733 
		9 0.62911023525813903 10 0.35489570097653994
		5 0 0.014989234000549257 1 0.00027511926331167628 5 0.00011050831794540304 
		9 0.62842825178188044 10 0.35619688663631344
		5 0 0.018057198937621886 1 0.0003464501184210207 5 0.00013329552831726766 
		9 0.6255981460604263 10 0.35586490935521353
		5 0 0.026482188585865714 1 0.00056298551340973292 5 0.00021056175934033519 
		9 0.62059699108883803 10 0.35214727305254628
		5 0 0.048611553904448185 1 0.0011082893163525493 5 0.00043198545138427075 
		9 0.61313544432339162 10 0.33671272700442323
		5 0 0.10300234489366544 1 0.0022053398059551465 5 0.00087818079069626215 
		9 0.61795191453973675 10 0.27596221996994647
		5 0 0.16015599467566893 1 0.0028982738953181359 5 0.0010774595464394503 
		9 0.66553925709829109 10 0.17032901478428258
		5 0 0.18551185748283927 1 0.0027642367903228031 5 0.00088878174207902773 
		9 0.71155788757198002 10 0.099277236412778871
		5 0 0.19148771239880288 1 0.002325828157324327 5 0.00061257104424898535 
		9 0.73920089073667417 10 0.066372997662949532
		5 0 0.19183220864389153 1 0.0020353812610304847 5 0.00047070829234252656 
		9 0.75414870974439874 10 0.051512992058336496
		5 0 0.18976169225715914 1 0.0019013387889961293 5 0.00043836710086561328 
		9 0.75978307527881095 10 0.048115526574168378
		5 0 0.18844367913490012 1 0.0020409496353301633 5 0.00051990507517445941 
		9 0.75117071833591553 10 0.057824747818679773
		5 0 0.18449443645147187 1 0.0024223140025697375 5 0.00074410093847001452 
		9 0.73058946107228007 10 0.08174968753520824
		5 0 0.17055583799170021 1 0.0027912381476452894 5 0.0010052729804339825 
		9 0.69177342548515719 10 0.13387422539506336
		5 0 0.12506858541738305 1 0.0024901846069516199 5 0.00098823547009328511 
		9 0.63518358399539254 10 0.2362694105101795
		5 0 0.064813739475072712 1 0.0014299227835551742 5 0.00057408082599246012 
		9 0.61593833258250363 10 0.31724392433287613
		5 0 0.032103319724274784 1 0.00069220181734299345 5 0.00026694511574280362 
		9 0.62215251723247478 10 0.34478501611016482
		5 0 0.019798469626652323 1 0.00038181796735625289 5 0.00014645521227281665 
		9 0.62732764161494647 10 0.35234561557877225;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 2.396582015403025e-16 -0.082441203440770799 0.25692858103435112 0
		 0.55485530835435559 -0.031826982987651416 -0.010212389640840449 0 0.027687381989027791 0.43762975678152866 0.1404231622084012 0
		 90.66126207652654 867.37981726089026 -79.115361094166659 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak12";
	rename -uid "B52C5978-4A90-89CB-1349-DDB1D28754E8";
createNode objectSet -n "skinCluster12Set";
	rename -uid "5B95A1F0-47EC-C5CF-DE7F-F7B7FDB05E80";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster12GroupId";
	rename -uid "2C6C4597-47DB-6C2C-D559-669B2E436D92";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster12GroupParts";
	rename -uid "8A616142-4F03-4650-B41D-04B5C2EEBD3E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet12";
	rename -uid "B6471E62-4604-EC0A-0EEA-8CBA1C6D2E62";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId40";
	rename -uid "DC593DBB-4BC7-8319-BA9A-BF9EFE21E11A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "B0B14392-44C1-AD0C-FD62-C0A6062C1C28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster13";
	rename -uid "20B732BA-40BD-1438-892A-03A9C9DAC247";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.0084758775251634992 1 0.00015529116737631122 5 7.668548893497164e-05 
		9 0.64567160079747665 10 0.34562054502104861
		5 0 0.0087039397914448341 1 0.00016074434001189604 5 8.2055224194921823e-05 
		9 0.64715976847517498 10 0.34389349216917331
		5 0 0.19589312879660231 1 0.00068565673444477484 5 0.00061999697307462407 
		9 0.76033192383913284 10 0.042469293656745427
		5 0 0.19357639199066323 1 0.00062129904847962501 5 0.00060175153900423174 
		9 0.76594890756384348 10 0.039251649858009323
		5 0 0.12187102927469054 1 0.0017747256982539278 5 0.001223061469362171 
		9 0.6887906244139147 10 0.18634055914377881
		5 0 0.1056258134028373 1 0.0016573263389236437 5 0.0011106950036349618 
		9 0.67060129007132696 10 0.22100487518327716
		5 0 0.15718037308413912 1 0.0011017889141148539 5 0.00086437063690844205 
		9 0.76601147129653313 10 0.074841996068304467
		5 0 0.1544040790163996 1 0.0013322794196165806 5 0.00097611737097778666 
		9 0.75320670512072108 10 0.090080819072285018
		5 0 0.031744674999712189 1 0.00057153955349599527 5 0.00036220350070335715 
		9 0.64847827420512649 10 0.31884330774096203
		5 0 0.021786526333783737 1 0.00041547398716622948 5 0.00024658240384777073 
		9 0.64722037176575087 10 0.33033104550945142
		5 0 0.076474955651988322 1 0.0012442350383908307 5 0.00083253342125239201 
		9 0.659498474565682 10 0.26194980132268647
		5 0 0.057447694069002096 1 0.00098773358452766843 5 0.00063735868639354593 
		9 0.65132446188103021 10 0.28960275177904632
		5 0 0.14191913683218346 1 0.0015857928616691637 5 0.001142095464862854 
		9 0.73352623726748423 10 0.12182673757380028
		5 0 0.13653118483176419 1 0.001749540053537323 5 0.0012109387352518385 
		9 0.71183343576881064 10 0.14867490061063607
		5 0 0.012411973359121857 1 0.00023706969063779147 5 0.00013348860871536706 
		9 0.64894105855642115 10 0.33827640978510398
		5 0 0.010559016874525208 1 0.00020400636669295775 5 0.00010611562639693344 
		9 0.6473262125498922 10 0.3418046485824926
		5 0 0.17881881891068427 1 0.0007595577953999035 5 0.0006773630538751378 
		9 0.76907943216032537 10 0.050664828079715257
		5 0 0.17613543889517499 1 0.00088809727196772343 5 0.00072141218430710316 
		9 0.76455345865458746 10 0.057701592993962811
		5 0 0.0081305331241583578 1 0.00014517714584540457 5 7.2492840945525126e-05 
		9 0.64820059647035777 10 0.34345120041869281
		5 0 0.008083079274894777 1 0.00014427167064334057 5 7.0822947626061043e-05 
		9 0.64690683902193946 10 0.34479498708489653
		5 0 0.0090886957993957049 1 0.00016708720149666921 5 8.3757686237641505e-05 
		9 0.64962520682854719 10 0.34103525248432276
		5 0 0.014982648089865191 1 0.00028466105844710172 5 0.00015956417562755789 
		9 0.65066886003124769 10 0.33390426664481249
		5 0 0.040361740430342012 1 0.00069830542692208956 5 0.00043919332582414668 
		9 0.65148413674135086 10 0.30701662407556107
		5 0 0.097927524144346217 1 0.0014366909100237372 5 0.00096035453372431666 
		9 0.67753993542923729 10 0.22213549498266846
		5 0 0.13849528417873716 1 0.0014913149018187606 5 0.0010470071435430025 
		9 0.73276265987758926 10 0.12620373389831202
		5 0 0.15845827662781597 1 0.0010481634823435761 5 0.00079341928099340927 
		9 0.76651021115658791 10 0.073189929452259259
		5 0 0.18233698081787475 1 0.00072417546821133372 5 0.00061810769526804833 
		9 0.7682589771002114 10 0.048061758918434422
		5 0 0.19572751326798182 1 0.0006060794418689835 5 0.00057313630627225834 
		9 0.76525588964392532 10 0.03783738133995148
		5 0 0.19200929369061195 1 0.00057231411576512371 5 0.00056706341188185753 
		9 0.770344412474678 10 0.036506916307063091
		5 0 0.18237086773974207 1 0.00064102211956529212 5 0.00060035073757508438 
		9 0.77304125276288538 10 0.043346506640232117
		5 0 0.16141266759663672 1 0.00086524141218469641 5 0.0007145063886088614 
		9 0.77549606689669592 10 0.061511517705873903
		5 0 0.14314143711665639 1 0.0012931014255555106 5 0.00095647690350046124 
		9 0.7542397298431649 10 0.10036925471112275
		5 0 0.11378507881943153 1 0.0015174475524305955 5 0.001052251004382882 
		9 0.69783082208662628 10 0.18581440053712886
		5 0 0.057706406689368772 1 0.00092981447514718847 5 0.00061305451088127243 
		9 0.65781590700398929 10 0.28293481732061343
		5 0 0.021012336772175295 1 0.00038003574922382781 5 0.00023127794788764671 
		9 0.65125482864783035 10 0.32712152088288304
		5 0 0.0098318341875907635 1 0.00018055876836840456 5 9.6194459603107967e-05 
		9 0.65173603647315148 10 0.33815537611128604;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -1.7974365115522686e-16 0.088288566372751162 0.25497838501514597 0
		 0.55586119036795489 8.6398184885887094e-16 3.0856494602102535e-17 0 -9.0077528634172961e-16 0.52874894914981529 -0.1830840943194573 0
		 94.309661127332305 838.82123007384803 -51.662421075782973 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak13";
	rename -uid "3BE1F5D6-47E7-2C9C-15BD-149F3DFC2E36";
createNode objectSet -n "skinCluster13Set";
	rename -uid "A72DC0CE-4A76-0761-8978-9F86F8183C33";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster13GroupId";
	rename -uid "3754855A-456A-02EC-794E-948033C4ACCD";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster13GroupParts";
	rename -uid "159A7C5B-4659-86FD-4E52-D38E5D3CF898";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet13";
	rename -uid "7B871979-46BE-5070-DA45-049D891B205D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId42";
	rename -uid "98B4E27F-4E19-FCCA-9AA6-B98219E3E1BE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "185C84A8-4821-DA09-C999-03A111F4099A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster14";
	rename -uid "3360D532-4EBA-C645-B371-BEA6FCA5BD24";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.0076696181450022398 1 8.6859007596249045e-05 5 6.6946033916025959e-05 
		9 0.6641803172095192 10 0.32799625960396633
		5 0 0.0087977093900037939 1 0.00010000667246579939 5 7.9626824253855531e-05 
		9 0.66010347832440575 10 0.33091917878887062
		5 0 0.22362490845629529 1 0.0012572268475026891 5 0.00062135484646184773 
		9 0.72778521463523937 10 0.046711295214500612
		5 0 0.22975901000804758 1 0.001128515238074368 5 0.00057691474615105336 
		9 0.72764560841948422 10 0.040889951588242712
		5 0 0.12734220043276753 1 0.0019579012428273122 5 0.0012542337078560626 
		9 0.68065404303835353 10 0.18879162157819568
		5 0 0.10924815040967313 1 0.0017668493611611182 5 0.0011358737863513444 
		9 0.66625078734985721 10 0.22159833909295723
		5 0 0.1740711083929759 1 0.0015209722004197049 5 0.00087191979784470119 
		9 0.74385894730541591 10 0.07967705230334382
		5 0 0.16570975498770676 1 0.0017574193372980962 5 0.0010055575759274069 
		9 0.73650159597142684 10 0.095025672127640806
		5 0 0.034714395164192155 1 0.00053393035958632508 5 0.00038367885466385074 
		9 0.64770205993709351 10 0.31666593568446416
		5 0 0.02361660318143451 1 0.00034786655505161264 5 0.00025535259016700639 
		9 0.65007136023885836 10 0.32570881743448843
		5 0 0.080342486875274025 1 0.0012856610916758592 5 0.00086084224687557967 
		9 0.65544251900679673 10 0.26206849077937794
		5 0 0.060166103764033536 1 0.00097398013231268072 5 0.00065483872827401578 
		9 0.65033515618845328 10 0.28786992118692645
		5 0 0.15172661826500672 1 0.0019113111996543349 5 0.0011715583664360725 
		9 0.71869770622795781 10 0.12649280594094522
		5 0 0.14283496736340834 1 0.0020280687984656578 5 0.0012424483855921656 
		9 0.70215703324009582 10 0.15173748221243805
		5 0 0.014029280643375072 1 0.00018013376585448984 5 0.00014296984327551087 
		9 0.65368336630560075 10 0.33196424944189418
		5 0 0.010917079905943504 1 0.00013189255419150957 5 0.00010477906445767174 
		9 0.65787788294080585 10 0.33096836553460152
		5 0 0.2060126778860572 1 0.0012344852124865995 5 0.00065663840681746423 
		9 0.73852663745679326 10 0.053569561037845347
		5 0 0.19494951869311933 1 0.0014126573431002044 5 0.00073564385680795728 
		9 0.74004980237791917 10 0.062852377729053235
		5 0 0.0074102587111553727 1 8.292038217928892e-05 5 6.3622776613748728e-05 
		9 0.66557352411161974 10 0.32686967401843176
		5 0 0.0068371631382258503 1 7.6834240248364039e-05 5 5.7624410371549644e-05 
		9 0.66813174420623078 10 0.32489663400492347
		5 0 0.0085595499960007745 1 9.7606812614859558e-05 5 7.607882253094113e-05 
		9 0.66460273731720654 10 0.32666402705164693
		5 0 0.015928749013919628 1 0.00021382491837907558 5 0.00016211768216837426 
		9 0.6565324236468677 10 0.32716288473866545
		5 0 0.042647959944981016 1 0.00065970467686595402 5 0.0004522241232744605 
		9 0.65192008438440685 10 0.30432002687047172
		5 0 0.10186842598942333 1 0.0015485146978543886 5 0.00098482496305464864 
		9 0.67294573829392779 10 0.22265249605573997
		5 0 0.1464935520641972 1 0.0018096358730261537 5 0.0010797266703866685 
		9 0.72052391707327335 10 0.13009316831911655
		5 0 0.17246494764324857 1 0.0014951579248309399 5 0.00081942752284263883 
		9 0.74670415409178093 10 0.078516312817296874
		5 0 0.20552432537303025 1 0.0012513614126196707 5 0.00062857265339230238 
		9 0.73968123330301183 10 0.052914507257945859
		5 0 0.22953662945160613 1 0.0011426849194455123 5 0.00056639712811969146 
		9 0.72800102574904924 10 0.040753262751779533
		5 0 0.23232034891080136 1 0.0010559796098436841 5 0.00054101029526241453 
		9 0.72876121599835919 10 0.037321445185733479
		5 0 0.21524715887422419 1 0.001102980017106555 5 0.00057537397920784459 
		9 0.73784562548875554 10 0.045228861640705949
		5 0 0.18244900454010191 1 0.0012823976292823686 5 0.00071042393687640974 
		9 0.74989841136693502 10 0.065659762526804277
		5 0 0.15555633341709008 1 0.0016390523737897639 5 0.00097992541535759725 
		9 0.73638655245880458 10 0.10543813633495791
		5 0 0.1201698236942657 1 0.0016984803100607642 5 0.0010838095294692293 
		9 0.68853699844495808 10 0.18851088802124621
		5 0 0.061296322984043618 1 0.00094298592037752693 5 0.00063927618389065513 
		9 0.65478640224211893 10 0.28233501266956917
		5 0 0.02326059076958116 1 0.0003324534279381783 5 0.00024645689149637232 
		9 0.65250516268950842 10 0.32365533622147602
		5 0 0.010409562340981138 1 0.00012274597168894144 5 9.7639574358168791e-05 
		9 0.66044772852792899 10 0.32892232358504275;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 5.9914550385075625e-17 -0.082441203440770758 0.25692858103435112 0
		 0.55586119036795478 4.3199092442943547e-16 0 0 -4.3485703478566252e-16 0.53279307271632714 0.17095841156639355 0
		 94.309661127332262 867.37981726089026 -51.988637429891128 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak14";
	rename -uid "71DAE738-45B3-4A29-4972-1189D5122CCC";
createNode objectSet -n "skinCluster14Set";
	rename -uid "378DB242-4C6C-A597-5C8B-B9AAD231EAB8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster14GroupId";
	rename -uid "1AEB4493-4559-954E-303E-88870754EE35";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster14GroupParts";
	rename -uid "92065EC3-4326-144D-B4F7-8ABB3CBC2A3E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet14";
	rename -uid "182E3FFE-4867-E658-B0DF-5990C21527DA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId44";
	rename -uid "47C4E1BC-48E1-1BA4-23D9-CE961771508B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "3C50EA44-4611-81A5-DA75-CEB2775C6AC4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster15";
	rename -uid "B9575037-4F03-54B8-94A5-1EAD7B3F8EE3";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.01050567658638139 1 0.00010117028662861254 5 9.1385157412825267e-05 
		9 0.66834613170504875 10 0.3209556362645285
		5 0 0.011172470822448011 1 0.00010818693632857579 5 0.00010125314268108181 
		9 0.66660468609716828 10 0.32201340300137404
		5 0 0.13836691145344013 1 0.00044321310211572253 5 0.00056750029322861183 
		9 0.81469906894380328 10 0.045923306207412334
		5 0 0.13966561822060392 1 0.0004085477425302879 5 0.00055682080890752416 
		9 0.81663267815635432 10 0.042736335071603862
		5 0 0.091686023216712931 1 0.0010234750567296546 5 0.0010261513547086621 
		9 0.66284434419987981 10 0.24342000617196899
		5 0 0.078526450513899337 1 0.00091998252668588432 5 0.00090438897889475866 
		9 0.64742756961601899 10 0.27222160836450099
		5 0 0.12972233260909916 1 0.00079225234237086074 5 0.00088957010952849913 
		9 0.78266179327708041 10 0.08593405166192114
		5 0 0.12337278779663886 1 0.00087948029876094163 5 0.00094218059360382596 
		9 0.76899136537540114 10 0.10581418593559525
		5 0 0.02967831088739584 1 0.00035636788736527372 5 0.00034788194398394177 
		9 0.64556581869107188 10 0.32405162059018311
		5 0 0.023383568757378154 1 0.00026393987198750215 5 0.00025261120583646194 
		9 0.65503878183874387 10 0.32106109832605378
		5 0 0.058406757100529352 1 0.0007115639304088549 5 0.00069976909238632498 
		9 0.63815197957918046 10 0.30202993029749492
		5 0 0.04680578772383568 1 0.00056640818322012257 5 0.00054799291311285201 
		9 0.64172152506085156 10 0.31035828611897975
		5 0 0.11506043867944318 1 0.0010207286438854851 5 0.0010695396295440013 
		9 0.72587000079499786 10 0.15697929225212953
		5 0 0.10596185689324682 1 0.0010377887214786598 5 0.0010548268267605676 
		9 0.70202853742785398 10 0.18991699013065991
		5 0 0.015678501691435386 1 0.00016401175400354483 5 0.00015891834077752173 
		9 0.66038443904232436 10 0.32361412917145915
		5 0 0.013713352954731816 1 0.00013620608328866374 5 0.00012737916652077696 
		9 0.66499285787078855 10 0.32103020392467024
		5 0 0.13727864175048562 1 0.0005382816643965555 5 0.00066806757425576951 
		9 0.80697647379694926 10 0.054538535213912942
		5 0 0.13257902880869202 1 0.00060571377624370367 5 0.00070356454640382372 
		9 0.80444683688359597 10 0.061664855985064361
		5 0 0.009967017770103663 1 9.3754281199383938e-05 5 8.5665373825148653e-05 
		9 0.67022298121870083 10 0.31963058135617106
		5 0 0.0097323484806240076 1 9.2044425502148735e-05 5 8.1939968085728541e-05 
		9 0.67063660582325291 10 0.31945706130253515
		5 0 0.011469853943586692 1 0.00010737725628142451 5 9.8704290573789946e-05 
		9 0.67032047927134897 10 0.31800358523820904
		5 0 0.017635148956562437 1 0.0001798251845058369 5 0.00017165643041781414 
		9 0.66608176467249891 10 0.31593160475601495
		5 0 0.035683004931915632 1 0.00040573566229540353 5 0.00039337304355944747 
		9 0.65459670618860022 10 0.30892118017362918
		5 0 0.074997978059294979 1 0.0008099913689430207 5 0.00080330841397488516 
		9 0.66598124631894884 10 0.25740747583883827
		5 0 0.10872451383085258 1 0.00091482159626912426 5 0.00095055980307077656 
		9 0.73506214583255491 10 0.15434795893725267
		5 0 0.12360450068070124 1 0.00070238200535586656 5 0.00078130850279629937 
		9 0.79303665336773455 10 0.081875155443412048
		5 0 0.13223022182536898 1 0.00047611167543202171 5 0.00058739266057922159 
		9 0.81522798598573953 10 0.051478287852880285
		5 0 0.1373125380808288 1 0.00038336008249395781 5 0.00052226636264420749 
		9 0.82038928067705197 10 0.041392554796981174
		5 0 0.13781628161841192 1 0.00037036114585970722 5 0.000526030946608489 
		9 0.82140465665260176 10 0.039882669636518139
		5 0 0.13583960891237049 1 0.00043447292622860313 5 0.00057597827642317883 
		9 0.81635748359027738 10 0.046792456294700302
		5 0 0.12970898520629792 1 0.00062402554895179835 5 0.00073763686153873907 
		9 0.80094242371904578 10 0.067986928664165711
		5 0 0.11770981370601367 1 0.00087223037682485776 5 0.00094344254559025446 
		9 0.75734231747014735 10 0.12313219590142391
		5 0 0.087858654240008785 1 0.00090000392829904898 5 0.00091499188365495301 
		9 0.68054018762419421 10 0.22978616232384305
		5 0 0.046540805626786239 1 0.00053881171175911783 5 0.00053245289695737002 
		9 0.64894128388092265 10 0.30344664588357462
		5 0 0.021973262771957967 1 0.00024005042775644114 5 0.00023567899805359619 
		9 0.65894672904647378 10 0.31860427875575836
		5 0 0.012561875816272569 1 0.0001197964296083142 5 0.00011495841508551435 
		9 0.6685818719088521 10 0.31862149743018142;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 0.0069363400502403154 0.035108175080777758 0.26744747335933572 0
		 0.55485530835435648 -0.031826982987638086 -0.010212389640840511 0 0.025029903356800869 0.45576417789607326 -0.060477910937291379 0
		 89.50099534448492 847.7169068091456 -34.460104768316299 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak15";
	rename -uid "91C548E4-49E4-3B51-100D-CA81174C4E71";
createNode objectSet -n "skinCluster15Set";
	rename -uid "9C198DAE-4F60-37D0-E736-09B776315F4D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster15GroupId";
	rename -uid "AFBB7C40-46C3-EB65-0B05-788E2B91C8DD";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster15GroupParts";
	rename -uid "0C28B565-4980-2CDF-10D2-10A929CF3994";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet15";
	rename -uid "66006100-4B9B-95F0-3084-65AF66B6DB97";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId46";
	rename -uid "47B1C4AD-4FC8-A92D-79C4-6A914E191B85";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "0445DBD6-4011-5B3A-CC03-14986211A7BA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster16";
	rename -uid "4CEE6068-4A22-4DFC-C240-69AE319B5C9C";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.91829841791971201 1 0.0014680514676389035 5 0.043768358974670331 
		9 0.027064090463683802 11 0.0094010811742950753
		5 0 0.90546469295774501 1 0.0019361593363840857 5 0.049324074330009446 
		9 0.028063161075148568 11 0.015211912300712983
		5 0 0.60499534524561072 1 0.023814230515170665 9 0.0027724361295568922 
		11 0.36030062799582696 12 0.008117360113834746
		5 0 0.58448904761845211 1 0.0196308012435218 9 0.001992595035791302 
		11 0.38583666976287984 12 0.0080508863393550668
		5 0 0.79059642357136251 1 0.017010875633243216 5 0.011516781993910714 
		9 0.017719025643035066 11 0.16315689315844842
		5 0 0.81678747433784171 1 0.016939329186181309 5 0.013868822797544103 
		9 0.023222282298208764 11 0.1291820913802241
		5 0 0.6701404720593378 1 0.021173752049297605 9 0.0059263712364160392 
		11 0.29607715146421043 12 0.0066822531907380798
		5 0 0.70997883389138072 1 0.024072471497810694 9 0.0086803706975243713 
		11 0.25157885031844618 12 0.0056894735948382208
		5 0 0.86700672640483945 1 0.0072811275286036271 5 0.030867277629729937 
		9 0.02968699588322582 11 0.065157872553601073
		5 0 0.87849430985442267 1 0.006462369185943926 5 0.032931748747299178 
		9 0.034957993647653847 11 0.047153578564680415
		5 0 0.83469929318447733 1 0.011923508489019304 5 0.01865296037572069 
		9 0.023786025539784574 11 0.11093821241099815
		5 0 0.8534591738117292 1 0.01142227545424435 5 0.021461744972340453 
		9 0.029983441539376977 11 0.083673364222308921
		5 0 0.73838466960631099 1 0.019596231711718582 5 0.0068894537782611008 
		9 0.010855709793500106 11 0.22427393511020918
		5 0 0.77250996659269289 1 0.021301493221175218 5 0.0085405200754189812 
		9 0.01552008898343763 11 0.18212793112727527
		5 0 0.88692481614469676 1 0.0038589993399553799 5 0.044525511861662564 
		9 0.031421830660449089 11 0.033268841993236209
		5 0 0.89910386537632025 1 0.0031408872118527942 5 0.042330495448438504 
		9 0.033316480553571316 11 0.022108271409817051
		5 0 0.61183404316961632 1 0.021039316734538422 9 0.0032580212069508274 
		11 0.35578076430926292 12 0.008087854579631364
		5 0 0.64647366199844969 1 0.024979973964832425 9 0.0046838734085287992 
		11 0.3164057077897921 12 0.0074567828383970657
		5 0 0.92113578159694109 1 0.0012272340508068143 5 0.044702973171494638 
		9 0.023758173973713069 11 0.0091758372070443149
		5 0 0.92888987567981574 1 0.0010367233830612613 5 0.040176265243976321 
		9 0.023567256967052454 11 0.0063298787260942721
		5 0 0.91746576738909025 1 0.001910487785007882 5 0.039814415964950396 
		9 0.027278559700667671 11 0.013530769160283736
		5 0 0.89811476268311474 1 0.0042780918513374028 5 0.033882793296692554 
		9 0.030912500799817198 11 0.032811851369038005
		5 0 0.87559304811871919 1 0.0084608168438450679 5 0.023052083052757934 
		9 0.028667233148788739 11 0.064226818835889057
		5 0 0.8283463732600912 1 0.015525637889766613 5 0.012884654761131556 
		9 0.021027887289990721 11 0.12221544679901994
		5 0 0.76239857980124937 1 0.020620262048882641 5 0.0063912460096710606 
		9 0.01145198528517131 11 0.19913792685502574
		5 0 0.69437807745715596 1 0.022739952711671486 9 0.0059209759848670423 
		11 0.27134162877941209 12 0.0056193650668935518
		5 0 0.63399874445523285 1 0.022933667166838863 9 0.0031821685673332684 
		11 0.33300348499447269 12 0.0068819348161222212
		5 0 0.59523591643200002 1 0.020713383894525473 9 0.0019645309839711389 
		11 0.37467544738692904 12 0.0074107213025742949
		5 0 0.58111684594391511 1 0.017553418242516675 9 0.0015501291947698965 
		11 0.39238795513092434 12 0.0073916514878740935
		5 0 0.60215392911885401 1 0.018643279440753328 9 0.0022084016698050634 
		11 0.36969475168257854 12 0.0072996380880090425
		5 0 0.65400146303044993 1 0.019405515831243683 9 0.0039864044522935843 
		11 0.31616890645341994 12 0.0064377102325929537
		5 0 0.72367706325778425 1 0.01839480955271474 5 0.0049196477141525653 
		9 0.0075876904093946001 11 0.24542078906595374
		5 0 0.79764119956272217 1 0.014881714117014886 5 0.010670058698563896 
		9 0.015014232888381442 11 0.16179279473331762
		5 0 0.85834546518587684 1 0.0092345285706302276 5 0.020660248155274268 
		9 0.022674949738961506 11 0.089084808349257041
		5 0 0.88711719087440744 1 0.0049906592154216533 5 0.0337134827105404 
		9 0.026852966520690944 11 0.04732570067893957
		5 0 0.90567087253340728 1 0.0023999157338440093 5 0.044117801610339867 
		9 0.026208311873690548 11 0.021603098248718287;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -8.7123080584884028e-16 -0.39928469339782674 0.39339543263110793 0
		 0.99844924697427417 0.039070793893966393 0.039655696702995513 0 -0.055669571729130229 0.70074555148241013 0.71123594598495099 0
		 86.923940318087716 705.53533066896978 -74.815942144961738 1;
	setAttr -s 6 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak16";
	rename -uid "C6F1A29D-48EC-1CF0-A8E1-7F971040A7C3";
createNode objectSet -n "skinCluster16Set";
	rename -uid "480BC510-41EA-57AC-6566-F691D1BB9DCE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster16GroupId";
	rename -uid "00DC8212-4A56-3E3A-77C7-F39368FDC2BA";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster16GroupParts";
	rename -uid "4DFB388D-4E27-7C89-7C15-DFBEFDA3FF10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet16";
	rename -uid "CEA9B107-41F3-6B11-BD20-22BA6470AF01";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId48";
	rename -uid "F9741DDB-4188-7E5E-CA72-5C91F1F98ACC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "8210D210-4209-280D-2537-16A76CC79528";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster17";
	rename -uid "C96BBAED-4920-8CD3-4A5A-FCA310603826";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.82804469209755693 1 0.042558685671844475 5 0.0054173734519916339 
		9 0.11232005237233306 11 0.0116591964062741
		5 0 0.8256199277704489 1 0.039035088958040927 5 0.0069597442762202701 
		9 0.11279681605477843 11 0.015588422940511501
		5 0 0.5516844636929199 1 0.0022142876906369627 5 0.0035297566705606432 
		11 0.43346843523915585 12 0.0091030567067265193
		5 0 0.54573683181301247 1 0.0016727209059497132 5 0.0032389521753629011 
		11 0.4402442767118856 12 0.0091072183937892601
		5 0 0.70952420857188514 1 0.021481223263033877 5 0.015173810126004491 
		9 0.027773519323896694 11 0.22604723871517995
		5 0 0.722649247533664 1 0.026989473306374901 5 0.015890635109439312 
		9 0.035455496617885031 11 0.19901514743263668
		5 0 0.61948389218894973 1 0.0068807008253902431 5 0.0075891830328681702 
		11 0.35838066837008997 12 0.0076655555827017602
		5 0 0.63809658273696379 1 0.0092754925132882901 5 0.0086695589220846039 
		9 0.0089447979797323551 11 0.33501356784793113
		5 0 0.80026535243196928 1 0.034866947685042539 5 0.013885222692283523 
		9 0.069367919245502688 11 0.081614557945202101
		5 0 0.81094244007974248 1 0.038523514344887592 5 0.012268261465706807 
		9 0.077467498986699732 11 0.060798285122963446
		5 0 0.75526722272899771 1 0.029184783600841941 5 0.015818516843415911 
		9 0.045403191723447589 11 0.15432628510329693
		5 0 0.7706202250063926 1 0.034085385973715882 5 0.015116276057900294 
		9 0.054114145701111387 11 0.12606396726087998
		5 0 0.67275962682037171 1 0.01316392274202844 5 0.01151893287035937 
		9 0.014912751734039095 11 0.28764476583320148
		5 0 0.68507564161078072 1 0.017804373955132707 5 0.012923289315589021 
		9 0.020301955507966509 11 0.26389473961053117
		5 0 0.8222436172458194 1 0.037130194290648962 5 0.010306738005134226 
		9 0.09538281727811028 11 0.034936633180287176
		5 0 0.82542828457012241 1 0.040979775405076239 5 0.0084192151708852823 
		9 0.10004669220839434 11 0.025126032645521598
		5 0 0.56812693920107693 1 0.0033739913018211946 5 0.0047781110256658616 
		11 0.41494264593438157 12 0.0087783125370545882
		5 0 0.58342298272123738 1 0.0044170054236446297 5 0.0053369110255643325 
		11 0.39851954653287802 12 0.0083035542966756453
		5 0 0.83194741830637087 1 0.040225728136637502 5 0.0051200007485294637 
		9 0.11208395768703359 11 0.010622895121428522
		5 0 0.83294460459121111 1 0.043190816807583271 5 0.0042643057788881193 
		9 0.11070183317639402 11 0.0088984396459236056
		5 0 0.83520391216978584 1 0.041132342396963679 5 0.0060962771590330408 
		9 0.10127668956035317 11 0.016290778713864223
		5 0 0.82977618268397257 1 0.038072870615099397 5 0.0097342494428701038 
		9 0.081264777683384914 11 0.041151919574672943
		5 0 0.79829495336208822 1 0.034406240232292565 5 0.013099724680410643 
		9 0.058721967749104535 11 0.095477113976104019
		5 0 0.73410528303150224 1 0.02586854585943129 5 0.01414131215489556 
		9 0.034632412934274361 11 0.19125244601989647
		5 0 0.67556097604189325 1 0.013912093665969195 5 0.010553012128467992 
		9 0.015190620109926464 11 0.28478329805374319
		5 0 0.61930529088195685 1 0.0065295695158202076 5 0.006619523995043149 
		11 0.36061146510494135 12 0.006934150502238343
		5 0 0.56858097202448088 1 0.0029727501309803478 5 0.0040109561473561789 
		11 0.41644276034802724 12 0.0079925613491552694
		5 0 0.54633763199880148 1 0.0015137825215703444 5 0.0028927637878087675 
		11 0.44057131398149929 12 0.0086845077103200365
		5 0 0.54366879994761086 1 0.0012587410283959178 5 0.0028288089475094519 
		11 0.44356852400467628 12 0.0086751260718075617
		5 0 0.55691255021747288 1 0.0022467349549059237 5 0.0036803615260022657 
		11 0.42884811207801532 12 0.0083122412236035694
		5 0 0.59904456366097592 1 0.0048738713442590832 5 0.0058407976295199709 
		11 0.3827912730975061 12 0.0074494942677390246
		5 0 0.65815809890162424 1 0.0099535411841132505 5 0.0092479617631095884 
		9 0.010559909172254103 11 0.31208048897889901
		5 0 0.71838065536043449 1 0.019988216192553945 5 0.013563334386367915 
		9 0.026741870657776445 11 0.221325923402867
		5 0 0.78139475483131271 1 0.029830179941963898 5 0.014186589786888621 
		9 0.050513615053758475 11 0.12407486038607619
		5 0 0.8220333841995171 1 0.034226162843529001 5 0.011537627758928895 
		9 0.07487404501376313 11 0.05732878018426181
		5 0 0.83413387967975283 1 0.03661616146771883 5 0.0077783219282595824 
		9 0.098750355992828359 11 0.022721280931440352;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -3.7338463107807439e-16 0.18340338349437801 0.52967105992269137 0
		 1.0000000000000002 1.5543122344752192e-15 5.5511151231257827e-17 0 -1.609823385706477e-15 0.94495534726091313 -0.32719931491830367 0
		 96.514151674936443 608.06698484415142 -97.611260077659594 1;
	setAttr -s 6 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak17";
	rename -uid "5BA164B5-4750-60EB-B9A2-6EBD9645B36A";
createNode objectSet -n "skinCluster17Set";
	rename -uid "BC2B88F3-4BEA-D541-82B9-AB914AAAD5E9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster17GroupId";
	rename -uid "B7B637CA-4839-B429-5DD6-D99CF38C9C91";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster17GroupParts";
	rename -uid "D94A781A-4B17-A8B6-CAAE-20B16AE05523";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet17";
	rename -uid "DBF111AD-4786-2AA9-87F5-D586C9E3AD6F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId50";
	rename -uid "AC25148E-4AD9-3B50-6CAD-698B351D8352";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "1EF36A4D-4F91-5B4A-B3BB-9CA183FFBC6A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster18";
	rename -uid "679A60E1-4775-684A-096F-C88AFAF64C85";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.5638111715798152 1 0.0032466634138458928 5 0.00062922108470578569 
		11 0.42403969183449119 12 0.0082732520871419846
		5 0 0.56203843686917021 1 0.0031306448478675502 5 0.00071760061255359421 
		11 0.42409611701411604 12 0.010017200656292658
		5 0 0.08064666514460396 11 0.48492863021337412 12 0.42440387050487899 
		13 0.003117154813601029 16 0.0069036793235418576
		5 0 0.067369559233644613 11 0.48065927019622851 12 0.44198032236085733 
		13 0.0027686433246662018 16 0.007222204884603514
		5 0 0.40036478970647449 11 0.47829923053760331 12 0.11700981342342277 
		13 0.0020502834563459666 16 0.0022758828761533854
		5 0 0.42250116721632741 11 0.46955594905755144 12 0.10407648832632095 
		13 0.0019234420500761251 16 0.0019429533497241373
		5 0 0.21044148629464149 11 0.50772600158296866 12 0.27373617727046745 
		13 0.0030486249806124174 16 0.0050477098713101196
		5 0 0.2426450343719698 11 0.5074774543547077 12 0.24284339171239341 
		13 0.0029790949883864047 16 0.0040550245725427796
		5 0 0.50229857015337731 1 0.001601082289505692 5 0.00081984680193904614 
		11 0.45386944598282231 12 0.04141105477235562
		5 0 0.51362719633895515 1 0.0020626143391853243 5 0.00082929132621795013 
		11 0.44757394056748184 12 0.035906957428159698
		5 0 0.45711239623839939 11 0.46610255922599209 12 0.074146041233398005 
		13 0.0013002594597996563 16 0.0013387438424108018
		5 0 0.47143008168368777 1 0.0013538706347126913 11 0.45936309496764044 
		12 0.066681490404002869 13 0.0011714623099562866
		5 0 0.31826288532349178 11 0.49884798754422588 12 0.17709094437548273 
		13 0.0025187231521768198 16 0.0032794596046228403
		5 0 0.34738560370387717 11 0.48983375848798705 12 0.15748906394314688 
		13 0.002493564939221845 16 0.0027980089257671099
		5 0 0.53883710080989389 1 0.0024662183043880591 5 0.00081384585976415722 
		11 0.43775831574233448 12 0.020124519283619517
		5 0 0.54614855529240536 1 0.0029244585979176421 5 0.00077467445241971122 
		11 0.43348138447298368 12 0.016670927184273598
		5 0 0.11708929083993563 11 0.49330472693173072 12 0.37944468672541076 
		13 0.0032425510349411608 16 0.0069187444679817429
		5 0 0.14165499468300616 11 0.50027205482632142 12 0.34894144648455599 
		13 0.0033082039491303373 16 0.0058233000569860019
		5 0 0.56668842642939521 1 0.0029843469590698931 5 0.00057143962346636098 
		11 0.42247664218220216 12 0.0072791448058665657
		5 0 0.56579804679622503 1 0.0030339328034978221 9 0.00054238868098545529 
		11 0.42408581372434656 12 0.006539817994945114
		5 0 0.55536953897270591 1 0.0027844755165882117 5 0.0006006751943470163 
		11 0.42997482803872067 12 0.011270482277638253
		5 0 0.5288522187689173 1 0.0021122120237280087 5 0.00069292757375999066 
		11 0.4427985610941097 12 0.025544080539484995
		5 0 0.48884168818433826 1 0.0013929922117332772 11 0.45685056045124572 
		12 0.052103951603710057 13 0.00081080754897256552
		5 0 0.41739660281175284 11 0.47584575267116752 12 0.1034410554404447 
		13 0.0016406010288316552 16 0.0016759880478032423
		5 0 0.30852290506595104 11 0.50551289536680455 12 0.1809697179731305 
		13 0.002267584457849824 16 0.0027268971362639015
		5 0 0.19550708537996009 11 0.51562153894275331 12 0.28221495024753296 
		13 0.0026479518065301529 16 0.0040084736232234054
		5 0 0.10498565765897466 11 0.49854254866872627 12 0.38830444255945257 
		13 0.0027172502826190519 16 0.0054501008302276326
		5 0 0.062084561393800627 11 0.48282834074700903 12 0.44624218832640078 
		13 0.00247663578040731 16 0.0063682737523824209
		5 0 0.056198612892143091 11 0.48022780861030917 12 0.4547163230647478 
		13 0.0022597422584575682 16 0.0065975131743424972
		5 0 0.085909413646975477 11 0.49036028568101958 12 0.41484354258180717 
		13 0.0025619550267667844 16 0.0063248030634310308
		5 0 0.16408646211775368 11 0.51106515987066903 12 0.31714916166831736 
		13 0.002663069849319247 16 0.005036146493940661
		5 0 0.27396256609175729 11 0.51324581203117114 12 0.207177510455645 
		13 0.0022850751628575743 16 0.0033290362585690443
		5 0 0.39252431980795605 11 0.48713315504548255 12 0.11669041676437407 
		13 0.0016805046799165044 16 0.0019716037022709091
		5 0 0.4730765693757894 1 0.0010556016278877893 11 0.46493332432302259 
		12 0.060007430191818069 16 0.00092707448148218502
		5 0 0.51874435760841342 1 0.0016608613911839271 5 0.00069870705625534122 
		11 0.44868179091183025 12 0.030214283032317095
		5 0 0.55143021271002612 1 0.0024540595088701376 5 0.00065271908057061264 
		11 0.43168524444906575 12 0.013777764251467449;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -3.7338463107807439e-16 0.18340338349437801 0.52967105992269137 0
		 1.0000000000000002 1.5543122344752192e-15 5.5511151231257827e-17 0 -1.609823385706477e-15 0.94495534726091313 -0.32719931491830367 0
		 85.858736947072572 511.15941496808341 -97.611260077659594 1;
	setAttr -s 8 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
createNode tweak -n "tweak18";
	rename -uid "1A372AE0-4B24-B026-5A70-17A639A22F06";
createNode objectSet -n "skinCluster18Set";
	rename -uid "EE402560-470E-4DB6-738A-E4BD850E7A8A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster18GroupId";
	rename -uid "44903F8F-4499-F4A4-BF60-4BB5D90B6877";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster18GroupParts";
	rename -uid "9B079CE1-4368-015C-1F15-59870C2DE9AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet18";
	rename -uid "54A4B72C-4A38-BAB3-17B6-F5867031AFDE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId52";
	rename -uid "F025EF15-455F-A005-3833-6EAF24F86AF5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "0DB7B04F-44B6-976A-C371-189FB70587A8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster19";
	rename -uid "03470CEE-44BB-2EA2-D5FB-4C81BB023D77";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.050290122192615506 11 0.44508732312129068 12 0.44774394935028072 
		13 0.050729753170957591 16 0.006148852164855426
		5 0 0.051342847174001616 11 0.44649228015280046 12 0.44808127636907763 
		13 0.046951236915659479 16 0.0071323593884608759
		5 0 0.016588496583474239 11 0.30689675322091298 12 0.5521781987315566 
		13 0.0064771490215650117 16 0.11785940244249118
		5 0 0.017362677635542053 11 0.29785742185624453 12 0.56482695819894313 
		13 0.0055725405541696563 16 0.11438040175510072
		5 0 0.046252806090068002 11 0.44473312504439966 12 0.45613804905365612 
		13 0.023735843463702017 16 0.029140176348174302
		5 0 0.046068863256056011 11 0.44602191019593623 12 0.45478802305476773 
		13 0.026278897311755717 16 0.026842306181484255
		5 0 0.02817313152075995 11 0.40591144635805643 12 0.4871085406874226 
		13 0.011503100904911219 16 0.067303780528849819
		5 0 0.029829641749616196 11 0.41161491754800744 12 0.48669355426893601 
		13 0.014034666406343592 16 0.05782722002709665
		5 0 0.046702598168175936 11 0.45295064021919407 12 0.45360624381090192 
		13 0.031260956419224557 16 0.015479561382503388
		5 0 0.046931483442680069 11 0.45138063934981809 12 0.45192530376660112 
		13 0.035849215554544081 16 0.01391335788635663
		5 0 0.046308647786783522 11 0.4508734162858507 12 0.45472853673542873 
		13 0.026563065694823005 16 0.021526333497114063
		5 0 0.045062749539242324 11 0.45154777861042167 12 0.45455426914934494 
		13 0.029046152983925839 16 0.019789049717065309
		5 0 0.038308914424493822 11 0.43538532703047961 12 0.4683462857529565 
		13 0.01742238119319954 16 0.040537091598870624
		5 0 0.04049692107162596 11 0.43631437138472323 12 0.46652236645473805 
		13 0.020805016710882064 16 0.035861324378030662
		5 0 0.049909053375495289 11 0.4495679800446144 12 0.45003502477520568 
		13 0.03990348738888564 16 0.01058445441579892
		5 0 0.05010719717003595 11 0.44692001668543729 12 0.44815375881651576 
		13 0.045675191423167977 16 0.0091438359048429049
		5 0 0.021503945351538097 11 0.34879045146828269 12 0.52183362355266472 
		13 0.0077414377428861791 16 0.10013054188462829
		5 0 0.020860041151002939 11 0.36017579470299133 12 0.51546096941188846 
		13 0.0091858906377415075 16 0.094317304096375676
		5 0 0.049450293565818412 11 0.44715160467448595 12 0.44962802553731396 
		13 0.048180276494867121 16 0.0055897997275144336
		5 0 0.048696945236260315 11 0.44589332794939279 12 0.44921386028529087 
		13 0.050988607093358625 16 0.0052072594356974656
		5 0 0.048500004019433759 11 0.44782217094218602 12 0.44989082495128746 
		13 0.047009979417656299 16 0.0067770206694365877
		5 0 0.046114422835751068 11 0.45254644692631579 12 0.45326874286011848 
		13 0.037585077709346083 16 0.010485309668468773
		5 0 0.042944330839212549 11 0.45501108342622293 12 0.45771269819064342 
		13 0.028809716760406043 16 0.015522170783515166
		5 0 0.041350272736993127 11 0.44735520903753195 12 0.46333328086338454 
		13 0.023410373531094833 16 0.024550863830995546
		5 0 0.033315739858353996 11 0.42917562641392704 12 0.4815751765689163 
		13 0.01642594161997149 16 0.039507515538831278
		5 0 0.023194838243290772 11 0.39305001790321759 12 0.50508166917344866 
		13 0.010607201372365043 16 0.068066273307677866
		5 0 0.01688554881490353 11 0.33357687653052087 12 0.54075775020069372 
		13 0.0069753705357200411 16 0.1018044539181619
		5 0 0.015049788788449937 11 0.28963502156773224 12 0.57497132631090297 
		13 0.005202722863346769 16 0.1151411404695681
		5 0 0.01600238495627249 11 0.28637729157498537 12 0.582314448989531 
		13 0.0047705458366217703 16 0.11053532864258944
		5 0 0.018323393202205614 11 0.32287637190153129 12 0.55016825816294856 
		13 0.005983631299190658 16 0.10264834543412374
		5 0 0.02301423573402929 11 0.38487317308315389 12 0.5068758287617624 
		13 0.0087456199915778993 16 0.076491142429476494
		5 0 0.031207977318984254 11 0.42692675975231698 12 0.48241907157274838 
		13 0.013399067840034147 16 0.04604712351591627
		5 0 0.041181380024586711 11 0.44584252770563315 12 0.46539739506154426 
		13 0.020437559224802386 16 0.027141137983433355
		5 0 0.043351169784985877 11 0.45467523646648889 12 0.45931831354948544 
		13 0.025413139390979205 16 0.017242140808060653
		5 0 0.045590764548078221 11 0.45497369488161932 12 0.45558062557396717 
		13 0.032038467105073132 16 0.011816447891262124
		5 0 0.048690945613703109 11 0.45064130952159737 12 0.45163524938563115 
		13 0.041253089154407528 16 0.0077794063246608355;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -1.7424616116976806e-15 0.54158972580776465 0.14446038106097961 0
		 0.99258497880927743 -0.031326972269146491 0.11744650122772647 0 0.12155270396904476 0.255812343868971 -0.95905421373459232 0
		 89.260439353707127 381.44460520756621 -33.175674124092538 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak19";
	rename -uid "8BACE310-48C2-9FC8-5403-4D8DA6E82E14";
createNode objectSet -n "skinCluster19Set";
	rename -uid "00DB0523-436C-B00E-7E05-6FB7AAE8D195";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster19GroupId";
	rename -uid "D607C7A8-46C1-18E1-DD48-A5B2AACF7028";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster19GroupParts";
	rename -uid "4505E562-4CC3-1A16-FD1E-BCA870D11FC6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet19";
	rename -uid "E312CB95-4FA9-6053-45C8-0BBBCB1F0654";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId54";
	rename -uid "58DFCD23-4958-4173-FCE3-FA89202A8861";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "9F1F0DFF-4383-054B-C530-94A275774FDD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster20";
	rename -uid "9255C79A-4C8C-6457-5636-FFA14271D0EC";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.14377253543519508 11 0.57441889318435757 12 0.27357891870986567 
		13 0.0020800542214287226 16 0.0061495984491528278
		5 0 0.13367825604372019 11 0.54189255209873244 12 0.31266055815908456 
		13 0.0029660452150903696 16 0.00880258848337254
		5 0 0.0014182173664539263 11 0.17186581646293192 12 0.67655189707019192 
		13 0.13275907948434251 16 0.017404989616079749
		5 0 0.00096612675746355877 11 0.14118157725274699 12 0.70376734263225982 
		13 0.13667306903104526 16 0.017411884326484346
		5 0 0.026559956945389745 11 0.41005845562979698 12 0.48466904922865983 
		13 0.043315810360014292 16 0.035396727836139313
		5 0 0.034161172720116477 11 0.42162938239946018 12 0.47905178010340616 
		13 0.035414142610419849 16 0.029743522166597477
		5 0 0.0063876262403831704 11 0.32453894575623399 12 0.54632102435509233 
		13 0.091279619674495591 16 0.031472783973794993
		5 0 0.0092978028424150778 11 0.35795285855577619 12 0.52197212964428918 
		13 0.080883037646456546 16 0.029894171311063176
		5 0 0.069395492382880508 11 0.45460674772492932 12 0.44225952583593986 
		13 0.013519743564590965 16 0.020218490491659292
		5 0 0.086372834333451221 11 0.47101471342805346 12 0.416981050413951 
		13 0.010243494736822364 16 0.015387907087722098
		5 0 0.043088838237055734 11 0.43062343729420177 12 0.47163727433902658 
		13 0.026278239771664002 16 0.028372210358051809
		5 0 0.054336400183425504 11 0.44232348912944386 12 0.46039535995035219 
		13 0.020725550625866312 16 0.022219200110911965
		5 0 0.014718559730486448 11 0.38570513119945865 12 0.4994547921629941 
		13 0.063747653215437849 16 0.036373863691622849
		5 0 0.019925036012803245 11 0.40236828114437251 12 0.49097303881750615 
		13 0.054361641433414071 16 0.032372002591904141
		5 0 0.10532743551763443 11 0.49173383634348017 12 0.38302332778409637 
		13 0.0062929491193499049 16 0.01362245123543907
		5 0 0.1238531928596595 11 0.52171154300889522 12 0.34010144270613102 
		13 0.0045144522700845289 16 0.0098193691552297714
		5 0 0.0023537996851327081 11 0.22115819471953116 12 0.63312151916608816 
		13 0.11990093377771724 16 0.023465552651530726
		5 0 0.003594284933102715 11 0.26473999026387368 12 0.59765016633499657 
		13 0.11104195366842201 16 0.022973604799604964
		5 0 0.13705956778912595 11 0.57521219607269347 12 0.27972646396466166 
		13 0.0018789386720557875 16 0.0061228335014629478
		5 0 0.14352698143970133 11 0.59732510093989188 12 0.2530691846172029 
		13 0.0014809943904178829 16 0.0045977386127859935
		5 0 0.12851429100507181 11 0.55757575837260942 12 0.3044865913590219 
		13 0.0027159390990638588 16 0.006707420164233111
		5 0 0.094988168508888957 11 0.49584223652528608 12 0.39112257873677281 
		13 0.0066474307795453503 16 0.01139958544950687
		5 0 0.060925880210303006 11 0.45602252665938497 12 0.45051480746720601 
		13 0.015018024305746371 16 0.017518761357359611
		5 0 0.033152105710180881 11 0.42622197310458154 12 0.48093131202052963 
		13 0.033750579286271433 16 0.025944029878436421
		5 0 0.014604769138300373 11 0.39295624913873961 12 0.50339880976455365 
		13 0.059847605323569725 16 0.029192566634836624
		5 0 0.0057691796524523943 11 0.32682117164184804 12 0.55447012156078013 
		13 0.088194685709705734 16 0.024744841435213598
		5 0 0.0020289179295812968 11 0.21752366533286771 12 0.64510104319721506 
		13 0.11737473573621934 16 0.017971637804116522
		5 0 0.00086149563081565318 11 0.13804974403865319 12 0.71073813523142815 
		13 0.13547494269037433 16 0.014875682408728625
		5 0 0.0006817994740207239 11 0.12145211744771688 12 0.72501669563879001 
		13 0.13743804990637815 16 0.015411337533094288
		5 0 0.0013341325920196326 11 0.17670868724751107 12 0.67835836088579293 
		13 0.12491299316547237 16 0.018685826109203874
		5 0 0.0038043995824112238 11 0.28527725003490639 12 0.58690275193581654 
		13 0.098190591944542036 16 0.025825006502323666
		5 0 0.010075827558073503 11 0.36975310419121571 12 0.51807286665633523 
		13 0.069679281214647962 16 0.032418920379727635
		5 0 0.024847179640033593 11 0.41209952595159671 12 0.48876314591986769 
		13 0.041975361090532536 16 0.032314787397969467
		5 0 0.047790940450996494 11 0.44214120155398468 12 0.4667362722668586 
		13 0.020077593860912256 16 0.023253991867248126
		5 0 0.077029294175956026 11 0.47221451039502971 12 0.42593441833325879 
		13 0.009121189533414233 16 0.015700587562341436
		5 0 0.11205353871807419 11 0.52272152706308583 12 0.35148025494532126 
		13 0.003899679749339561 16 0.0098449995241790874;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 2.9870770486245951e-15 -0.30070511697320085 0.47303769979035148 0
		 1 9.9920072216264089e-15 0 0 -8.4932061383824475e-15 0.84391906164957819 0.53647051865363071 0
		 85.858736947072018 512.54021681094991 -88.137992733592156 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak20";
	rename -uid "D6A05540-4250-3025-C4A9-138688AF5864";
createNode objectSet -n "skinCluster20Set";
	rename -uid "0629129F-4B2E-B6AA-7E25-79BCBF8DED8D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster20GroupId";
	rename -uid "07CB2000-4A96-30B1-D816-A1980AF93CD2";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster20GroupParts";
	rename -uid "46BE1C92-4061-6F17-F830-80A26D3699EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet20";
	rename -uid "4828352E-4E60-3208-F333-43B6CDD34FB8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId56";
	rename -uid "D870C603-454D-9A1C-FAAF-4CB567A073D9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "F8E6625E-4911-E6AE-1F0D-ED9DC1A6E547";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster21";
	rename -uid "0818B96E-4262-5037-9740-F9899B61ADCD";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.84014814244479197 1 0.0047530935745996108 5 0.077364364113278392 
		9 0.054767124055119888 11 0.022967275812210065
		5 0 0.82532393557227524 1 0.0054523991744909383 5 0.083379834529385646 
		9 0.051340314191232465 11 0.03450351653261563
		5 0 0.62087106685357796 1 0.042816511571921352 9 0.0058274580288202663 
		11 0.31649999412763613 12 0.013984969418044184
		5 0 0.60869078654718589 1 0.036722175545164881 9 0.0043258256225433825 
		11 0.33560876674206896 12 0.01465244554303694
		5 0 0.71256685522262753 1 0.038922653478934297 5 0.022598034853904193 
		9 0.0301028604161604 11 0.19580959602837364
		5 0 0.72374903068527363 1 0.041932465788534351 5 0.026571070603468843 
		9 0.037490233890237729 11 0.17025719903248573
		5 0 0.66029735246656096 1 0.041701831304905797 9 0.011726413294342198 
		11 0.27570918641453995 12 0.010565216519651281
		5 0 0.66989404353447446 1 0.051738788884555478 5 0.01003627621654841 
		9 0.017435457935118071 11 0.25089543342930365
		5 0 0.78605946893472312 1 0.016313308944864852 5 0.049938714940780518 
		9 0.043125979300207042 11 0.10456252787942437
		5 0 0.7974703734916635 1 0.014849210377094151 5 0.056604263672056919 
		9 0.050665623138964069 11 0.080410529320221469
		5 0 0.75187383915921069 1 0.027648846292753961 5 0.032173293660488433 
		9 0.036707820977733695 11 0.15159619990981316
		5 0 0.76456732209509015 1 0.028102806709662299 5 0.037796121099652392 
		9 0.044226748404753623 11 0.12530700169084158
		5 0 0.68632848808056146 1 0.042353406640944245 5 0.014562117986352161 
		9 0.020502685758431467 11 0.23625330153371055
		5 0 0.69243271648333993 1 0.050733226498562434 5 0.017864030433088735 
		9 0.028417846942786946 11 0.21055217964222184
		5 0 0.80605008977269232 1 0.0088316915319699412 5 0.073331350068790227 
		9 0.048498149428459897 11 0.06328871919808772
		5 0 0.81930809052139442 1 0.0077716669966315845 5 0.0737858935721286 
		9 0.055216270304927047 11 0.043918078604918316
		5 0 0.63115704063917177 1 0.038606611447723475 9 0.0065909512334175781 
		11 0.31028600995473149 12 0.013359386724955567
		5 0 0.6460902847115314 1 0.047242607536882732 9 0.0095855379267068951 
		11 0.28532215170472314 12 0.011759418120155822
		5 0 0.84353728590499066 1 0.0042136207937975758 5 0.078831874250828896 
		9 0.050115017961290267 11 0.02330220108909254
		5 0 0.85280668304849239 1 0.0039099386928715882 5 0.07326524269923991 
		9 0.052816203804250783 11 0.017201931755145481
		5 0 0.8391031128779074 1 0.0056133542960518073 5 0.07283380658340384 
		9 0.052558200536345225 11 0.029891525706291562
		5 0 0.81677140943487181 1 0.010573203327288899 5 0.061879563327917636 
		9 0.049755048454458828 11 0.061020775455463
		5 0 0.78693990609594966 1 0.021656744708059537 5 0.04262511467047482 
		9 0.044459199821253195 11 0.10431903470426276
		5 0 0.73269781493246378 1 0.040250422785593147 5 0.02590809670349728 
		9 0.036137358451869522 11 0.16500630712657646
		5 0 0.69067052074155755 1 0.049175636004376064 5 0.014258800927325958 
		9 0.023290257236497556 11 0.22260478509024292
		5 0 0.66856081696757119 1 0.047351030356269495 9 0.012932985812514652 
		11 0.2618567910078301 12 0.0092983758558146112
		5 0 0.64060839427652982 1 0.042854635253905239 9 0.0069366022325515796 
		11 0.2976708031427473 12 0.011929565094265984
		5 0 0.61300622714725339 1 0.038891895711399747 9 0.0043999593137686163 
		11 0.32981762569500023 12 0.013884292132578089
		5 0 0.60446096444331987 1 0.034729531572487454 9 0.0035705105661931781 
		11 0.34295826190906048 12 0.014280731508939092
		5 0 0.62407116510175842 1 0.035503019999591129 9 0.004837667823404077 
		11 0.32233917808433332 12 0.01324896899091307
		5 0 0.65573991150472311 1 0.037735313942434526 9 0.0084913045290679941 
		11 0.28716572453301215 12 0.010867745490762184
		5 0 0.68346879216276957 1 0.039700879871495141 5 0.011158677974688282 
		9 0.015840338359803915 11 0.24983131163124309
		5 0 0.72087453924887346 1 0.035087115427003449 5 0.021445886656404414 
		9 0.027407638930691463 11 0.19518481973702709
		5 0 0.77190355109215025 1 0.022810284488264405 5 0.036176394897096592 
		9 0.036911056760584829 11 0.13219871276190406
		5 0 0.80375102695940226 1 0.012092427525757933 5 0.057489596073444248 
		9 0.04255084523867713 11 0.084116104202718325
		5 0 0.8249530984890393 1 0.0064065410746241792 5 0.076466990582003 
		9 0.046618987292690796 11 0.045554382561642771;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -8.7123080584884028e-16 -0.39928469339782674 0.39339543263110793 0
		 -0.99844924697427417 -0.039070793893966393 -0.039655696702995513 0 -0.055669571729130229 0.70074555148241013 0.71123594598495099 0
		 -94.908316169716642 705.53533066896978 -74.815942144961738 1;
	setAttr -s 6 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak21";
	rename -uid "7CB56B4E-4635-68A6-81D1-0ABF1B0CDFDC";
createNode objectSet -n "skinCluster21Set";
	rename -uid "4B3302F4-424F-9413-A9A8-BA898486ADA5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster21GroupId";
	rename -uid "7D31B3B3-4FB9-22E2-DE03-9082097C933D";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster21GroupParts";
	rename -uid "DF3F694E-4B54-AEC5-B375-14AE21A7C1DE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet21";
	rename -uid "CF2D8AD1-466F-940A-A526-3FAE1D0749EC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId58";
	rename -uid "14E426BF-476A-694E-F2DF-EC9FD820F49F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	rename -uid "A49EF2A1-4245-EA28-90A3-119BAD6F6F1B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster22";
	rename -uid "86D2E72B-4C3D-71FE-5829-E2AEBF24EB79";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.87756934740148929 1 0.032977245638339175 5 0.0033168575353557475 
		9 0.080304477917628195 11 0.005832071507187472
		5 0 0.87439399208762381 1 0.031231391197553859 5 0.0048019229032972427 
		9 0.080876024124606136 11 0.0086966696869190466
		5 0 0.64306873624041549 1 0.0013510516752955259 5 0.0033995798614761294 
		11 0.34628281481763995 12 0.0058978174051729747
		5 0 0.63368451384190283 1 0.00098551317523952789 5 0.0031666684986831855 
		11 0.35630874130184409 12 0.0058545631823303098
		5 0 0.75568758819085224 1 0.025888029711284444 5 0.020493224527793296 
		9 0.026167277321050817 11 0.17176388024901917
		5 0 0.75190318185526783 1 0.037397146807914054 5 0.02148126926949992 
		9 0.033775163465059349 11 0.15544323860225895
		5 0 0.7203034432766694 5 0.0085182636066938929 9 0.0049716834889091503 
		11 0.26139366544511522 12 0.0048129441826123042
		5 0 0.72992978815924348 1 0.0087467640089962731 5 0.010163367485254676 
		9 0.0081184677248454882 11 0.24304161262166016
		5 0 0.82905844468468226 1 0.038411339379434417 5 0.016345211239346492 
		9 0.053013266171938904 11 0.063171738524597898
		5 0 0.84486598039619554 1 0.04201394045442302 5 0.012182838539338874 
		9 0.05528694995141864 11 0.045650290658623915
		5 0 0.78226158975785309 1 0.036102771908212865 5 0.021220965113087468 
		9 0.03989982477495406 11 0.12051484844589246
		5 0 0.79155714939422384 1 0.044708782470448225 5 0.018857112916141509 
		9 0.045303956604183883 11 0.099572998615002448
		5 0 0.75100292411315128 1 0.012629019452617503 5 0.014399426496251175 
		9 0.013492033328745731 11 0.20847659660923432
		5 0 0.74415375293229924 1 0.022522626846596935 5 0.016729144795164363 
		9 0.019942694038701681 11 0.19665178138723766
		5 0 0.86567543916718381 1 0.033837061465000991 5 0.0091664872530178663 
		9 0.067217932344887724 11 0.024103079769909733
		5 0 0.87342802493565053 1 0.036190364998434331 5 0.0060797397577100499 
		9 0.06863534731826175 11 0.015666522989943504
		5 0 0.66527370812042219 1 0.0019129944465351909 5 0.0049525160306458389 
		11 0.32218911065459016 12 0.005671670747806664
		5 0 0.6835115975073256 1 0.0029650752680481065 5 0.0055327601584593206 
		11 0.30262394807998466 12 0.0053666189861822471
		5 0 0.87954424818997812 1 0.030120932227484944 5 0.0033717934326372343 
		9 0.081423991367952198 11 0.0055390347819475536
		5 0 0.88119555492254542 1 0.031810122651299629 5 0.0026324447995055089 
		9 0.08003256569736715 11 0.0043293119292822568
		5 0 0.88315742290761701 1 0.032793927053599917 5 0.0040542190323071834 
		9 0.070651368695269959 11 0.0093430623112058363
		5 0 0.86957342124978065 1 0.036772488821926533 5 0.0083441435301590209 
		9 0.056174163124109742 11 0.029135783274024198
		5 0 0.82400858690553314 1 0.04158594189855943 5 0.01449227503066251 
		9 0.046153527665997576 11 0.073759668499247436
		5 0 0.7685308243604736 1 0.035207748965903465 5 0.017817382580166862 
		9 0.032394978148023397 11 0.14604906594543263
		5 0 0.75008221944139153 1 0.016331103462562328 5 0.01274046089243485 
		9 0.014694199966744967 11 0.20615201623686616
		5 0 0.72032733940331883 1 0.0053262516092451567 5 0.0071262001998286979 
		9 0.004847371563221221 11 0.26237283722438626
		5 0 0.66645732712853833 1 0.001826676734805499 5 0.0038768481059078658 
		11 0.32274350044218425 12 0.0050956475885640196
		5 0 0.63461868411579669 1 0.00089778405733846427 5 0.002685706980204807 
		11 0.35625860812263738 12 0.0055392167240226964
		5 0 0.63006285434492093 1 0.00073110037514983604 5 0.0026709413876937968 
		11 0.36103892590924613 12 0.0054961779829893814
		5 0 0.65027699133129213 1 0.0012538424757848191 5 0.0036466760209833676 
		11 0.33951016920913907 12 0.005312320962800713
		5 0 0.70271027142644127 5 0.0061553300708838792 9 0.0029508033189201547 
		11 0.28354860943347515 12 0.0046349857502794049
		5 0 0.74970354145172258 1 0.0084288998110733388 5 0.010747790022410207 
		9 0.0090994631240200931 11 0.22202030559077379
		5 0 0.77107315010413569 1 0.023041405514437455 5 0.017377168051914381 
		9 0.024724997900761724 11 0.16378327842875076
		5 0 0.80952710485152202 1 0.034956716284468108 5 0.017577202001022377 
		9 0.042456841344150509 11 0.095482135518837094
		5 0 0.8564470597535101 1 0.033923922752713359 5 0.011966854138145707 
		9 0.054949038144651942 11 0.042713125210978899
		5 0 0.87918194233999769 1 0.030027624226466845 5 0.0061634802053141943 
		9 0.070042059414977556 11 0.014584893813243743;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -3.7338463107807439e-16 0.18340338349437801 0.52967105992269137 0
		 -1.0000000000000002 -1.5543122344752192e-15 -5.5511151231257827e-17 0 -1.609823385706477e-15 0.94495534726091313 -0.32719931491830367 0
		 -90.100201145038568 608.06698484415142 -97.611260077659594 1;
	setAttr -s 6 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak22";
	rename -uid "4446A518-4726-B9D3-75C9-7998B551DD04";
createNode objectSet -n "skinCluster22Set";
	rename -uid "94FC8150-433F-9D2A-1721-5EA8472162EB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster22GroupId";
	rename -uid "BCF91ED5-4FD9-7158-1D6D-68B908C8A46A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster22GroupParts";
	rename -uid "2BD5D15C-4D20-A814-891D-579A0746E5B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet22";
	rename -uid "88C38945-48F5-3215-823B-76AFB3CF80F5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId60";
	rename -uid "6C7BA364-4A4F-4EE9-3963-10A1E9EFFBFE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	rename -uid "8D005A5B-4DCD-2D58-1284-8797E2017BAC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster23";
	rename -uid "D6B8AE85-425B-B848-83F8-969970E9B001";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.15666980477114045 11 0.58177138522811112 12 0.24416767637987979 
		13 0.0050697024382380974 16 0.012321431182630394
		5 0 0.15048384693331529 11 0.55255417055619949 12 0.27333493754149396 
		13 0.0065569724444290468 16 0.017070072524562316
		5 0 0.0027943313561059574 11 0.15835896625465876 12 0.68136778877465232 
		13 0.13382238062134238 16 0.023656532993240633
		5 0 0.0020393154982208338 11 0.1425340695491448 12 0.69525754041424548 
		13 0.13654595881755111 16 0.023623115720837806
		5 0 0.034009114764940382 11 0.35169822377124615 12 0.52213468407328856 
		13 0.049922658883798862 16 0.042235318506726224
		5 0 0.045927999668165805 11 0.3826971891118543 12 0.492269927968773 
		13 0.042192146996734348 16 0.0369127362544725
		5 0 0.0094713471334850422 11 0.24396351309996087 12 0.60455654990954666 
		13 0.10191175242450794 16 0.040096837432499359
		5 0 0.012740183885213278 11 0.26981229942444401 12 0.59150573847571997 
		13 0.089834131137698739 16 0.036107647076924015
		5 0 0.093723410797219409 11 0.46552733165547783 12 0.38730953496420956 
		13 0.019422642722981078 16 0.034017079860112161
		5 0 0.11311000956615787 11 0.48442768243454892 12 0.35864253931498186 
		13 0.016258242034463209 16 0.027561526649848126
		5 0 0.05845737536766759 11 0.41333585221481423 12 0.45643914389468992 
		13 0.032502653064794343 16 0.039264975458033799
		5 0 0.075977471195138258 11 0.43897539837379052 12 0.4240470517712881 
		13 0.027633780832095108 16 0.033366297827687949
		5 0 0.0190538630954665 11 0.29909972055214917 12 0.56476792103977824 
		13 0.073311577594014313 16 0.043766917718591779
		5 0 0.02601555466586725 11 0.32685588421589512 12 0.54759012644065952 
		13 0.062003293401257029 16 0.037535141276320995
		5 0 0.12920538375237112 11 0.50653495343888877 12 0.32743744344546216 
		13 0.011196362922853927 16 0.025625856440424099
		5 0 0.14368233875177283 11 0.5333659420239405 12 0.29492187123322239 
		13 0.0089532186911308129 16 0.019076629299933368
		5 0 0.0043563686656505184 11 0.18505011292098039 12 0.65503265700846114 
		13 0.12464229521188691 16 0.030918566193021146
		5 0 0.0059178181196721568 11 0.20906267263621164 12 0.63826801575304604 
		13 0.11688358319541647 16 0.029867910295653666
		5 0 0.15317870003531822 11 0.58337649652268719 12 0.24628297071418731 
		13 0.0047129819642314878 16 0.012448850763575785
		5 0 0.15663453779010927 11 0.60274243583817733 12 0.22703812617154243 
		13 0.0039191932600917741 16 0.0096657069400791166
		5 0 0.1477339139957479 11 0.56740596922906295 12 0.26469255495872213 
		13 0.0062309467582619708 16 0.013936615058205103
		5 0 0.12243433381283697 11 0.51132266265603332 12 0.33179679233851828 
		13 0.01204619911692438 16 0.022400012075686929
		5 0 0.08632862765467289 11 0.46330240031969444 12 0.39901649405371425 
		13 0.021841676955192808 16 0.029510801016725624
		5 0 0.046618176143276978 11 0.38935241031373197 12 0.48818078969779177 
		13 0.041443303132262223 16 0.034405320712937192
		5 0 0.020157436003325233 11 0.30905846454511721 12 0.56468669117621784 
		13 0.069621170219447553 16 0.036476238055892084
		5 0 0.0090048622587609387 11 0.24425748997183458 12 0.61510688626933063 
		13 0.098305795369828142 16 0.033324966130245652
		5 0 0.0039196143193172741 11 0.17971518115575108 12 0.66834967311398119 
		13 0.12219482589251823 16 0.02582070551843231
		5 0 0.0018550564199814922 11 0.13887180832460419 12 0.70222775149482797 
		13 0.13569193769767202 16 0.021353446062914366
		5 0 0.0015060024465444256 11 0.1310568189141616 12 0.70877801973203991 
		13 0.13692336930889001 16 0.021735789598364058
		5 0 0.0028270705781726062 11 0.1588948522109507 12 0.68415397414203427 
		13 0.12785396742092667 16 0.026270135647915773
		5 0 0.0066219539335490235 11 0.21703745361527957 12 0.6318889425688462 
		13 0.10863546878824412 16 0.035816181094081238
		5 0 0.01430590627652098 11 0.27860917621258197 12 0.58235235503974903 
		13 0.082206770955415925 16 0.042525791515732152
		5 0 0.033381815446648158 11 0.35494318509843797 12 0.51978287169832527 
		13 0.050273773226554748 16 0.041618354530033694
		5 0 0.067025197755657753 11 0.43814535281527828 12 0.43237086850072398 
		13 0.026592494220052554 16 0.03586608670828742
		5 0 0.10407005996523332 11 0.48857029300296789 12 0.36337988185712955 
		13 0.014818537652910982 16 0.02916122752175827
		5 0 0.13622649618076085 11 0.53688430423609168 12 0.29910426147281122 
		13 0.0080688355093160267 16 0.019716102601020181;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" 2.9870770486245951e-15 -0.30070511697320085 0.47303769979035148 0
		 -1 -9.9920072216264089e-15 -0 0 -8.4932061383824475e-15 0.84391906164957819 0.53647051865363071 0
		 -94.435546116142106 512.54021681094991 -88.137992733592156 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak23";
	rename -uid "835AD42A-419D-AE46-7E6C-BE9698A62C45";
createNode objectSet -n "skinCluster23Set";
	rename -uid "8CDA7404-4AB3-060C-B543-4B988E7395B9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster23GroupId";
	rename -uid "F5380119-4763-47EE-6193-69ACBA46A48C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster23GroupParts";
	rename -uid "C36BDA98-497F-1DBD-74E5-5BA161C0D955";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet23";
	rename -uid "8AC08739-407B-887E-CE85-70B9B21E3C42";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId62";
	rename -uid "57BD24BF-4017-C004-C6EB-B28946F914C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	rename -uid "0EF28790-4FC8-E865-5CFA-D99A8C4C56E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster24";
	rename -uid "7A33BA4D-4DF6-4AE8-C6A0-BA9BC7B123B7";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.61999034200674408 1 0.0082676394689250431 5 0.0016921214013798968 
		11 0.35306356271393291 12 0.016986334409018155
		5 0 0.60946527467008182 1 0.0075115362096751627 5 0.0018418881124562031 
		11 0.36068618349602677 12 0.020495117511760232
		5 0 0.10105128568143869 11 0.53253459611219534 12 0.34816875583181167 
		13 0.0063864579099421979 16 0.011858904464612177
		5 0 0.089678316880972678 11 0.52996418572680337 12 0.36209573268085316 
		13 0.0057150526646003062 16 0.012546712046770506
		5 0 0.32679856300496896 11 0.51324622187586499 12 0.14963670496234444 
		13 0.0053159917530868836 16 0.0050025184037346985
		5 0 0.33932647464119969 11 0.50125194192994005 12 0.14918511234754001 
		13 0.0055334805245763861 16 0.0047029905567439164
		5 0 0.19566088500079887 11 0.54670331592363886 12 0.2420835631320491 
		13 0.006638827516207927 16 0.0089134084273052895
		5 0 0.21382631337731176 11 0.54792332899246099 12 0.22347754650935439 
		13 0.006887647453317527 16 0.007885163667555279
		5 0 0.47561881305928333 1 0.0043585948089704439 11 0.43992713499110919 
		12 0.077708123419929942 13 0.0023873337207071803
		5 0 0.50117467021282158 1 0.0054376049150897362 11 0.42080037092753525 
		12 0.070453440677787804 13 0.0021339132667655292
		5 0 0.39291647532357543 11 0.48348944376783187 12 0.11634710434003831 
		13 0.0039001951218885006 16 0.0033467814466657413
		5 0 0.41150991220002237 1 0.0038767777450830778 11 0.46610898382996058 
		12 0.11462965151396805 13 0.0038746747109659899
		5 0 0.2685570483176673 11 0.53642789721365847 12 0.18259910351427505 
		13 0.0059328973676994086 16 0.0064830535866997815
		5 0 0.27922596684845719 11 0.52911500924631083 12 0.17903218347577088 
		13 0.0064511148193741414 16 0.0061757256100870815
		5 0 0.55763687568564835 1 0.0059663284577811679 5 0.0019964218181662643 
		11 0.39327414637903374 12 0.041126227659370629
		5 0 0.57842088573452866 1 0.0071360710570250348 5 0.0018564448151327415 
		11 0.3785119913559426 12 0.034074607037371037
		5 0 0.12913118382494648 11 0.53619065623931694 12 0.31630004919510774 
		13 0.0067212637156039501 16 0.011656847025024911
		5 0 0.14738878965205865 11 0.542893513034023 12 0.29251593138376741 
		13 0.0070132814496345879 16 0.010188484480516423
		5 0 0.62445705566251541 1 0.0076822020377255934 5 0.0016039018256694215 
		11 0.35159819714521534 12 0.014658643328874203
		5 0 0.62835842954890597 1 0.0082257862160007578 5 0.0015181040094506221 
		11 0.34842468623610251 12 0.013472993989540204
		5 0 0.60343428755926498 1 0.0071587902275655748 5 0.0015624718594465462 
		11 0.36517341108251811 12 0.022671039271204736
		5 0 0.5382455430301426 1 0.0054328350341670117 5 0.0016953528023957644 
		11 0.40353605807578607 12 0.051090211057508557
		5 0 0.44670186923792554 1 0.0040071943997926412 11 0.45110601162936703 
		12 0.095258952520602555 13 0.0029259722123121902
		5 0 0.34167889570997334 11 0.50238297819283384 12 0.14652517665495668 
		13 0.0050568291990135987 16 0.004356120243222605
		5 0 0.25557134362373596 11 0.54238289351140523 12 0.18987900506055774 
		13 0.0059931954642550396 16 0.0061735623400460907
		5 0 0.18259695607936524 11 0.55589500462635755 12 0.24758004901787317 
		13 0.0060970422423585139 16 0.0078309480340456161
		5 0 0.11913922547399651 11 0.54500651069794481 12 0.32020734856613969 
		13 0.0057668607659993182 16 0.0098800544959198114
		5 0 0.084959815839783001 11 0.53453489985542468 12 0.36384192319071396 
		13 0.0051806638880318411 16 0.01148269722604648
		5 0 0.079896585401045953 11 0.53275202498393837 12 0.37055433844519076 
		13 0.0047942131187827305 16 0.012002838051042231
		5 0 0.1042230222918413 11 0.53805741461356227 12 0.34107921691017373 
		13 0.0054008903765858166 16 0.011239455807837039
		5 0 0.16194226596198924 11 0.55182990218841854 12 0.27138136418826614 
		13 0.0058106025782708511 16 0.0090358650830550339
		5 0 0.23824102810650163 11 0.54917594580097695 12 0.20046201917963308 
		13 0.0054869232922234073 16 0.0066340836206647911
		5 0 0.32758901619908382 11 0.51696243916379114 12 0.14623693418715009 
		13 0.0046365669176699868 16 0.0045750435323050039
		5 0 0.42135631665238549 1 0.0030494801610521992 11 0.47160744359715434 
		12 0.10089588603577762 13 0.0030908735536303955
		5 0 0.5118716218462378 1 0.0043643758739506039 5 0.0018265908468154313 
		11 0.42235581473500788 12 0.059581596697988293
		5 0 0.58764609716331884 1 0.0060109422873120578 5 0.0016793584618754809 
		11 0.37685511514891168 12 0.027808486938581858;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -3.7338463107807439e-16 0.18340338349437801 0.52967105992269137 0
		 -1.0000000000000002 -1.5543122344752192e-15 -5.5511151231257827e-17 0 -1.609823385706477e-15 0.94495534726091313 -0.32719931491830367 0
		 -91.367095706615089 511.15941496808341 -97.611260077659594 1;
	setAttr -s 7 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
createNode tweak -n "tweak24";
	rename -uid "445F76FC-4681-2400-A6A8-C381CDE61B4F";
createNode objectSet -n "skinCluster24Set";
	rename -uid "9016BBE9-4D63-B866-978D-298D82F1EB48";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster24GroupId";
	rename -uid "D503CE79-4084-2F8F-3F52-0A96F422E41C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster24GroupParts";
	rename -uid "B645E99D-495D-D36B-1CDE-30BE61E717F4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet24";
	rename -uid "F1346E52-45F5-EC05-E46E-889884856B77";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId64";
	rename -uid "82EAC1F6-4E50-6DC0-8AF3-28AF8C8CF721";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	rename -uid "5EBBDEA8-4208-8260-9164-899BB8D60D74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster25";
	rename -uid "9E2B962A-4DE3-1980-E02D-4F8693E6B574";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		5 0 0.023207282577682547 11 0.48504937184224695 12 0.44588514713771576 
		13 0.043123415622288795 16 0.0027347828200657929
		5 0 0.026777683939334895 11 0.48604447875114537 12 0.44494137955193969 
		13 0.038960375679789737 16 0.0032760820777903428
		5 0 0.02627345968827885 11 0.28946694361514308 12 0.53456180710406631 
		13 0.012765324184316407 16 0.13693246540819534
		5 0 0.025621846092549888 11 0.29032972174990523 12 0.53128315127347481 
		13 0.010690841429136334 16 0.14207443945493398
		5 0 0.045171760376933476 11 0.4333132872435444 12 0.4633132567154048 
		13 0.027768282698974113 16 0.030433412965143132
		5 0 0.039211970106189042 11 0.42418603193406107 12 0.47895027069669871 
		13 0.031739734794794534 16 0.025911992468256709
		5 0 0.038488521345833866 11 0.38185558859171026 12 0.48103034923178684 
		13 0.018187262784335821 16 0.080438278046332953
		5 0 0.034749847722228132 11 0.37057838082330502 12 0.50617848031098633 
		13 0.02045229708107979 16 0.068040994062400842
		5 0 0.035658229469315836 11 0.46717790989734187 12 0.45443091960474097 
		13 0.031902506699614093 16 0.010830434328987087
		5 0 0.029412647646261388 11 0.46621935226756178 12 0.4578427166042125 
		13 0.037639571131856502 16 0.0088857123501077419
		5 0 0.041717317798540064 11 0.45154437380362267 12 0.45773458857453192 
		13 0.029861033809870929 16 0.019142686013434405
		5 0 0.03381686642129255 11 0.44522146629205867 12 0.47084882652669641 
		13 0.033896382848285014 16 0.016216457911667287
		5 0 0.042360299254016714 11 0.41726112993114817 12 0.47040729382068153 
		13 0.022086678481564308 16 0.047884598512589291
		5 0 0.03751792186535341 11 0.40189344041945912 12 0.49432210076753841 
		13 0.026088932975514689 16 0.040177603972134469
		5 0 0.030985307129839962 11 0.47977955638654934 12 0.44779121375238118 
		13 0.035710649893946775 16 0.0057332728372829463
		5 0 0.026163647994472974 11 0.47902018096185717 12 0.44771381388584186 
		13 0.042496011382733415 16 0.0046063457750944743
		5 0 0.032916193090819633 11 0.33039079919726966 12 0.50288704880096213 
		13 0.014640845318001016 16 0.11916511359294757
		5 0 0.031340213874148225 11 0.32647406273493584 12 0.51768974222388653 
		13 0.016703793007105838 16 0.1077921881599236
		5 0 0.023438757208667164 11 0.48854784420356467 12 0.44642911593974544 
		13 0.039087486753182167 16 0.0024967958948405732
		5 0 0.021289166096485346 11 0.48691396301504986 12 0.44729299720091387 
		13 0.042214541556513052 16 0.0022893321310379338
		5 0 0.023013211581756916 11 0.48466588399498123 12 0.44758561752514586 
		13 0.041499062374541193 16 0.0032362245235746032
		5 0 0.025797264937942332 11 0.47728728330566517 12 0.45383164775248258 
		13 0.036982730191668298 16 0.0061010738122416691
		5 0 0.028937668683746563 11 0.45939916744552745 12 0.46773103134010502 
		13 0.031967459209160533 16 0.011964673321460464
		5 0 0.03345399579808641 11 0.42778111325628171 12 0.48564715880553122 
		13 0.028283383346001122 16 0.024834348794099455
		5 0 0.032978739818979183 11 0.39580437109804301 12 0.50214517217406573 
		13 0.021448138110143632 16 0.047623578798768516
		5 0 0.030026373146385052 11 0.35490247442183248 12 0.51420903845413968 
		13 0.017049116163229135 16 0.083812997814413509
		5 0 0.025819015277393973 11 0.3058871769473091 12 0.53088058366267543 
		13 0.013428829724445498 16 0.12398439438817595
		5 0 0.022290232059512343 11 0.27863091376266264 12 0.54462633447742226 
		13 0.010077276294176339 16 0.14437524340622637
		5 0 0.022412499569531983 11 0.28177882472296906 12 0.54108603413747913 
		13 0.0089344757355173995 16 0.14578816583450238
		5 0 0.026874099709045439 11 0.30811915169200443 12 0.52114051785453896 
		13 0.01151431213941413 16 0.1323519186049969
		5 0 0.033059944472974806 11 0.36137047203981287 12 0.49292907115285856 
		13 0.015205461622511855 16 0.097435050711841914
		5 0 0.037432242851970096 11 0.40943505088730375 12 0.47651475852097075 
		13 0.018285086705965948 16 0.058332861033789422
		5 0 0.040918208387345896 11 0.44085710546990259 12 0.46437041887044589 
		13 0.023745905282483642 16 0.030108361989821964
		5 0 0.036103557360680889 11 0.46227068038555275 12 0.45973723265905464 
		13 0.027149930326947454 16 0.014738599267764134
		5 0 0.031130157670879156 11 0.4781854293454349 12 0.45303181770594253 
		13 0.030098945141508415 16 0.0075536501362348969
		5 0 0.027046925241140714 11 0.48689775421353748 12 0.4473176418581773 
		13 0.034819058071698834 16 0.0039186206154456626;
	setAttr -s 19 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -83.560562137377815 -688.29051139974854 -4.823734582005592e-13 1;
	setAttr ".pm[1]" -type "matrix" 5.6662710695647102e-16 -4.1242454549831872e-16 1 -0
		 -0.80851061473178143 0.58848159348108497 6.9695797946476484e-16 0 -0.58848159348108497 -0.80851061473178143 7.3551743199923606e-17 -0
		 497.52938851959732 -514.66268980792722 -4.8237345820055941e-13 1;
	setAttr ".pm[2]" -type "matrix" 6.8759302475422165e-16 -1.3555853487219053e-16 1 -0
		 -0.98111483249605236 0.19342617572666537 6.9695797946476474e-16 0 -0.19342617572666537 -0.98111483249605236 7.3551743199923619e-17 -0
		 606.13541314883457 -305.59087785413595 -4.7656765168051224e-13 1;
	setAttr ".pm[3]" -type "matrix" 6.9975422304291095e-16 -3.8785453471200227e-17 1 -0
		 -0.99846744020498535 0.055342306154548285 6.9695797946476464e-16 0 -0.055342306154548285 -0.99846744020498535 7.3551743199923619e-17 -0
		 598.41202636293951 -224.68769743825098 -4.7316850890393684e-13 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 -7.0390039942106167e-16 5.5426077072706002e-17 -0
		 5.3042452577099096e-16 0.99999999999999978 -2.4980018054066007e-16 0 7.3551743199923582e-17 6.9388939039072197e-17 0.99999999999999978 -0
		 -3.8521392718586352e-13 -458.91349568990614 199.5962594638159 1;
	setAttr ".pm[5]" -type "matrix" -4.4101239570221356e-16 -4.0826602262169343e-16 -1 0
		 -0.81279639631834955 0.58254786767432654 1.2448908986620068e-16 0 0.58254786767432676 0.81279639631834943 -6.6229972586033277e-16 -0
		 503.17609574454156 -500.8615485396528 -1.1751272256245046e-14 1;
	setAttr ".pm[6]" -type "matrix" -2.1516024635726323e-16 -5.61140933079939e-16 -1 0
		 -0.98657120688719879 0.16333172913165514 1.2448908986620078e-16 0 0.16333172913165542 0.98657120688719868 -6.6229972586033277e-16 -0
		 614.72187617353904 -276.309967350401 1.4663176191897644e-14 1;
	setAttr ".pm[7]" -type "matrix" -1.4091874047932521e-16 -5.8422169334257311e-16 -1 0
		 -0.99940115209042746 0.034602560603617064 1.2448908986620078e-16 0 0.034602560603617341 0.99940115209042735 -6.6229972586033287e-16 -0
		 599.13971635867711 -200.64236546145949 7.0534821789752507e-15 1;
	setAttr ".pm[8]" -type "matrix" -1.6755819197819029e-16 5.8163725962251065e-17 1 -0
		 0.10494973568875331 0.99447752763894137 -4.4127635262477272e-17 0 -0.99447752763894137 0.10494973568875289 -9.9185380960609307e-17 0
		 135.99622973857038 -473.60240870027513 1.3555884498582368e-13 1;
	setAttr ".pm[9]" -type "matrix" -7.0077335486831982e-16 -8.7743474945139904e-18 1 -0
		 0.99992162213263769 0.012519967716978202 6.9695797946476444e-16 -0 -0.012519967716978202 0.99992162213263769 7.3551743199923532e-17 -0
		 -763.25103200880369 -0.062488790816583858 -5.3121449324557137e-13 1;
	setAttr ".pm[10]" -type "matrix" -7.3551743199923545e-17 -6.9695797946476464e-16 1 -0
		 0.10494973568875282 0.99447752763894115 6.9695797946476464e-16 0 -0.99447752763894115 0.10494973568875282 7.3551743199923545e-17 -0
		 -107.57467508858096 -910.56498563349385 -6.3814969662028571e-13 1;
	setAttr ".pm[11]" -type "matrix" 7.0065027231866701e-16 -1.5794934856858793e-17 1 -0
		 -0.99974599772875583 0.022537524827149474 6.9695797946476454e-16 0 -0.022537524827149474 -0.99974599772875583 7.3551743199923557e-17 -0
		 563.82836608933701 -23.80119487547924 -3.9242319613252617e-13 1;
	setAttr ".pm[12]" -type "matrix" 5.8628954126048878e-16 -3.8395944821806447e-16 1 -0
		 -0.83656660896695645 0.54786522864800202 6.9695797946476474e-16 0 -0.54786522864800202 -0.83656660896695645 7.3551743199923508e-17 -0
		 384.08079133484182 -267.38577107077134 -3.2506190718433213e-13 1;
	setAttr ".pm[13]" -type "matrix" 7.0082777937815524e-16 1.2162341940911081e-16 -1 -0
		 -0.9999992795432403 0.0012003803563253586 -6.9681097526865131e-16 0 0.0012003803563253586 0.9999992795432403 4.8912848484305356e-17 -0
		 386.11242856919898 66.347722808634586 2.7225961229612514e-13 1;
	setAttr ".pm[14]" -type "matrix" 7.0160126966202622e-16 1.1707899429664405e-16 -1 -0
		 -0.99997050011670985 0.0076810739051944681 -6.9681097526865131e-16 0 0.0076810739051944681 0.99997050011670985 4.8912848484305362e-17 -0
		 176.34163430857078 65.206270786945566 1.2577974311166617e-13 1;
	setAttr ".pm[15]" -type "matrix" -7.2859919595105644e-17 -6.8395916056677046e-16 1 -0
		 0.10494973568875322 0.99447752763894115 6.8395833948039219e-16 0 -0.99447752763894115 0.10494973568875311 7.2875523620394904e-17 -0
		 -58.393696676260291 63.807955496574152 4.3929390054994054e-14 1;
	setAttr ".pm[16]" -type "matrix" 7.0075211030337403e-16 -1.0332665325205505e-17 1 -0
		 -0.99989130862300646 0.014743505016503622 6.9695797946476474e-16 0 -0.014743505016503622 -0.99989130862300646 7.3551743199923508e-17 -0
		 386.59082961570709 46.066293868609847 -2.7274203007522129e-13 1;
	setAttr ".pm[17]" -type "matrix" 7.0081605384766161e-16 1.4901161312171955e-08 -0.99999999999999978 -0
		 -0.99998254864154346 0.0059078263653249653 8.8032776740491017e-11 0 0.0059078263653249636 0.99998254864154301 1.490090119725304e-08 -0
		 175.84077423208001 -49.708081708115465 -7.4070801792125371e-07 1;
	setAttr ".pm[18]" -type "matrix" -8.237330960068732e-09 -4.2670269476454585e-16 0.99999999999999956 -0
		 -0.83656660896695634 0.54786522864800158 -6.8910757982979606e-09 0 -0.54786522864800147 -0.83656660896695612 -4.5129474933008067e-09 0
		 -21.800849189743875 74.113058231180688 -1.7958078227170946e-07 1;
	setAttr ".gm" -type "matrix" -1.7424616116976806e-15 0.54158972580776465 0.14446038106097961 0
		 -0.99258497880927743 0.031326972269146491 -0.11744650122772647 0 0.12155270396904476 0.255812343868971 -0.95905421373459232 0
		 -87.214432745207787 381.44460520756621 -33.175674124092538 1;
	setAttr -s 5 ".ma";
	setAttr -s 19 ".dpf[0:18]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak25";
	rename -uid "3FD10BFD-4870-D089-0757-A1B1740D7AB0";
createNode objectSet -n "skinCluster25Set";
	rename -uid "CEEBBE2B-4A58-7D99-36D2-7A9C076C7797";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster25GroupId";
	rename -uid "44A82A6B-42C2-7A76-271B-3FA79E85DC5D";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster25GroupParts";
	rename -uid "60457B5B-4E66-09F1-FD17-A1B6BCB55CE6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet25";
	rename -uid "DF316AF5-46E6-02DB-4897-26913A23253B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId66";
	rename -uid "90614563-456E-E5CD-BF7B-B187C6BB4A8D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	rename -uid "43F884B3-4F6C-35FB-8378-888BE8EAEE0E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode geomBind -n "geomBind1";
	rename -uid "0A92FC92-437C-7B62-8B06-E2BE6233DE3D";
	setAttr ".mi" 5;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 22 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "All_Joints.s" "LeftArm.is";
connectAttr "LeftArm.s" "|Joints|All_Joints|LeftArm|_.is";
connectAttr "|Joints|All_Joints|LeftArm|_.s" "LeftElbow.is";
connectAttr "LeftElbow.s" "|Joints|All_Joints|LeftArm|_|LeftElbow|_.is";
connectAttr "|Joints|All_Joints|LeftArm|_|LeftElbow|_.tx" "pasted__effector3.tx"
		;
connectAttr "|Joints|All_Joints|LeftArm|_|LeftElbow|_.ty" "pasted__effector3.ty"
		;
connectAttr "|Joints|All_Joints|LeftArm|_|LeftElbow|_.tz" "pasted__effector3.tz"
		;
connectAttr "All_Joints.s" "RightArm.is";
connectAttr "RightArm.s" "|Joints|All_Joints|RightArm|_.is";
connectAttr "|Joints|All_Joints|RightArm|_.s" "RIghtElbow.is";
connectAttr "RIghtElbow.s" "|Joints|All_Joints|RightArm|_|RIghtElbow|_.is";
connectAttr "|Joints|All_Joints|RightArm|_|RIghtElbow|_.tx" "pasted__effector4.tx"
		;
connectAttr "|Joints|All_Joints|RightArm|_|RIghtElbow|_.ty" "pasted__effector4.ty"
		;
connectAttr "|Joints|All_Joints|RightArm|_|RIghtElbow|_.tz" "pasted__effector4.tz"
		;
connectAttr "All_Joints.s" "Head.is";
connectAttr "Head.s" "|Joints|All_Joints|Head|_.is";
connectAttr "All_Joints.s" "|Joints|All_Joints|_.is";
connectAttr "|Joints|All_Joints|_.s" "|Joints|All_Joints|_|_.is";
connectAttr "|Joints|All_Joints|_|_.s" "LeftLeg.is";
connectAttr "LeftLeg.s" "LeftKnee.is";
connectAttr "LeftKnee.s" "|Joints|All_Joints|_|_|LeftLeg|LeftKnee|_.is";
connectAttr "|Joints|All_Joints|_|_|LeftLeg|LeftKnee|_.tx" "pasted__effector1.tx"
		;
connectAttr "|Joints|All_Joints|_|_|LeftLeg|LeftKnee|_.ty" "pasted__effector1.ty"
		;
connectAttr "|Joints|All_Joints|_|_|LeftLeg|LeftKnee|_.tz" "pasted__effector1.tz"
		;
connectAttr "|Joints|All_Joints|_|_.s" "RightLeg.is";
connectAttr "RightLeg.s" "RightKnee.is";
connectAttr "RightKnee.s" "|Joints|All_Joints|_|_|RightLeg|RightKnee|_.is";
connectAttr "|Joints|All_Joints|_|_|RightLeg|RightKnee|_.tx" "pasted__effector2.tx"
		;
connectAttr "|Joints|All_Joints|_|_|RightLeg|RightKnee|_.ty" "pasted__effector2.ty"
		;
connectAttr "|Joints|All_Joints|_|_|RightLeg|RightKnee|_.tz" "pasted__effector2.tz"
		;
connectAttr "skinCluster1.og[0]" "polySurfaceShape9.i";
connectAttr "groupId16.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "polySurfaceShape9.iog.og[1].gid";
connectAttr "skinCluster1Set.mwc" "polySurfaceShape9.iog.og[1].gco";
connectAttr "groupId18.id" "polySurfaceShape9.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape9.iog.og[2].gco";
connectAttr "tweak1.vl[0].vt[0]" "polySurfaceShape9.twl";
connectAttr "groupParts11.og" "polySurfaceShape9Orig.i";
connectAttr "skinCluster2.og[0]" "MouthShape.i";
connectAttr "groupId8.id" "MouthShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "MouthShape.iog.og[0].gco";
connectAttr "skinCluster2GroupId.id" "MouthShape.iog.og[1].gid";
connectAttr "skinCluster2Set.mwc" "MouthShape.iog.og[1].gco";
connectAttr "groupId20.id" "MouthShape.iog.og[2].gid";
connectAttr "tweakSet2.mwc" "MouthShape.iog.og[2].gco";
connectAttr "tweak2.vl[0].vt[0]" "MouthShape.twl";
connectAttr "groupParts3.og" "MouthShapeOrig.i";
connectAttr "skinCluster3.og[0]" "MouthShape1.i";
connectAttr "groupId9.id" "MouthShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "MouthShape1.iog.og[0].gco";
connectAttr "skinCluster3GroupId.id" "MouthShape1.iog.og[1].gid";
connectAttr "skinCluster3Set.mwc" "MouthShape1.iog.og[1].gco";
connectAttr "groupId22.id" "MouthShape1.iog.og[2].gid";
connectAttr "tweakSet3.mwc" "MouthShape1.iog.og[2].gco";
connectAttr "tweak3.vl[0].vt[0]" "MouthShape1.twl";
connectAttr "groupParts4.og" "MouthShape1Orig.i";
connectAttr "skinCluster4.og[0]" "polySurfaceShape7.i";
connectAttr "groupId14.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "skinCluster4GroupId.id" "polySurfaceShape7.iog.og[1].gid";
connectAttr "skinCluster4Set.mwc" "polySurfaceShape7.iog.og[1].gco";
connectAttr "groupId24.id" "polySurfaceShape7.iog.og[2].gid";
connectAttr "tweakSet4.mwc" "polySurfaceShape7.iog.og[2].gco";
connectAttr "tweak4.vl[0].vt[0]" "polySurfaceShape7.twl";
connectAttr "groupParts9.og" "polySurfaceShape7Orig.i";
connectAttr "skinCluster5.og[0]" "polySurfaceShape8.i";
connectAttr "groupId15.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "skinCluster5GroupId.id" "polySurfaceShape8.iog.og[1].gid";
connectAttr "skinCluster5Set.mwc" "polySurfaceShape8.iog.og[1].gco";
connectAttr "groupId26.id" "polySurfaceShape8.iog.og[2].gid";
connectAttr "tweakSet5.mwc" "polySurfaceShape8.iog.og[2].gco";
connectAttr "tweak5.vl[0].vt[0]" "polySurfaceShape8.twl";
connectAttr "groupParts10.og" "polySurfaceShape8Orig.i";
connectAttr "polySplitEdge3.out" "polySurfaceShape6.i";
connectAttr "groupId13.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "skinCluster6.og[0]" "polySurfaceShape4.i";
connectAttr "groupId11.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "skinCluster6GroupId.id" "polySurfaceShape4.iog.og[1].gid";
connectAttr "skinCluster6Set.mwc" "polySurfaceShape4.iog.og[1].gco";
connectAttr "groupId28.id" "polySurfaceShape4.iog.og[2].gid";
connectAttr "tweakSet6.mwc" "polySurfaceShape4.iog.og[2].gco";
connectAttr "tweak6.vl[0].vt[0]" "polySurfaceShape4.twl";
connectAttr "groupParts6.og" "polySurfaceShape4Orig.i";
connectAttr "skinCluster7.og[0]" "polySurfaceShape5.i";
connectAttr "groupId12.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "skinCluster7GroupId.id" "polySurfaceShape5.iog.og[1].gid";
connectAttr "skinCluster7Set.mwc" "polySurfaceShape5.iog.og[1].gco";
connectAttr "groupId30.id" "polySurfaceShape5.iog.og[2].gid";
connectAttr "tweakSet7.mwc" "polySurfaceShape5.iog.og[2].gco";
connectAttr "tweak7.vl[0].vt[0]" "polySurfaceShape5.twl";
connectAttr "groupParts7.og" "polySurfaceShape5Orig.i";
connectAttr "polySplitEdge2.out" "polySurfaceShape3.i";
connectAttr "groupId10.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts2.og" "RagDoll2Shape.i";
connectAttr "groupId6.id" "RagDoll2Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "RagDoll2Shape.iog.og[0].gco";
connectAttr "groupId7.id" "RagDoll2Shape.ciog.cog[0].cgid";
connectAttr "groupId3.id" "RagDoll1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "RagDoll1Shape.iog.og[0].gco";
connectAttr "groupId4.id" "RagDoll1Shape.ciog.cog[0].cgid";
connectAttr "groupParts1.og" "RagDollShape.i";
connectAttr "groupId1.id" "RagDollShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "RagDollShape.iog.og[0].gco";
connectAttr "groupId2.id" "RagDollShape.ciog.cog[0].cgid";
connectAttr "skinCluster8GroupId.id" "pCubeShape19.iog.og[0].gid";
connectAttr "skinCluster8Set.mwc" "pCubeShape19.iog.og[0].gco";
connectAttr "groupId32.id" "pCubeShape19.iog.og[1].gid";
connectAttr "tweakSet8.mwc" "pCubeShape19.iog.og[1].gco";
connectAttr "skinCluster8.og[0]" "pCubeShape19.i";
connectAttr "tweak8.vl[0].vt[0]" "pCubeShape19.twl";
connectAttr "skinCluster9GroupId.id" "pCubeShape18.iog.og[0].gid";
connectAttr "skinCluster9Set.mwc" "pCubeShape18.iog.og[0].gco";
connectAttr "groupId34.id" "pCubeShape18.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "pCubeShape18.iog.og[1].gco";
connectAttr "skinCluster9.og[0]" "pCubeShape18.i";
connectAttr "tweak9.vl[0].vt[0]" "pCubeShape18.twl";
connectAttr "skinCluster10GroupId.id" "pCubeShape16.iog.og[0].gid";
connectAttr "skinCluster10Set.mwc" "pCubeShape16.iog.og[0].gco";
connectAttr "groupId36.id" "pCubeShape16.iog.og[1].gid";
connectAttr "tweakSet10.mwc" "pCubeShape16.iog.og[1].gco";
connectAttr "skinCluster10.og[0]" "pCubeShape16.i";
connectAttr "tweak10.vl[0].vt[0]" "pCubeShape16.twl";
connectAttr "skinCluster11GroupId.id" "pCubeShape17.iog.og[0].gid";
connectAttr "skinCluster11Set.mwc" "pCubeShape17.iog.og[0].gco";
connectAttr "groupId38.id" "pCubeShape17.iog.og[1].gid";
connectAttr "tweakSet11.mwc" "pCubeShape17.iog.og[1].gco";
connectAttr "skinCluster11.og[0]" "pCubeShape17.i";
connectAttr "tweak11.vl[0].vt[0]" "pCubeShape17.twl";
connectAttr "skinCluster12GroupId.id" "pCubeShape14.iog.og[0].gid";
connectAttr "skinCluster12Set.mwc" "pCubeShape14.iog.og[0].gco";
connectAttr "groupId40.id" "pCubeShape14.iog.og[1].gid";
connectAttr "tweakSet12.mwc" "pCubeShape14.iog.og[1].gco";
connectAttr "skinCluster12.og[0]" "pCubeShape14.i";
connectAttr "tweak12.vl[0].vt[0]" "pCubeShape14.twl";
connectAttr "skinCluster13GroupId.id" "pCubeShape12.iog.og[0].gid";
connectAttr "skinCluster13Set.mwc" "pCubeShape12.iog.og[0].gco";
connectAttr "groupId42.id" "pCubeShape12.iog.og[1].gid";
connectAttr "tweakSet13.mwc" "pCubeShape12.iog.og[1].gco";
connectAttr "skinCluster13.og[0]" "pCubeShape12.i";
connectAttr "tweak13.vl[0].vt[0]" "pCubeShape12.twl";
connectAttr "skinCluster14GroupId.id" "pCubeShape13.iog.og[0].gid";
connectAttr "skinCluster14Set.mwc" "pCubeShape13.iog.og[0].gco";
connectAttr "groupId44.id" "pCubeShape13.iog.og[1].gid";
connectAttr "tweakSet14.mwc" "pCubeShape13.iog.og[1].gco";
connectAttr "skinCluster14.og[0]" "pCubeShape13.i";
connectAttr "tweak14.vl[0].vt[0]" "pCubeShape13.twl";
connectAttr "skinCluster15GroupId.id" "pCubeShape15.iog.og[0].gid";
connectAttr "skinCluster15Set.mwc" "pCubeShape15.iog.og[0].gco";
connectAttr "groupId46.id" "pCubeShape15.iog.og[1].gid";
connectAttr "tweakSet15.mwc" "pCubeShape15.iog.og[1].gco";
connectAttr "skinCluster15.og[0]" "pCubeShape15.i";
connectAttr "tweak15.vl[0].vt[0]" "pCubeShape15.twl";
connectAttr "skinCluster16GroupId.id" "pCubeShape3.iog.og[0].gid";
connectAttr "skinCluster16Set.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId48.id" "pCubeShape3.iog.og[1].gid";
connectAttr "tweakSet16.mwc" "pCubeShape3.iog.og[1].gco";
connectAttr "skinCluster16.og[0]" "pCubeShape3.i";
connectAttr "tweak16.vl[0].vt[0]" "pCubeShape3.twl";
connectAttr "skinCluster17.og[0]" "pCubeShape2.i";
connectAttr "skinCluster17GroupId.id" "pCubeShape2.iog.og[0].gid";
connectAttr "skinCluster17Set.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId50.id" "pCubeShape2.iog.og[1].gid";
connectAttr "tweakSet17.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "tweak17.vl[0].vt[0]" "pCubeShape2.twl";
connectAttr "polyAppend8.out" "pCubeShape2Orig.i";
connectAttr "skinCluster18GroupId.id" "pCubeShape4.iog.og[0].gid";
connectAttr "skinCluster18Set.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupId52.id" "pCubeShape4.iog.og[1].gid";
connectAttr "tweakSet18.mwc" "pCubeShape4.iog.og[1].gco";
connectAttr "skinCluster18.og[0]" "pCubeShape4.i";
connectAttr "tweak18.vl[0].vt[0]" "pCubeShape4.twl";
connectAttr "skinCluster19GroupId.id" "pCubeShape5.iog.og[0].gid";
connectAttr "skinCluster19Set.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupId54.id" "pCubeShape5.iog.og[1].gid";
connectAttr "tweakSet19.mwc" "pCubeShape5.iog.og[1].gco";
connectAttr "skinCluster19.og[0]" "pCubeShape5.i";
connectAttr "tweak19.vl[0].vt[0]" "pCubeShape5.twl";
connectAttr "skinCluster20GroupId.id" "pCubeShape6.iog.og[0].gid";
connectAttr "skinCluster20Set.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupId56.id" "pCubeShape6.iog.og[1].gid";
connectAttr "tweakSet20.mwc" "pCubeShape6.iog.og[1].gco";
connectAttr "skinCluster20.og[0]" "pCubeShape6.i";
connectAttr "tweak20.vl[0].vt[0]" "pCubeShape6.twl";
connectAttr "skinCluster21GroupId.id" "pCubeShape10.iog.og[0].gid";
connectAttr "skinCluster21Set.mwc" "pCubeShape10.iog.og[0].gco";
connectAttr "groupId58.id" "pCubeShape10.iog.og[1].gid";
connectAttr "tweakSet21.mwc" "pCubeShape10.iog.og[1].gco";
connectAttr "skinCluster21.og[0]" "pCubeShape10.i";
connectAttr "tweak21.vl[0].vt[0]" "pCubeShape10.twl";
connectAttr "skinCluster22GroupId.id" "pCubeShape11.iog.og[0].gid";
connectAttr "skinCluster22Set.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "groupId60.id" "pCubeShape11.iog.og[1].gid";
connectAttr "tweakSet22.mwc" "pCubeShape11.iog.og[1].gco";
connectAttr "skinCluster22.og[0]" "pCubeShape11.i";
connectAttr "tweak22.vl[0].vt[0]" "pCubeShape11.twl";
connectAttr "skinCluster23GroupId.id" "pCubeShape7.iog.og[0].gid";
connectAttr "skinCluster23Set.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupId62.id" "pCubeShape7.iog.og[1].gid";
connectAttr "tweakSet23.mwc" "pCubeShape7.iog.og[1].gco";
connectAttr "skinCluster23.og[0]" "pCubeShape7.i";
connectAttr "tweak23.vl[0].vt[0]" "pCubeShape7.twl";
connectAttr "skinCluster24GroupId.id" "pCubeShape9.iog.og[0].gid";
connectAttr "skinCluster24Set.mwc" "pCubeShape9.iog.og[0].gco";
connectAttr "groupId64.id" "pCubeShape9.iog.og[1].gid";
connectAttr "tweakSet24.mwc" "pCubeShape9.iog.og[1].gco";
connectAttr "skinCluster24.og[0]" "pCubeShape9.i";
connectAttr "tweak24.vl[0].vt[0]" "pCubeShape9.twl";
connectAttr "skinCluster25GroupId.id" "pCubeShape8.iog.og[0].gid";
connectAttr "skinCluster25Set.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupId66.id" "pCubeShape8.iog.og[1].gid";
connectAttr "tweakSet25.mwc" "pCubeShape8.iog.og[1].gco";
connectAttr "skinCluster25.og[0]" "pCubeShape8.i";
connectAttr "tweak25.vl[0].vt[0]" "pCubeShape8.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace6.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing1.ip";
connectAttr "RagDollShape.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing2.ip";
connectAttr "RagDollShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polySplitRing3.ip";
connectAttr "RagDollShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak8.ip";
connectAttr "polySplitRing3.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySplit1.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace7.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace7.mp";
connectAttr "polySplit1.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySplitRing4.ip";
connectAttr "RagDollShape.wm" "polySplitRing4.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak11.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "RagDollShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "RagDollShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "RagDollShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "RagDollShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "RagDollShape.wm" "polySplitRing9.mp";
connectAttr "polyTweak12.out" "polyExtrudeFace8.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace8.mp";
connectAttr "polySplitRing9.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace8.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "deleteComponent2.ig";
connectAttr "polyTweak14.out" "polySplitRing10.ip";
connectAttr "RagDollShape.wm" "polySplitRing10.mp";
connectAttr "deleteComponent2.og" "polyTweak14.ip";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "RagDollShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "RagDollShape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "RagDollShape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "RagDollShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "RagDollShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "RagDollShape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "RagDollShape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polyExtrudeFace9.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak15.out" "polyExtrudeFace10.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace11.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polySplitRing18.ip";
connectAttr "RagDollShape.wm" "polySplitRing18.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak17.ip";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "RagDollShape.wm" "polySplitRing19.mp";
connectAttr "polyTweak18.out" "polyExtrudeFace12.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace12.mp";
connectAttr "polySplitRing19.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace13.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace14.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace15.ip";
connectAttr "RagDollShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeEdge1.ip";
connectAttr "RagDollShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak22.ip";
connectAttr "RagDollShape.o" "polyUnite1.ip[0]";
connectAttr "RagDoll1Shape.o" "polyUnite1.ip[1]";
connectAttr "RagDollShape.wm" "polyUnite1.im[0]";
connectAttr "RagDoll1Shape.wm" "polyUnite1.im[1]";
connectAttr "polyExtrudeEdge1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyTweak23.out" "polyExtrudeFace16.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace16.mp";
connectAttr "polyUnite1.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace17.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak24.ip";
connectAttr "polyExtrudeFace17.out" "polyTweak25.ip";
connectAttr "polyTweak25.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "RagDoll2Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "RagDoll2Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "MouthShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "MouthShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "groupId8.msg" "lambert2SG.gn" -na;
connectAttr "groupId9.msg" "lambert2SG.gn" -na;
connectAttr "groupId10.msg" "lambert2SG.gn" -na;
connectAttr "groupId11.msg" "lambert2SG.gn" -na;
connectAttr "groupId12.msg" "lambert2SG.gn" -na;
connectAttr "groupId13.msg" "lambert2SG.gn" -na;
connectAttr "groupId14.msg" "lambert2SG.gn" -na;
connectAttr "groupId15.msg" "lambert2SG.gn" -na;
connectAttr "groupId16.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "place2dTexture1.o" "ramp1.uv";
connectAttr "samplerInfo1.fr" "ramp1.u";
connectAttr "samplerInfo1.fr" "ramp1.v";
connectAttr "place2dTexture1.ofs" "ramp1.fs";
connectAttr "ramp1.oa" "Doll.dc";
connectAttr "bump2d1.o" "Doll.n";
connectAttr "Doll.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Doll.msg" "materialInfo2.m";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "place2dTexture2.c" "file1.c";
connectAttr "place2dTexture2.tf" "file1.tf";
connectAttr "place2dTexture2.rf" "file1.rf";
connectAttr "place2dTexture2.mu" "file1.mu";
connectAttr "place2dTexture2.mv" "file1.mv";
connectAttr "place2dTexture2.s" "file1.s";
connectAttr "place2dTexture2.wu" "file1.wu";
connectAttr "place2dTexture2.wv" "file1.wv";
connectAttr "place2dTexture2.re" "file1.re";
connectAttr "place2dTexture2.of" "file1.of";
connectAttr "place2dTexture2.r" "file1.ro";
connectAttr "place2dTexture2.n" "file1.n";
connectAttr "place2dTexture2.vt1" "file1.vt1";
connectAttr "place2dTexture2.vt2" "file1.vt2";
connectAttr "place2dTexture2.vt3" "file1.vt3";
connectAttr "place2dTexture2.vc1" "file1.vc1";
connectAttr "place2dTexture2.o" "file1.uv";
connectAttr "place2dTexture2.ofs" "file1.fs";
connectAttr "file1.oa" "bump2d1.bv";
connectAttr "ramp1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Doll.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "samplerInfo1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "bump2d1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "polyTweak32.out" "polyExtrudeFace25.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace25.mp";
connectAttr "deleteComponent6.og" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyExtrudeFace26.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyExtrudeFace27.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace27.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyExtrudeFace28.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace28.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polyExtrudeFace29.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace29.mp";
connectAttr "polyExtrudeFace28.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyExtrudeFace30.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace30.mp";
connectAttr "polyExtrudeFace29.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyExtrudeFace31.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace31.mp";
connectAttr "polyExtrudeFace30.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyExtrudeFace32.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace32.mp";
connectAttr "polyExtrudeFace31.out" "polyTweak39.ip";
connectAttr "polyTweak40.out" "polyExtrudeFace33.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace33.mp";
connectAttr "polyExtrudeFace32.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyExtrudeFace34.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace34.mp";
connectAttr "polyExtrudeFace33.out" "polyTweak41.ip";
connectAttr "polyTweak42.out" "polyExtrudeFace35.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace35.mp";
connectAttr "polyExtrudeFace34.out" "polyTweak42.ip";
connectAttr "polyTweak43.out" "polyExtrudeFace36.ip";
connectAttr "RagDoll2Shape.wm" "polyExtrudeFace36.mp";
connectAttr "polyExtrudeFace35.out" "polyTweak43.ip";
connectAttr "polyTweak44.out" "polySplitRing20.ip";
connectAttr "RagDoll2Shape.wm" "polySplitRing20.mp";
connectAttr "polyExtrudeFace36.out" "polyTweak44.ip";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "RagDoll2Shape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "RagDoll2Shape.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "RagDoll2Shape.wm" "polySplitRing23.mp";
connectAttr "polyTweak45.out" "polySplitEdge1.ip";
connectAttr "polySplitRing23.out" "polyTweak45.ip";
connectAttr "RagDoll2Shape.o" "polySeparate1.ip";
connectAttr "polySplitEdge1.out" "groupParts2.ig";
connectAttr "groupId6.id" "groupParts2.gi";
connectAttr "polySeparate1.out[0]" "groupParts3.ig";
connectAttr "groupId8.id" "groupParts3.gi";
connectAttr "polySeparate1.out[1]" "groupParts4.ig";
connectAttr "groupId9.id" "groupParts4.gi";
connectAttr "polySeparate1.out[2]" "groupParts5.ig";
connectAttr "groupId10.id" "groupParts5.gi";
connectAttr "groupParts5.og" "polySplitEdge2.ip";
connectAttr "polySurfaceShape3.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "polySeparate2.out[1]" "groupParts7.ig";
connectAttr "groupId12.id" "groupParts7.gi";
connectAttr "polySeparate2.out[2]" "groupParts8.ig";
connectAttr "groupId13.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polySplitEdge3.ip";
connectAttr "polySurfaceShape6.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts9.ig";
connectAttr "groupId14.id" "groupParts9.gi";
connectAttr "polySeparate3.out[1]" "groupParts10.ig";
connectAttr "groupId15.id" "groupParts10.gi";
connectAttr "polySeparate3.out[2]" "groupParts11.ig";
connectAttr "groupId16.id" "groupParts11.gi";
connectAttr "|Character|Stitches|pCube2|polySurfaceShape10.o" "polyAppend1.ip";
connectAttr "polyAppend1.out" "polyAppend2.ip";
connectAttr "polyAppend2.out" "polyAppend3.ip";
connectAttr "polyAppend3.out" "polyAppend4.ip";
connectAttr "polyAppend4.out" "polyAppend5.ip";
connectAttr "polyAppend5.out" "polyAppend6.ip";
connectAttr "polyAppend6.out" "polyAppend7.ip";
connectAttr "polyAppend7.out" "polyAppend8.ip";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "All_Joints.wm" "skinCluster1.ma[0]";
connectAttr "LeftArm.wm" "skinCluster1.ma[1]";
connectAttr "|Joints|All_Joints|LeftArm|_.wm" "skinCluster1.ma[2]";
connectAttr "LeftElbow.wm" "skinCluster1.ma[3]";
connectAttr "|Joints|All_Joints|LeftArm|_|LeftElbow|_.wm" "skinCluster1.ma[4]";
connectAttr "RightArm.wm" "skinCluster1.ma[5]";
connectAttr "|Joints|All_Joints|RightArm|_.wm" "skinCluster1.ma[6]";
connectAttr "RIghtElbow.wm" "skinCluster1.ma[7]";
connectAttr "|Joints|All_Joints|RightArm|_|RIghtElbow|_.wm" "skinCluster1.ma[8]"
		;
connectAttr "Head.wm" "skinCluster1.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster1.ma[10]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster1.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster1.ma[12]";
connectAttr "LeftLeg.wm" "skinCluster1.ma[13]";
connectAttr "LeftKnee.wm" "skinCluster1.ma[14]";
connectAttr "|Joints|All_Joints|_|_|LeftLeg|LeftKnee|_.wm" "skinCluster1.ma[15]"
		;
connectAttr "RightLeg.wm" "skinCluster1.ma[16]";
connectAttr "RightKnee.wm" "skinCluster1.ma[17]";
connectAttr "|Joints|All_Joints|_|_|RightLeg|RightKnee|_.wm" "skinCluster1.ma[18]"
		;
connectAttr "All_Joints.liw" "skinCluster1.lw[0]";
connectAttr "LeftArm.liw" "skinCluster1.lw[1]";
connectAttr "|Joints|All_Joints|LeftArm|_.liw" "skinCluster1.lw[2]";
connectAttr "LeftElbow.liw" "skinCluster1.lw[3]";
connectAttr "|Joints|All_Joints|LeftArm|_|LeftElbow|_.liw" "skinCluster1.lw[4]";
connectAttr "RightArm.liw" "skinCluster1.lw[5]";
connectAttr "|Joints|All_Joints|RightArm|_.liw" "skinCluster1.lw[6]";
connectAttr "RIghtElbow.liw" "skinCluster1.lw[7]";
connectAttr "|Joints|All_Joints|RightArm|_|RIghtElbow|_.liw" "skinCluster1.lw[8]"
		;
connectAttr "Head.liw" "skinCluster1.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster1.lw[10]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster1.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster1.lw[12]";
connectAttr "LeftLeg.liw" "skinCluster1.lw[13]";
connectAttr "LeftKnee.liw" "skinCluster1.lw[14]";
connectAttr "|Joints|All_Joints|_|_|LeftLeg|LeftKnee|_.liw" "skinCluster1.lw[15]"
		;
connectAttr "RightLeg.liw" "skinCluster1.lw[16]";
connectAttr "RightKnee.liw" "skinCluster1.lw[17]";
connectAttr "|Joints|All_Joints|_|_|RightLeg|RightKnee|_.liw" "skinCluster1.lw[18]"
		;
connectAttr "All_Joints.obcc" "skinCluster1.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster1.ifcl[1]";
connectAttr "|Joints|All_Joints|LeftArm|_.obcc" "skinCluster1.ifcl[2]";
connectAttr "LeftElbow.obcc" "skinCluster1.ifcl[3]";
connectAttr "|Joints|All_Joints|LeftArm|_|LeftElbow|_.obcc" "skinCluster1.ifcl[4]"
		;
connectAttr "RightArm.obcc" "skinCluster1.ifcl[5]";
connectAttr "|Joints|All_Joints|RightArm|_.obcc" "skinCluster1.ifcl[6]";
connectAttr "RIghtElbow.obcc" "skinCluster1.ifcl[7]";
connectAttr "|Joints|All_Joints|RightArm|_|RIghtElbow|_.obcc" "skinCluster1.ifcl[8]"
		;
connectAttr "Head.obcc" "skinCluster1.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster1.ifcl[10]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster1.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster1.ifcl[12]";
connectAttr "LeftLeg.obcc" "skinCluster1.ifcl[13]";
connectAttr "LeftKnee.obcc" "skinCluster1.ifcl[14]";
connectAttr "|Joints|All_Joints|_|_|LeftLeg|LeftKnee|_.obcc" "skinCluster1.ifcl[15]"
		;
connectAttr "RightLeg.obcc" "skinCluster1.ifcl[16]";
connectAttr "RightKnee.obcc" "skinCluster1.ifcl[17]";
connectAttr "|Joints|All_Joints|_|_|RightLeg|RightKnee|_.obcc" "skinCluster1.ifcl[18]"
		;
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "groupParts13.og" "tweak1.ip[0].ig";
connectAttr "groupId18.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "polySurfaceShape9.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId18.msg" "tweakSet1.gn" -na;
connectAttr "polySurfaceShape9.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polySurfaceShape9Orig.w" "groupParts13.ig";
connectAttr "groupId18.id" "groupParts13.gi";
connectAttr "Joints.msg" "bindPose1.m[0]";
connectAttr "All_Joints.msg" "bindPose1.m[1]";
connectAttr "LeftArm.msg" "bindPose1.m[2]";
connectAttr "|Joints|All_Joints|LeftArm|_.msg" "bindPose1.m[3]";
connectAttr "LeftElbow.msg" "bindPose1.m[4]";
connectAttr "|Joints|All_Joints|LeftArm|_|LeftElbow|_.msg" "bindPose1.m[5]";
connectAttr "RightArm.msg" "bindPose1.m[6]";
connectAttr "|Joints|All_Joints|RightArm|_.msg" "bindPose1.m[7]";
connectAttr "RIghtElbow.msg" "bindPose1.m[8]";
connectAttr "|Joints|All_Joints|RightArm|_|RIghtElbow|_.msg" "bindPose1.m[9]";
connectAttr "Head.msg" "bindPose1.m[10]";
connectAttr "|Joints|All_Joints|Head|_.msg" "bindPose1.m[11]";
connectAttr "|Joints|All_Joints|_.msg" "bindPose1.m[12]";
connectAttr "|Joints|All_Joints|_|_.msg" "bindPose1.m[13]";
connectAttr "LeftLeg.msg" "bindPose1.m[14]";
connectAttr "LeftKnee.msg" "bindPose1.m[15]";
connectAttr "|Joints|All_Joints|_|_|LeftLeg|LeftKnee|_.msg" "bindPose1.m[16]";
connectAttr "RightLeg.msg" "bindPose1.m[17]";
connectAttr "RightKnee.msg" "bindPose1.m[18]";
connectAttr "|Joints|All_Joints|_|_|RightLeg|RightKnee|_.msg" "bindPose1.m[19]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[1]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[1]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[13]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "All_Joints.bps" "bindPose1.wm[1]";
connectAttr "LeftArm.bps" "bindPose1.wm[2]";
connectAttr "|Joints|All_Joints|LeftArm|_.bps" "bindPose1.wm[3]";
connectAttr "LeftElbow.bps" "bindPose1.wm[4]";
connectAttr "|Joints|All_Joints|LeftArm|_|LeftElbow|_.bps" "bindPose1.wm[5]";
connectAttr "RightArm.bps" "bindPose1.wm[6]";
connectAttr "|Joints|All_Joints|RightArm|_.bps" "bindPose1.wm[7]";
connectAttr "RIghtElbow.bps" "bindPose1.wm[8]";
connectAttr "|Joints|All_Joints|RightArm|_|RIghtElbow|_.bps" "bindPose1.wm[9]";
connectAttr "Head.bps" "bindPose1.wm[10]";
connectAttr "|Joints|All_Joints|Head|_.bps" "bindPose1.wm[11]";
connectAttr "|Joints|All_Joints|_.bps" "bindPose1.wm[12]";
connectAttr "|Joints|All_Joints|_|_.bps" "bindPose1.wm[13]";
connectAttr "LeftLeg.bps" "bindPose1.wm[14]";
connectAttr "LeftKnee.bps" "bindPose1.wm[15]";
connectAttr "|Joints|All_Joints|_|_|LeftLeg|LeftKnee|_.bps" "bindPose1.wm[16]";
connectAttr "RightLeg.bps" "bindPose1.wm[17]";
connectAttr "RightKnee.bps" "bindPose1.wm[18]";
connectAttr "|Joints|All_Joints|_|_|RightLeg|RightKnee|_.bps" "bindPose1.wm[19]"
		;
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster2.ma[0]";
connectAttr "LeftArm.wm" "skinCluster2.ma[1]";
connectAttr "RightArm.wm" "skinCluster2.ma[5]";
connectAttr "Head.wm" "skinCluster2.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster2.ma[10]";
connectAttr "All_Joints.liw" "skinCluster2.lw[0]";
connectAttr "LeftArm.liw" "skinCluster2.lw[1]";
connectAttr "RightArm.liw" "skinCluster2.lw[5]";
connectAttr "Head.liw" "skinCluster2.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster2.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster2.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster2.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster2.ifcl[5]";
connectAttr "Head.obcc" "skinCluster2.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster2.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "geomBind1.scs" "skinCluster2.gb";
connectAttr "groupParts15.og" "tweak2.ip[0].ig";
connectAttr "groupId20.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "MouthShape.iog.og[1]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId20.msg" "tweakSet2.gn" -na;
connectAttr "MouthShape.iog.og[2]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "MouthShapeOrig.w" "groupParts15.ig";
connectAttr "groupId20.id" "groupParts15.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster3.ma[0]";
connectAttr "LeftArm.wm" "skinCluster3.ma[1]";
connectAttr "RightArm.wm" "skinCluster3.ma[5]";
connectAttr "Head.wm" "skinCluster3.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster3.ma[10]";
connectAttr "All_Joints.liw" "skinCluster3.lw[0]";
connectAttr "LeftArm.liw" "skinCluster3.lw[1]";
connectAttr "RightArm.liw" "skinCluster3.lw[5]";
connectAttr "Head.liw" "skinCluster3.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster3.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster3.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster3.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster3.ifcl[5]";
connectAttr "Head.obcc" "skinCluster3.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster3.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "geomBind1.scs" "skinCluster3.gb";
connectAttr "groupParts17.og" "tweak3.ip[0].ig";
connectAttr "groupId22.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "MouthShape1.iog.og[1]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId22.msg" "tweakSet3.gn" -na;
connectAttr "MouthShape1.iog.og[2]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "MouthShape1Orig.w" "groupParts17.ig";
connectAttr "groupId22.id" "groupParts17.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster4.ma[0]";
connectAttr "LeftArm.wm" "skinCluster4.ma[1]";
connectAttr "RightArm.wm" "skinCluster4.ma[5]";
connectAttr "Head.wm" "skinCluster4.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster4.ma[10]";
connectAttr "All_Joints.liw" "skinCluster4.lw[0]";
connectAttr "LeftArm.liw" "skinCluster4.lw[1]";
connectAttr "RightArm.liw" "skinCluster4.lw[5]";
connectAttr "Head.liw" "skinCluster4.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster4.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster4.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster4.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster4.ifcl[5]";
connectAttr "Head.obcc" "skinCluster4.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster4.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "geomBind1.scs" "skinCluster4.gb";
connectAttr "groupParts19.og" "tweak4.ip[0].ig";
connectAttr "groupId24.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "polySurfaceShape7.iog.og[1]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId24.msg" "tweakSet4.gn" -na;
connectAttr "polySurfaceShape7.iog.og[2]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "polySurfaceShape7Orig.w" "groupParts19.ig";
connectAttr "groupId24.id" "groupParts19.gi";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster5.ma[0]";
connectAttr "LeftArm.wm" "skinCluster5.ma[1]";
connectAttr "RightArm.wm" "skinCluster5.ma[5]";
connectAttr "Head.wm" "skinCluster5.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster5.ma[10]";
connectAttr "All_Joints.liw" "skinCluster5.lw[0]";
connectAttr "LeftArm.liw" "skinCluster5.lw[1]";
connectAttr "RightArm.liw" "skinCluster5.lw[5]";
connectAttr "Head.liw" "skinCluster5.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster5.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster5.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster5.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster5.ifcl[5]";
connectAttr "Head.obcc" "skinCluster5.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster5.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "geomBind1.scs" "skinCluster5.gb";
connectAttr "groupParts21.og" "tweak5.ip[0].ig";
connectAttr "groupId26.id" "tweak5.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "polySurfaceShape8.iog.og[1]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId26.msg" "tweakSet5.gn" -na;
connectAttr "polySurfaceShape8.iog.og[2]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "polySurfaceShape8Orig.w" "groupParts21.ig";
connectAttr "groupId26.id" "groupParts21.gi";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster6.ma[0]";
connectAttr "LeftArm.wm" "skinCluster6.ma[1]";
connectAttr "RightArm.wm" "skinCluster6.ma[5]";
connectAttr "Head.wm" "skinCluster6.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster6.ma[10]";
connectAttr "All_Joints.liw" "skinCluster6.lw[0]";
connectAttr "LeftArm.liw" "skinCluster6.lw[1]";
connectAttr "RightArm.liw" "skinCluster6.lw[5]";
connectAttr "Head.liw" "skinCluster6.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster6.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster6.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster6.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster6.ifcl[5]";
connectAttr "Head.obcc" "skinCluster6.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster6.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "geomBind1.scs" "skinCluster6.gb";
connectAttr "groupParts23.og" "tweak6.ip[0].ig";
connectAttr "groupId28.id" "tweak6.ip[0].gi";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "polySurfaceShape4.iog.og[1]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupId28.msg" "tweakSet6.gn" -na;
connectAttr "polySurfaceShape4.iog.og[2]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "polySurfaceShape4Orig.w" "groupParts23.ig";
connectAttr "groupId28.id" "groupParts23.gi";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster7.ma[0]";
connectAttr "LeftArm.wm" "skinCluster7.ma[1]";
connectAttr "RightArm.wm" "skinCluster7.ma[5]";
connectAttr "Head.wm" "skinCluster7.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster7.ma[10]";
connectAttr "All_Joints.liw" "skinCluster7.lw[0]";
connectAttr "LeftArm.liw" "skinCluster7.lw[1]";
connectAttr "RightArm.liw" "skinCluster7.lw[5]";
connectAttr "Head.liw" "skinCluster7.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster7.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster7.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster7.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster7.ifcl[5]";
connectAttr "Head.obcc" "skinCluster7.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster7.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "geomBind1.scs" "skinCluster7.gb";
connectAttr "groupParts25.og" "tweak7.ip[0].ig";
connectAttr "groupId30.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "polySurfaceShape5.iog.og[1]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId30.msg" "tweakSet7.gn" -na;
connectAttr "polySurfaceShape5.iog.og[2]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "polySurfaceShape5Orig.w" "groupParts25.ig";
connectAttr "groupId30.id" "groupParts25.gi";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster8.ma[0]";
connectAttr "LeftArm.wm" "skinCluster8.ma[1]";
connectAttr "RightArm.wm" "skinCluster8.ma[5]";
connectAttr "Head.wm" "skinCluster8.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster8.ma[10]";
connectAttr "All_Joints.liw" "skinCluster8.lw[0]";
connectAttr "LeftArm.liw" "skinCluster8.lw[1]";
connectAttr "RightArm.liw" "skinCluster8.lw[5]";
connectAttr "Head.liw" "skinCluster8.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster8.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster8.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster8.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster8.ifcl[5]";
connectAttr "Head.obcc" "skinCluster8.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster8.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "geomBind1.scs" "skinCluster8.gb";
connectAttr "groupParts27.og" "tweak8.ip[0].ig";
connectAttr "groupId32.id" "tweak8.ip[0].gi";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "pCubeShape19.iog.og[0]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "groupId32.msg" "tweakSet8.gn" -na;
connectAttr "pCubeShape19.iog.og[1]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "pCubeShape19Orig.w" "groupParts27.ig";
connectAttr "groupId32.id" "groupParts27.gi";
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster9.ma[0]";
connectAttr "LeftArm.wm" "skinCluster9.ma[1]";
connectAttr "RightArm.wm" "skinCluster9.ma[5]";
connectAttr "Head.wm" "skinCluster9.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster9.ma[10]";
connectAttr "All_Joints.liw" "skinCluster9.lw[0]";
connectAttr "LeftArm.liw" "skinCluster9.lw[1]";
connectAttr "RightArm.liw" "skinCluster9.lw[5]";
connectAttr "Head.liw" "skinCluster9.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster9.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster9.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster9.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster9.ifcl[5]";
connectAttr "Head.obcc" "skinCluster9.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster9.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster9.bp";
connectAttr "geomBind1.scs" "skinCluster9.gb";
connectAttr "groupParts29.og" "tweak9.ip[0].ig";
connectAttr "groupId34.id" "tweak9.ip[0].gi";
connectAttr "skinCluster9GroupId.msg" "skinCluster9Set.gn" -na;
connectAttr "pCubeShape18.iog.og[0]" "skinCluster9Set.dsm" -na;
connectAttr "skinCluster9.msg" "skinCluster9Set.ub[0]";
connectAttr "tweak9.og[0]" "skinCluster9GroupParts.ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9GroupParts.gi";
connectAttr "groupId34.msg" "tweakSet9.gn" -na;
connectAttr "pCubeShape18.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "pCubeShape18Orig.w" "groupParts29.ig";
connectAttr "groupId34.id" "groupParts29.gi";
connectAttr "skinCluster10GroupParts.og" "skinCluster10.ip[0].ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster10.ma[0]";
connectAttr "LeftArm.wm" "skinCluster10.ma[1]";
connectAttr "RightArm.wm" "skinCluster10.ma[5]";
connectAttr "Head.wm" "skinCluster10.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster10.ma[10]";
connectAttr "All_Joints.liw" "skinCluster10.lw[0]";
connectAttr "LeftArm.liw" "skinCluster10.lw[1]";
connectAttr "RightArm.liw" "skinCluster10.lw[5]";
connectAttr "Head.liw" "skinCluster10.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster10.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster10.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster10.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster10.ifcl[5]";
connectAttr "Head.obcc" "skinCluster10.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster10.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster10.bp";
connectAttr "geomBind1.scs" "skinCluster10.gb";
connectAttr "groupParts31.og" "tweak10.ip[0].ig";
connectAttr "groupId36.id" "tweak10.ip[0].gi";
connectAttr "skinCluster10GroupId.msg" "skinCluster10Set.gn" -na;
connectAttr "pCubeShape16.iog.og[0]" "skinCluster10Set.dsm" -na;
connectAttr "skinCluster10.msg" "skinCluster10Set.ub[0]";
connectAttr "tweak10.og[0]" "skinCluster10GroupParts.ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10GroupParts.gi";
connectAttr "groupId36.msg" "tweakSet10.gn" -na;
connectAttr "pCubeShape16.iog.og[1]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "pCubeShape16Orig.w" "groupParts31.ig";
connectAttr "groupId36.id" "groupParts31.gi";
connectAttr "skinCluster11GroupParts.og" "skinCluster11.ip[0].ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster11.ma[0]";
connectAttr "LeftArm.wm" "skinCluster11.ma[1]";
connectAttr "RightArm.wm" "skinCluster11.ma[5]";
connectAttr "Head.wm" "skinCluster11.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster11.ma[10]";
connectAttr "All_Joints.liw" "skinCluster11.lw[0]";
connectAttr "LeftArm.liw" "skinCluster11.lw[1]";
connectAttr "RightArm.liw" "skinCluster11.lw[5]";
connectAttr "Head.liw" "skinCluster11.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster11.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster11.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster11.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster11.ifcl[5]";
connectAttr "Head.obcc" "skinCluster11.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster11.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster11.bp";
connectAttr "geomBind1.scs" "skinCluster11.gb";
connectAttr "groupParts33.og" "tweak11.ip[0].ig";
connectAttr "groupId38.id" "tweak11.ip[0].gi";
connectAttr "skinCluster11GroupId.msg" "skinCluster11Set.gn" -na;
connectAttr "pCubeShape17.iog.og[0]" "skinCluster11Set.dsm" -na;
connectAttr "skinCluster11.msg" "skinCluster11Set.ub[0]";
connectAttr "tweak11.og[0]" "skinCluster11GroupParts.ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11GroupParts.gi";
connectAttr "groupId38.msg" "tweakSet11.gn" -na;
connectAttr "pCubeShape17.iog.og[1]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "pCubeShape17Orig.w" "groupParts33.ig";
connectAttr "groupId38.id" "groupParts33.gi";
connectAttr "skinCluster12GroupParts.og" "skinCluster12.ip[0].ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster12.ma[0]";
connectAttr "LeftArm.wm" "skinCluster12.ma[1]";
connectAttr "RightArm.wm" "skinCluster12.ma[5]";
connectAttr "Head.wm" "skinCluster12.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster12.ma[10]";
connectAttr "All_Joints.liw" "skinCluster12.lw[0]";
connectAttr "LeftArm.liw" "skinCluster12.lw[1]";
connectAttr "RightArm.liw" "skinCluster12.lw[5]";
connectAttr "Head.liw" "skinCluster12.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster12.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster12.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster12.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster12.ifcl[5]";
connectAttr "Head.obcc" "skinCluster12.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster12.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster12.bp";
connectAttr "geomBind1.scs" "skinCluster12.gb";
connectAttr "groupParts35.og" "tweak12.ip[0].ig";
connectAttr "groupId40.id" "tweak12.ip[0].gi";
connectAttr "skinCluster12GroupId.msg" "skinCluster12Set.gn" -na;
connectAttr "pCubeShape14.iog.og[0]" "skinCluster12Set.dsm" -na;
connectAttr "skinCluster12.msg" "skinCluster12Set.ub[0]";
connectAttr "tweak12.og[0]" "skinCluster12GroupParts.ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12GroupParts.gi";
connectAttr "groupId40.msg" "tweakSet12.gn" -na;
connectAttr "pCubeShape14.iog.og[1]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "pCubeShape14Orig.w" "groupParts35.ig";
connectAttr "groupId40.id" "groupParts35.gi";
connectAttr "skinCluster13GroupParts.og" "skinCluster13.ip[0].ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster13.ma[0]";
connectAttr "LeftArm.wm" "skinCluster13.ma[1]";
connectAttr "RightArm.wm" "skinCluster13.ma[5]";
connectAttr "Head.wm" "skinCluster13.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster13.ma[10]";
connectAttr "All_Joints.liw" "skinCluster13.lw[0]";
connectAttr "LeftArm.liw" "skinCluster13.lw[1]";
connectAttr "RightArm.liw" "skinCluster13.lw[5]";
connectAttr "Head.liw" "skinCluster13.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster13.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster13.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster13.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster13.ifcl[5]";
connectAttr "Head.obcc" "skinCluster13.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster13.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster13.bp";
connectAttr "geomBind1.scs" "skinCluster13.gb";
connectAttr "groupParts37.og" "tweak13.ip[0].ig";
connectAttr "groupId42.id" "tweak13.ip[0].gi";
connectAttr "skinCluster13GroupId.msg" "skinCluster13Set.gn" -na;
connectAttr "pCubeShape12.iog.og[0]" "skinCluster13Set.dsm" -na;
connectAttr "skinCluster13.msg" "skinCluster13Set.ub[0]";
connectAttr "tweak13.og[0]" "skinCluster13GroupParts.ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13GroupParts.gi";
connectAttr "groupId42.msg" "tweakSet13.gn" -na;
connectAttr "pCubeShape12.iog.og[1]" "tweakSet13.dsm" -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "pCubeShape12Orig.w" "groupParts37.ig";
connectAttr "groupId42.id" "groupParts37.gi";
connectAttr "skinCluster14GroupParts.og" "skinCluster14.ip[0].ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster14.ma[0]";
connectAttr "LeftArm.wm" "skinCluster14.ma[1]";
connectAttr "RightArm.wm" "skinCluster14.ma[5]";
connectAttr "Head.wm" "skinCluster14.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster14.ma[10]";
connectAttr "All_Joints.liw" "skinCluster14.lw[0]";
connectAttr "LeftArm.liw" "skinCluster14.lw[1]";
connectAttr "RightArm.liw" "skinCluster14.lw[5]";
connectAttr "Head.liw" "skinCluster14.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster14.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster14.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster14.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster14.ifcl[5]";
connectAttr "Head.obcc" "skinCluster14.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster14.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster14.bp";
connectAttr "geomBind1.scs" "skinCluster14.gb";
connectAttr "groupParts39.og" "tweak14.ip[0].ig";
connectAttr "groupId44.id" "tweak14.ip[0].gi";
connectAttr "skinCluster14GroupId.msg" "skinCluster14Set.gn" -na;
connectAttr "pCubeShape13.iog.og[0]" "skinCluster14Set.dsm" -na;
connectAttr "skinCluster14.msg" "skinCluster14Set.ub[0]";
connectAttr "tweak14.og[0]" "skinCluster14GroupParts.ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14GroupParts.gi";
connectAttr "groupId44.msg" "tweakSet14.gn" -na;
connectAttr "pCubeShape13.iog.og[1]" "tweakSet14.dsm" -na;
connectAttr "tweak14.msg" "tweakSet14.ub[0]";
connectAttr "pCubeShape13Orig.w" "groupParts39.ig";
connectAttr "groupId44.id" "groupParts39.gi";
connectAttr "skinCluster15GroupParts.og" "skinCluster15.ip[0].ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster15.ma[0]";
connectAttr "LeftArm.wm" "skinCluster15.ma[1]";
connectAttr "RightArm.wm" "skinCluster15.ma[5]";
connectAttr "Head.wm" "skinCluster15.ma[9]";
connectAttr "|Joints|All_Joints|Head|_.wm" "skinCluster15.ma[10]";
connectAttr "All_Joints.liw" "skinCluster15.lw[0]";
connectAttr "LeftArm.liw" "skinCluster15.lw[1]";
connectAttr "RightArm.liw" "skinCluster15.lw[5]";
connectAttr "Head.liw" "skinCluster15.lw[9]";
connectAttr "|Joints|All_Joints|Head|_.liw" "skinCluster15.lw[10]";
connectAttr "All_Joints.obcc" "skinCluster15.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster15.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster15.ifcl[5]";
connectAttr "Head.obcc" "skinCluster15.ifcl[9]";
connectAttr "|Joints|All_Joints|Head|_.obcc" "skinCluster15.ifcl[10]";
connectAttr "bindPose1.msg" "skinCluster15.bp";
connectAttr "geomBind1.scs" "skinCluster15.gb";
connectAttr "groupParts41.og" "tweak15.ip[0].ig";
connectAttr "groupId46.id" "tweak15.ip[0].gi";
connectAttr "skinCluster15GroupId.msg" "skinCluster15Set.gn" -na;
connectAttr "pCubeShape15.iog.og[0]" "skinCluster15Set.dsm" -na;
connectAttr "skinCluster15.msg" "skinCluster15Set.ub[0]";
connectAttr "tweak15.og[0]" "skinCluster15GroupParts.ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15GroupParts.gi";
connectAttr "groupId46.msg" "tweakSet15.gn" -na;
connectAttr "pCubeShape15.iog.og[1]" "tweakSet15.dsm" -na;
connectAttr "tweak15.msg" "tweakSet15.ub[0]";
connectAttr "pCubeShape15Orig.w" "groupParts41.ig";
connectAttr "groupId46.id" "groupParts41.gi";
connectAttr "skinCluster16GroupParts.og" "skinCluster16.ip[0].ig";
connectAttr "skinCluster16GroupId.id" "skinCluster16.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster16.ma[0]";
connectAttr "LeftArm.wm" "skinCluster16.ma[1]";
connectAttr "RightArm.wm" "skinCluster16.ma[5]";
connectAttr "Head.wm" "skinCluster16.ma[9]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster16.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster16.ma[12]";
connectAttr "All_Joints.liw" "skinCluster16.lw[0]";
connectAttr "LeftArm.liw" "skinCluster16.lw[1]";
connectAttr "RightArm.liw" "skinCluster16.lw[5]";
connectAttr "Head.liw" "skinCluster16.lw[9]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster16.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster16.lw[12]";
connectAttr "All_Joints.obcc" "skinCluster16.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster16.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster16.ifcl[5]";
connectAttr "Head.obcc" "skinCluster16.ifcl[9]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster16.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster16.ifcl[12]";
connectAttr "bindPose1.msg" "skinCluster16.bp";
connectAttr "geomBind1.scs" "skinCluster16.gb";
connectAttr "groupParts43.og" "tweak16.ip[0].ig";
connectAttr "groupId48.id" "tweak16.ip[0].gi";
connectAttr "skinCluster16GroupId.msg" "skinCluster16Set.gn" -na;
connectAttr "pCubeShape3.iog.og[0]" "skinCluster16Set.dsm" -na;
connectAttr "skinCluster16.msg" "skinCluster16Set.ub[0]";
connectAttr "tweak16.og[0]" "skinCluster16GroupParts.ig";
connectAttr "skinCluster16GroupId.id" "skinCluster16GroupParts.gi";
connectAttr "groupId48.msg" "tweakSet16.gn" -na;
connectAttr "pCubeShape3.iog.og[1]" "tweakSet16.dsm" -na;
connectAttr "tweak16.msg" "tweakSet16.ub[0]";
connectAttr "pCubeShape3Orig.w" "groupParts43.ig";
connectAttr "groupId48.id" "groupParts43.gi";
connectAttr "skinCluster17GroupParts.og" "skinCluster17.ip[0].ig";
connectAttr "skinCluster17GroupId.id" "skinCluster17.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster17.ma[0]";
connectAttr "LeftArm.wm" "skinCluster17.ma[1]";
connectAttr "RightArm.wm" "skinCluster17.ma[5]";
connectAttr "Head.wm" "skinCluster17.ma[9]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster17.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster17.ma[12]";
connectAttr "All_Joints.liw" "skinCluster17.lw[0]";
connectAttr "LeftArm.liw" "skinCluster17.lw[1]";
connectAttr "RightArm.liw" "skinCluster17.lw[5]";
connectAttr "Head.liw" "skinCluster17.lw[9]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster17.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster17.lw[12]";
connectAttr "All_Joints.obcc" "skinCluster17.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster17.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster17.ifcl[5]";
connectAttr "Head.obcc" "skinCluster17.ifcl[9]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster17.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster17.ifcl[12]";
connectAttr "bindPose1.msg" "skinCluster17.bp";
connectAttr "geomBind1.scs" "skinCluster17.gb";
connectAttr "groupParts45.og" "tweak17.ip[0].ig";
connectAttr "groupId50.id" "tweak17.ip[0].gi";
connectAttr "skinCluster17GroupId.msg" "skinCluster17Set.gn" -na;
connectAttr "pCubeShape2.iog.og[0]" "skinCluster17Set.dsm" -na;
connectAttr "skinCluster17.msg" "skinCluster17Set.ub[0]";
connectAttr "tweak17.og[0]" "skinCluster17GroupParts.ig";
connectAttr "skinCluster17GroupId.id" "skinCluster17GroupParts.gi";
connectAttr "groupId50.msg" "tweakSet17.gn" -na;
connectAttr "pCubeShape2.iog.og[1]" "tweakSet17.dsm" -na;
connectAttr "tweak17.msg" "tweakSet17.ub[0]";
connectAttr "pCubeShape2Orig.w" "groupParts45.ig";
connectAttr "groupId50.id" "groupParts45.gi";
connectAttr "skinCluster18GroupParts.og" "skinCluster18.ip[0].ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster18.ma[0]";
connectAttr "LeftArm.wm" "skinCluster18.ma[1]";
connectAttr "RightArm.wm" "skinCluster18.ma[5]";
connectAttr "Head.wm" "skinCluster18.ma[9]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster18.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster18.ma[12]";
connectAttr "LeftLeg.wm" "skinCluster18.ma[13]";
connectAttr "RightLeg.wm" "skinCluster18.ma[16]";
connectAttr "All_Joints.liw" "skinCluster18.lw[0]";
connectAttr "LeftArm.liw" "skinCluster18.lw[1]";
connectAttr "RightArm.liw" "skinCluster18.lw[5]";
connectAttr "Head.liw" "skinCluster18.lw[9]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster18.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster18.lw[12]";
connectAttr "LeftLeg.liw" "skinCluster18.lw[13]";
connectAttr "RightLeg.liw" "skinCluster18.lw[16]";
connectAttr "All_Joints.obcc" "skinCluster18.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster18.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster18.ifcl[5]";
connectAttr "Head.obcc" "skinCluster18.ifcl[9]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster18.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster18.ifcl[12]";
connectAttr "LeftLeg.obcc" "skinCluster18.ifcl[13]";
connectAttr "RightLeg.obcc" "skinCluster18.ifcl[16]";
connectAttr "bindPose1.msg" "skinCluster18.bp";
connectAttr "geomBind1.scs" "skinCluster18.gb";
connectAttr "groupParts47.og" "tweak18.ip[0].ig";
connectAttr "groupId52.id" "tweak18.ip[0].gi";
connectAttr "skinCluster18GroupId.msg" "skinCluster18Set.gn" -na;
connectAttr "pCubeShape4.iog.og[0]" "skinCluster18Set.dsm" -na;
connectAttr "skinCluster18.msg" "skinCluster18Set.ub[0]";
connectAttr "tweak18.og[0]" "skinCluster18GroupParts.ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18GroupParts.gi";
connectAttr "groupId52.msg" "tweakSet18.gn" -na;
connectAttr "pCubeShape4.iog.og[1]" "tweakSet18.dsm" -na;
connectAttr "tweak18.msg" "tweakSet18.ub[0]";
connectAttr "pCubeShape4Orig.w" "groupParts47.ig";
connectAttr "groupId52.id" "groupParts47.gi";
connectAttr "skinCluster19GroupParts.og" "skinCluster19.ip[0].ig";
connectAttr "skinCluster19GroupId.id" "skinCluster19.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster19.ma[0]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster19.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster19.ma[12]";
connectAttr "LeftLeg.wm" "skinCluster19.ma[13]";
connectAttr "RightLeg.wm" "skinCluster19.ma[16]";
connectAttr "All_Joints.liw" "skinCluster19.lw[0]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster19.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster19.lw[12]";
connectAttr "LeftLeg.liw" "skinCluster19.lw[13]";
connectAttr "RightLeg.liw" "skinCluster19.lw[16]";
connectAttr "All_Joints.obcc" "skinCluster19.ifcl[0]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster19.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster19.ifcl[12]";
connectAttr "LeftLeg.obcc" "skinCluster19.ifcl[13]";
connectAttr "RightLeg.obcc" "skinCluster19.ifcl[16]";
connectAttr "bindPose1.msg" "skinCluster19.bp";
connectAttr "geomBind1.scs" "skinCluster19.gb";
connectAttr "groupParts49.og" "tweak19.ip[0].ig";
connectAttr "groupId54.id" "tweak19.ip[0].gi";
connectAttr "skinCluster19GroupId.msg" "skinCluster19Set.gn" -na;
connectAttr "pCubeShape5.iog.og[0]" "skinCluster19Set.dsm" -na;
connectAttr "skinCluster19.msg" "skinCluster19Set.ub[0]";
connectAttr "tweak19.og[0]" "skinCluster19GroupParts.ig";
connectAttr "skinCluster19GroupId.id" "skinCluster19GroupParts.gi";
connectAttr "groupId54.msg" "tweakSet19.gn" -na;
connectAttr "pCubeShape5.iog.og[1]" "tweakSet19.dsm" -na;
connectAttr "tweak19.msg" "tweakSet19.ub[0]";
connectAttr "pCubeShape5Orig.w" "groupParts49.ig";
connectAttr "groupId54.id" "groupParts49.gi";
connectAttr "skinCluster20GroupParts.og" "skinCluster20.ip[0].ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster20.ma[0]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster20.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster20.ma[12]";
connectAttr "LeftLeg.wm" "skinCluster20.ma[13]";
connectAttr "RightLeg.wm" "skinCluster20.ma[16]";
connectAttr "All_Joints.liw" "skinCluster20.lw[0]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster20.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster20.lw[12]";
connectAttr "LeftLeg.liw" "skinCluster20.lw[13]";
connectAttr "RightLeg.liw" "skinCluster20.lw[16]";
connectAttr "All_Joints.obcc" "skinCluster20.ifcl[0]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster20.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster20.ifcl[12]";
connectAttr "LeftLeg.obcc" "skinCluster20.ifcl[13]";
connectAttr "RightLeg.obcc" "skinCluster20.ifcl[16]";
connectAttr "bindPose1.msg" "skinCluster20.bp";
connectAttr "geomBind1.scs" "skinCluster20.gb";
connectAttr "groupParts51.og" "tweak20.ip[0].ig";
connectAttr "groupId56.id" "tweak20.ip[0].gi";
connectAttr "skinCluster20GroupId.msg" "skinCluster20Set.gn" -na;
connectAttr "pCubeShape6.iog.og[0]" "skinCluster20Set.dsm" -na;
connectAttr "skinCluster20.msg" "skinCluster20Set.ub[0]";
connectAttr "tweak20.og[0]" "skinCluster20GroupParts.ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20GroupParts.gi";
connectAttr "groupId56.msg" "tweakSet20.gn" -na;
connectAttr "pCubeShape6.iog.og[1]" "tweakSet20.dsm" -na;
connectAttr "tweak20.msg" "tweakSet20.ub[0]";
connectAttr "pCubeShape6Orig.w" "groupParts51.ig";
connectAttr "groupId56.id" "groupParts51.gi";
connectAttr "skinCluster21GroupParts.og" "skinCluster21.ip[0].ig";
connectAttr "skinCluster21GroupId.id" "skinCluster21.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster21.ma[0]";
connectAttr "LeftArm.wm" "skinCluster21.ma[1]";
connectAttr "RightArm.wm" "skinCluster21.ma[5]";
connectAttr "Head.wm" "skinCluster21.ma[9]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster21.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster21.ma[12]";
connectAttr "All_Joints.liw" "skinCluster21.lw[0]";
connectAttr "LeftArm.liw" "skinCluster21.lw[1]";
connectAttr "RightArm.liw" "skinCluster21.lw[5]";
connectAttr "Head.liw" "skinCluster21.lw[9]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster21.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster21.lw[12]";
connectAttr "All_Joints.obcc" "skinCluster21.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster21.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster21.ifcl[5]";
connectAttr "Head.obcc" "skinCluster21.ifcl[9]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster21.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster21.ifcl[12]";
connectAttr "bindPose1.msg" "skinCluster21.bp";
connectAttr "geomBind1.scs" "skinCluster21.gb";
connectAttr "groupParts53.og" "tweak21.ip[0].ig";
connectAttr "groupId58.id" "tweak21.ip[0].gi";
connectAttr "skinCluster21GroupId.msg" "skinCluster21Set.gn" -na;
connectAttr "pCubeShape10.iog.og[0]" "skinCluster21Set.dsm" -na;
connectAttr "skinCluster21.msg" "skinCluster21Set.ub[0]";
connectAttr "tweak21.og[0]" "skinCluster21GroupParts.ig";
connectAttr "skinCluster21GroupId.id" "skinCluster21GroupParts.gi";
connectAttr "groupId58.msg" "tweakSet21.gn" -na;
connectAttr "pCubeShape10.iog.og[1]" "tweakSet21.dsm" -na;
connectAttr "tweak21.msg" "tweakSet21.ub[0]";
connectAttr "pCubeShape10Orig.w" "groupParts53.ig";
connectAttr "groupId58.id" "groupParts53.gi";
connectAttr "skinCluster22GroupParts.og" "skinCluster22.ip[0].ig";
connectAttr "skinCluster22GroupId.id" "skinCluster22.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster22.ma[0]";
connectAttr "LeftArm.wm" "skinCluster22.ma[1]";
connectAttr "RightArm.wm" "skinCluster22.ma[5]";
connectAttr "Head.wm" "skinCluster22.ma[9]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster22.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster22.ma[12]";
connectAttr "All_Joints.liw" "skinCluster22.lw[0]";
connectAttr "LeftArm.liw" "skinCluster22.lw[1]";
connectAttr "RightArm.liw" "skinCluster22.lw[5]";
connectAttr "Head.liw" "skinCluster22.lw[9]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster22.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster22.lw[12]";
connectAttr "All_Joints.obcc" "skinCluster22.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster22.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster22.ifcl[5]";
connectAttr "Head.obcc" "skinCluster22.ifcl[9]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster22.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster22.ifcl[12]";
connectAttr "bindPose1.msg" "skinCluster22.bp";
connectAttr "geomBind1.scs" "skinCluster22.gb";
connectAttr "groupParts55.og" "tweak22.ip[0].ig";
connectAttr "groupId60.id" "tweak22.ip[0].gi";
connectAttr "skinCluster22GroupId.msg" "skinCluster22Set.gn" -na;
connectAttr "pCubeShape11.iog.og[0]" "skinCluster22Set.dsm" -na;
connectAttr "skinCluster22.msg" "skinCluster22Set.ub[0]";
connectAttr "tweak22.og[0]" "skinCluster22GroupParts.ig";
connectAttr "skinCluster22GroupId.id" "skinCluster22GroupParts.gi";
connectAttr "groupId60.msg" "tweakSet22.gn" -na;
connectAttr "pCubeShape11.iog.og[1]" "tweakSet22.dsm" -na;
connectAttr "tweak22.msg" "tweakSet22.ub[0]";
connectAttr "pCubeShape11Orig.w" "groupParts55.ig";
connectAttr "groupId60.id" "groupParts55.gi";
connectAttr "skinCluster23GroupParts.og" "skinCluster23.ip[0].ig";
connectAttr "skinCluster23GroupId.id" "skinCluster23.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster23.ma[0]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster23.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster23.ma[12]";
connectAttr "LeftLeg.wm" "skinCluster23.ma[13]";
connectAttr "RightLeg.wm" "skinCluster23.ma[16]";
connectAttr "All_Joints.liw" "skinCluster23.lw[0]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster23.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster23.lw[12]";
connectAttr "LeftLeg.liw" "skinCluster23.lw[13]";
connectAttr "RightLeg.liw" "skinCluster23.lw[16]";
connectAttr "All_Joints.obcc" "skinCluster23.ifcl[0]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster23.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster23.ifcl[12]";
connectAttr "LeftLeg.obcc" "skinCluster23.ifcl[13]";
connectAttr "RightLeg.obcc" "skinCluster23.ifcl[16]";
connectAttr "bindPose1.msg" "skinCluster23.bp";
connectAttr "geomBind1.scs" "skinCluster23.gb";
connectAttr "groupParts57.og" "tweak23.ip[0].ig";
connectAttr "groupId62.id" "tweak23.ip[0].gi";
connectAttr "skinCluster23GroupId.msg" "skinCluster23Set.gn" -na;
connectAttr "pCubeShape7.iog.og[0]" "skinCluster23Set.dsm" -na;
connectAttr "skinCluster23.msg" "skinCluster23Set.ub[0]";
connectAttr "tweak23.og[0]" "skinCluster23GroupParts.ig";
connectAttr "skinCluster23GroupId.id" "skinCluster23GroupParts.gi";
connectAttr "groupId62.msg" "tweakSet23.gn" -na;
connectAttr "pCubeShape7.iog.og[1]" "tweakSet23.dsm" -na;
connectAttr "tweak23.msg" "tweakSet23.ub[0]";
connectAttr "pCubeShape7Orig.w" "groupParts57.ig";
connectAttr "groupId62.id" "groupParts57.gi";
connectAttr "skinCluster24GroupParts.og" "skinCluster24.ip[0].ig";
connectAttr "skinCluster24GroupId.id" "skinCluster24.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster24.ma[0]";
connectAttr "LeftArm.wm" "skinCluster24.ma[1]";
connectAttr "RightArm.wm" "skinCluster24.ma[5]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster24.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster24.ma[12]";
connectAttr "LeftLeg.wm" "skinCluster24.ma[13]";
connectAttr "RightLeg.wm" "skinCluster24.ma[16]";
connectAttr "All_Joints.liw" "skinCluster24.lw[0]";
connectAttr "LeftArm.liw" "skinCluster24.lw[1]";
connectAttr "RightArm.liw" "skinCluster24.lw[5]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster24.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster24.lw[12]";
connectAttr "LeftLeg.liw" "skinCluster24.lw[13]";
connectAttr "RightLeg.liw" "skinCluster24.lw[16]";
connectAttr "All_Joints.obcc" "skinCluster24.ifcl[0]";
connectAttr "LeftArm.obcc" "skinCluster24.ifcl[1]";
connectAttr "RightArm.obcc" "skinCluster24.ifcl[5]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster24.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster24.ifcl[12]";
connectAttr "LeftLeg.obcc" "skinCluster24.ifcl[13]";
connectAttr "RightLeg.obcc" "skinCluster24.ifcl[16]";
connectAttr "bindPose1.msg" "skinCluster24.bp";
connectAttr "geomBind1.scs" "skinCluster24.gb";
connectAttr "groupParts59.og" "tweak24.ip[0].ig";
connectAttr "groupId64.id" "tweak24.ip[0].gi";
connectAttr "skinCluster24GroupId.msg" "skinCluster24Set.gn" -na;
connectAttr "pCubeShape9.iog.og[0]" "skinCluster24Set.dsm" -na;
connectAttr "skinCluster24.msg" "skinCluster24Set.ub[0]";
connectAttr "tweak24.og[0]" "skinCluster24GroupParts.ig";
connectAttr "skinCluster24GroupId.id" "skinCluster24GroupParts.gi";
connectAttr "groupId64.msg" "tweakSet24.gn" -na;
connectAttr "pCubeShape9.iog.og[1]" "tweakSet24.dsm" -na;
connectAttr "tweak24.msg" "tweakSet24.ub[0]";
connectAttr "pCubeShape9Orig.w" "groupParts59.ig";
connectAttr "groupId64.id" "groupParts59.gi";
connectAttr "skinCluster25GroupParts.og" "skinCluster25.ip[0].ig";
connectAttr "skinCluster25GroupId.id" "skinCluster25.ip[0].gi";
connectAttr "All_Joints.wm" "skinCluster25.ma[0]";
connectAttr "|Joints|All_Joints|_.wm" "skinCluster25.ma[11]";
connectAttr "|Joints|All_Joints|_|_.wm" "skinCluster25.ma[12]";
connectAttr "LeftLeg.wm" "skinCluster25.ma[13]";
connectAttr "RightLeg.wm" "skinCluster25.ma[16]";
connectAttr "All_Joints.liw" "skinCluster25.lw[0]";
connectAttr "|Joints|All_Joints|_.liw" "skinCluster25.lw[11]";
connectAttr "|Joints|All_Joints|_|_.liw" "skinCluster25.lw[12]";
connectAttr "LeftLeg.liw" "skinCluster25.lw[13]";
connectAttr "RightLeg.liw" "skinCluster25.lw[16]";
connectAttr "All_Joints.obcc" "skinCluster25.ifcl[0]";
connectAttr "|Joints|All_Joints|_.obcc" "skinCluster25.ifcl[11]";
connectAttr "|Joints|All_Joints|_|_.obcc" "skinCluster25.ifcl[12]";
connectAttr "LeftLeg.obcc" "skinCluster25.ifcl[13]";
connectAttr "RightLeg.obcc" "skinCluster25.ifcl[16]";
connectAttr "bindPose1.msg" "skinCluster25.bp";
connectAttr "geomBind1.scs" "skinCluster25.gb";
connectAttr "groupParts61.og" "tweak25.ip[0].ig";
connectAttr "groupId66.id" "tweak25.ip[0].gi";
connectAttr "skinCluster25GroupId.msg" "skinCluster25Set.gn" -na;
connectAttr "pCubeShape8.iog.og[0]" "skinCluster25Set.dsm" -na;
connectAttr "skinCluster25.msg" "skinCluster25Set.ub[0]";
connectAttr "tweak25.og[0]" "skinCluster25GroupParts.ig";
connectAttr "skinCluster25GroupId.id" "skinCluster25GroupParts.gi";
connectAttr "groupId66.msg" "tweakSet25.gn" -na;
connectAttr "pCubeShape8.iog.og[1]" "tweakSet25.dsm" -na;
connectAttr "tweak25.msg" "tweakSet25.ub[0]";
connectAttr "pCubeShape8Orig.w" "groupParts61.ig";
connectAttr "groupId66.id" "groupParts61.gi";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "Doll.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "samplerInfo1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "RagDollShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "RagDollShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "RagDoll1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "RagDoll1Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
// End of Character80.ma
