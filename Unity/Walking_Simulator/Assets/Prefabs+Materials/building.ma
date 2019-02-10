//Maya ASCII 2018 scene
//Name: building.ma
//Last modified: Fri, Feb 08, 2019 05:09:04 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "B4351145-4E5D-E0E6-F826-8D9B19118DB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.6965407107675965 29.974483607762533 -17.388491506342099 ;
	setAttr ".r" -type "double3" -57.338352729549214 -155.39999999995712 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "43A2AE37-4A4C-937F-8537-F38279268D9A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 32.471602459551328;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.7191266481982912 0.47613699413650323 -1.162387140548141 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B0D448C6-498B-1983-DA4D-0B9C3701239E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0B8219EA-45CF-18AA-38B7-3EB6B94C7AC5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "AA65B84E-4E6E-648B-3BE7-6EB3128CEE7F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0EF0C59B-4B66-6ED1-49A6-F7B165C856DE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "4C3BD2A6-43DE-E2D9-9E49-2FACCCBABDFC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "03941FE1-4DEC-3617-354C-0DBFDB35C181";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "04DF7185-49AE-4665-9C3F-C29DECC3C20F";
	setAttr ".t" -type "double3" 0 2.0695919646213228 0 ;
	setAttr ".s" -type "double3" 5 3 3 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "1A81182D-4D89-2EF0-7475-3EA0EC4CB538";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.51334798336029053 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[580:587]" -type "float3"  0 -0.70093232 -0.056892522 
		0 -0.70093232 -0.056892522 0 -0.70093232 -0.056892522 0 -0.70093232 -0.056892522 
		0 -0.70093232 -0.056892522 0 -0.70093232 -0.056892522 0 -0.70093232 -0.056892522 
		0 -0.70093232 -0.056892522;
createNode transform -n "group";
	rename -uid "5471ED3B-4B50-C25C-2234-D392587D3FF0";
	setAttr ".t" -type "double3" 5.6514020425418341 -2.7803724438492736 -11.782729157641324 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
	setAttr ".s" -type "double3" 0.16401918075386815 0.16401918075386815 0.16401918075386815 ;
	setAttr ".rp" -type "double3" -5.3533068082895152 4.2580645850852683 10.270161294277949 ;
	setAttr ".sp" -type "double3" -5.3533068082895152 4.2580645850852683 10.270161294277949 ;
createNode transform -n "pasted__DoorKnob_2" -p "group";
	rename -uid "29272CC5-44BA-91F6-1D65-F9B3A70E70F3";
	setAttr ".t" -type "double3" -5.3533068261709085 3.396714069318552 10.195040920615639 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.3 0.23691997536889578 0.3 ;
createNode mesh -n "pasted__DoorKnob_Shape2" -p "pasted__DoorKnob_2";
	rename -uid "DFC258B3-4CC5-1642-22F0-DE923698E77F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.61048543
		 0.95423543 0.5 1 0.38951457 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5
		 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.61048543 0.95423543 0.5 1 0.38951457
		 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457
		 0.65625 0.84375 0.61048543 0.95423543 0.5 1 0.38951457 0.95423543 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.61048543
		 0.95423543 0.5 1 0.38951457 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5
		 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.61048543 0.95423543 0.5 1 0.38951457
		 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457
		 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0.1740317 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.1740317 0 ;
	setAttr ".pt[2]" -type "float3" 0 0.1740317 0 ;
	setAttr ".pt[3]" -type "float3" 0 0.1740317 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.1740317 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.1740317 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.1740317 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.1740317 0 ;
	setAttr ".pt[16]" -type "float3" 0 0.1740317 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.073497199 0 ;
	setAttr ".pt[26]" -type "float3" 0 -0.073497199 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.073497199 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.073497199 0 ;
	setAttr ".pt[29]" -type "float3" 0 -0.073497199 0 ;
	setAttr ".pt[30]" -type "float3" 0 -0.073497199 0 ;
	setAttr ".pt[31]" -type "float3" 0 -0.073497199 0 ;
	setAttr ".pt[32]" -type "float3" 0 -0.073497199 0 ;
	setAttr ".pt[49]" -type "float3" -0.26452136 0.044940345 0.26452148 ;
	setAttr ".pt[50]" -type "float3" -2.3841858e-07 0.044940345 0.37409008 ;
	setAttr ".pt[51]" -type "float3" 2.2297508e-08 0 0 ;
	setAttr ".pt[52]" -type "float3" 0.26452184 0.044940345 0.26452148 ;
	setAttr ".pt[53]" -type "float3" 0.37408996 0.044940345 0 ;
	setAttr ".pt[54]" -type "float3" 0.26452184 0.044940345 -0.26452148 ;
	setAttr ".pt[55]" -type "float3" -2.3841858e-07 0.044940345 -0.37409008 ;
	setAttr ".pt[56]" -type "float3" -0.2645216 0.044940345 -0.26452148 ;
	setAttr ".pt[57]" -type "float3" -0.37408996 0.044940345 0 ;
	setAttr -s 58 ".vt[0:57]"  0.70710671 -1 -0.70710659 0 -1 -1 -0.70710671 -1 -0.70710659
		 -0.99999988 -1 0 -0.70710671 -1 0.70710659 0 -1 1 0.70710677 -1 0.70710659 1 -1 0
		 0.70710671 -0.41184855 -0.70710659 0 -0.41184855 -1 -0.70710671 -0.41184855 -0.70710659
		 -0.99999988 -0.41184855 0 -0.70710671 -0.41184855 0.70710659 0 -0.41184855 1 0.70710677 -0.41184855 0.70710659
		 1 -0.41184855 0 0 -1 0 0.25244626 -0.30283743 -0.25244617 3.8325012e-08 -0.30283743 -0.35701275
		 -0.25244629 -0.30283743 -0.25244617 -0.35701275 -0.30283743 0 -0.25244629 -0.30283743 0.25244617
		 3.8325012e-08 -0.30283743 0.35701275 0.25244641 -0.30283743 0.25244617 0.35701287 -0.30283743 0
		 0.25244623 0.26136851 -0.25244617 3.8325005e-08 0.26136851 -0.35701275 -0.25244626 0.26136851 -0.25244617
		 -0.35701269 0.26136851 0 -0.25244626 0.26136851 0.25244617 3.8325012e-08 0.26136851 0.35701275
		 0.25244638 0.26136851 0.25244617 0.35701281 0.26136851 0 0.67105782 0.37608975 -0.6710577
		 3.0386396e-09 0.37608975 -0.94901943 -0.67105812 0.37608975 -0.6710577 -0.94901896 0.37608975 0
		 -0.67105812 0.37608975 0.6710577 3.0386715e-09 0.37608975 0.94901943 0.67105824 0.37608975 0.6710577
		 0.94901907 0.37608975 0 0.67105782 1.31793165 -0.6710577 3.0386369e-09 1.31793165 -0.94901943
		 -0.67105812 1.31793165 -0.6710577 -0.94901896 1.31793165 0 -0.67105812 1.31793165 0.6710577
		 3.038672e-09 1.31793165 0.94901943 0.67105824 1.31793165 0.6710577 0.94901907 1.31793165 0
		 0.67105782 1.41516924 -0.6710577 3.0386369e-09 1.41516924 -0.94901943 3.0386709e-09 1.41516936 0
		 -0.67105812 1.41516924 -0.6710577 -0.94901896 1.41516924 0 -0.67105812 1.41516924 0.6710577
		 3.038672e-09 1.41516924 0.94901943 0.67105824 1.41516924 0.6710577 0.94901907 1.41516924 0;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 0 9 18 0 17 18 0 10 19 0 18 19 0 11 20 0 19 20 0 12 21 0 20 21 0 13 22 0
		 21 22 0 14 23 0 22 23 0 15 24 0 23 24 0 24 17 0 17 25 0 18 26 0 25 26 1 19 27 0 26 27 1
		 20 28 0 27 28 1 21 29 0 28 29 1 22 30 0 29 30 1 23 31 0 30 31 1 24 32 0 31 32 1 32 25 1
		 25 33 0 26 34 0 33 34 0 27 35 0 34 35 0 28 36 0 35 36 0 29 37 0 36 37 0 30 38 0 37 38 0
		 31 39 0 38 39 0 32 40 0 39 40 0 40 33 0 33 41 0 34 42 0 41 42 1 35 43 0 42 43 1 36 44 0
		 43 44 1 37 45 0 44 45 1 38 46 0 45 46 1 39 47 0 46 47 1 40 48 0 47 48 1 48 41 1 41 49 0
		 42 50 0 49 50 0 50 51 1 49 51 1 43 52 0 50 52 0 52 51 1 44 53 0 52 53 0 53 51 1 45 54 0
		 53 54 0 54 51 1 46 55 0 54 55 0 55 51 1 47 56 0 55 56 0 56 51 1 48 57 0 56 57 0 57 51 1
		 57 49 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 98 99 -101
		mu 0 3 68 69 35
		f 3 102 103 -100
		mu 0 3 69 70 35
		f 3 105 106 -104
		mu 0 3 70 71 35
		f 3 108 109 -107
		mu 0 3 71 72 35
		f 3 111 112 -110
		mu 0 3 72 73 35
		f 3 114 115 -113
		mu 0 3 73 74 35
		f 3 117 118 -116
		mu 0 3 74 75 35
		f 3 119 100 -119
		mu 0 3 75 68 35
		f 4 8 33 -35 -33
		mu 0 4 32 31 37 36
		f 4 9 35 -37 -34
		mu 0 4 31 30 38 37
		f 4 10 37 -39 -36
		mu 0 4 30 29 39 38
		f 4 11 39 -41 -38
		mu 0 4 29 28 40 39
		f 4 12 41 -43 -40
		mu 0 4 28 27 41 40
		f 4 13 43 -45 -42
		mu 0 4 27 26 42 41
		f 4 14 45 -47 -44
		mu 0 4 26 33 43 42
		f 4 15 32 -48 -46
		mu 0 4 33 32 36 43
		f 4 34 49 -51 -49
		mu 0 4 36 37 45 44
		f 4 36 51 -53 -50
		mu 0 4 37 38 46 45
		f 4 38 53 -55 -52
		mu 0 4 38 39 47 46
		f 4 40 55 -57 -54
		mu 0 4 39 40 48 47
		f 4 42 57 -59 -56
		mu 0 4 40 41 49 48
		f 4 44 59 -61 -58
		mu 0 4 41 42 50 49
		f 4 46 61 -63 -60
		mu 0 4 42 43 51 50
		f 4 47 48 -64 -62
		mu 0 4 43 36 44 51
		f 4 50 65 -67 -65
		mu 0 4 44 45 53 52
		f 4 52 67 -69 -66
		mu 0 4 45 46 54 53
		f 4 54 69 -71 -68
		mu 0 4 46 47 55 54
		f 4 56 71 -73 -70
		mu 0 4 47 48 56 55
		f 4 58 73 -75 -72
		mu 0 4 48 49 57 56
		f 4 60 75 -77 -74
		mu 0 4 49 50 58 57
		f 4 62 77 -79 -76
		mu 0 4 50 51 59 58
		f 4 63 64 -80 -78
		mu 0 4 51 44 52 59
		f 4 66 81 -83 -81
		mu 0 4 52 53 61 60
		f 4 68 83 -85 -82
		mu 0 4 53 54 62 61
		f 4 70 85 -87 -84
		mu 0 4 54 55 63 62
		f 4 72 87 -89 -86
		mu 0 4 55 56 64 63
		f 4 74 89 -91 -88
		mu 0 4 56 57 65 64
		f 4 76 91 -93 -90
		mu 0 4 57 58 66 65
		f 4 78 93 -95 -92
		mu 0 4 58 59 67 66
		f 4 79 80 -96 -94
		mu 0 4 59 52 60 67
		f 4 82 97 -99 -97
		mu 0 4 60 61 69 68
		f 4 84 101 -103 -98
		mu 0 4 61 62 70 69
		f 4 86 104 -106 -102
		mu 0 4 62 63 71 70
		f 4 88 107 -109 -105
		mu 0 4 63 64 72 71
		f 4 90 110 -112 -108
		mu 0 4 64 65 73 72
		f 4 92 113 -115 -111
		mu 0 4 65 66 74 73
		f 4 94 116 -118 -114
		mu 0 4 66 67 75 74
		f 4 95 96 -120 -117
		mu 0 4 67 60 68 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B49CCB06-454B-54E6-EFF9-56A5B76F2EB3";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "D215DBF3-41F3-341E-9602-A487CBEE5E9A";
createNode displayLayer -n "defaultLayer";
	rename -uid "78E8D00E-4B13-060D-B01E-56A29CCA906F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C7549875-4A32-A95D-3777-0EB66098B87D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B41C6752-4BB9-0FBA-4E11-3988B2D8C455";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A46A81AD-4118-C43B-78E7-EABB3753E6FD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5694FB1D-45E6-A4A9-B3EE-58B2CE382610";
createNode polyCube -n "polyCube1";
	rename -uid "F1AC8BCB-4127-DC10-0A20-6383A58AADAC";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "BCA94ED2-444A-F5BE-37C0-66BD66FD363F";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.569592 0 ;
	setAttr ".rs" 57764;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5 2.8535953117797548 -1.3180853426456451 ;
	setAttr ".cbx" -type "double3" 2.5 4.2855887068698575 1.3180853426456451 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "8AC8F2E1-443E-0759-6521-3C95BB12F63A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 0.23866555 -0.06063823 0
		 0.23866555 -0.06063823 0 -0.23866555 0.06063823 0 -0.23866555 0.06063823;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "66590AD5-48A8-B8C3-132F-E2BF0A9C465C";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.7077684 0 ;
	setAttr ".rs" 55945;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.7083826065063477 2.9320911420772249 -1.4279517531394958 ;
	setAttr ".cbx" -type "double3" 2.7083826065063477 4.4834456099460294 1.4279517531394958 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "C0F03D63-4B31-C7E1-0D8A-B6BA552C323B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -0.041676532 0.065952241 0.036622148
		 0.041676532 0.065952241 0.036622148 0.041676532 0.026165243 -0.036622148 -0.041676532
		 0.026165243 -0.036622148;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "48408D93-420F-4B69-D9B2-D08130EFB9B6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.59826314449310303;
	setAttr ".dr" no;
	setAttr ".re" 3;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "946AD1C9-4455-4C28-6134-ABB9C7FB3982";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 0.056817669 0 0 0.056817669
		 0 0 0.056817669 0 0 0.056817669 0;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "4897C8CD-4B38-A909-0A04-1E9494936978";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.67907047271728516;
	setAttr ".dr" no;
	setAttr ".re" 3;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "15081D08-4241-6350-1894-349BBBAD233B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[28:29]" "e[31]" "e[33]" "e[35]" "e[37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.43448621034622192;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "3182F90B-4F0E-6225-822A-838F4264F557";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.57808208465576172;
	setAttr ".dr" no;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "6D34AD09-4440-B1F8-5C96-2D8AA7BF797C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[30]" "e[38]" "e[46]" "e[54]" "e[62]" "e[70]" "e[78]" "e[86]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.50100034475326538;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "AAA7763D-4D10-D5A1-9FAA-2BAFE3AED636";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[6:7]" "e[16]" "e[19]" "e[24]" "e[27]" "e[38]" "e[54]" "e[70]" "e[86]" "e[92:93]" "e[95]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.63051837682723999;
	setAttr ".re" 92;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "5C0F7C8B-4F81-F1C2-C113-E1BA0EF88F47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[4:5]" "e[8:9]" "e[32]" "e[43]" "e[48]" "e[59]" "e[64]" "e[75]" "e[80]" "e[91]" "e[104]" "e[123]" "e[136]" "e[155]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.27920925617218018;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "E8C08141-4C44-13FD-E551-E0A3140B845B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[4:5]" "e[32]" "e[48]" "e[64]" "e[80]" "e[104]" "e[136]" "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[183]" "e[185]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.36824691295623779;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "96DA9DA2-434E-155C-B0E5-69BE04AA956C";
	setAttr ".ics" -type "componentList" 2 "f[81]" "f[97]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.011314936 1.3927364 -1.4344387 ;
	setAttr ".rs" 41465;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.46868585050106049 0.5695921434352571 -1.5 ;
	setAttr ".cbx" -type "double3" 0.49131572246551514 2.2158806724736864 -1.3688775300979614 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "F05D62DF-4303-DD70-3F21-A09AEFB83353";
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.6923943 1.9127604 -1.3930203 ;
	setAttr ".rs" 56311;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3640613853931427 1.6096401466319734 -1.4171630144119263 ;
	setAttr ".cbx" -type "double3" 2.0207272469997406 2.2158807171771699 -1.3688775300979614 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "BFA201B2-4645-D05C-1E17-6DB0BA993FA3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[112:117]" -type "float3"  -4.6566129e-10 -4.6566129e-10
		 -0.016638456 -4.6566129e-10 -4.6566129e-10 -0.016638456 -4.6566129e-10 -4.6566129e-10
		 -0.016638456 -4.6566129e-10 -4.6566129e-10 -0.016638456 -4.6566129e-10 -4.6566129e-10
		 -0.016638456 -4.6566129e-10 -4.6566129e-10 -0.016638456;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "77AEDA16-44C7-76B3-ECD2-0C99A1CFF40A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[96]" "e[116]" "e[128]" "e[148]" "e[160]" "e[180]" "e[192]" "e[211]" "e[236]" "e[239]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.52311289310455322;
	setAttr ".re" 239;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "FCF96E99-4370-D076-F9FA-A49CB009F50D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[118:121]" -type "float3"  0 0 0.030919889 0 0 0.030919889
		 0 0 0.030919889 0 0 0.030919889;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "EA469EAF-4CE6-F85E-DA6D-0C9B4E23A0CB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[183]" "e[185]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[221]" "e[225]" "e[234]" "e[238]" "e[242]" "e[264]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.50031286478042603;
	setAttr ".re" 159;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "F411C2EF-4BAA-FBDA-C2E4-9BA5DB20824E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[116]" "e[148]" "e[180]" "e[211]" "e[240:241]" "e[243]" "e[267]" "e[269]" "e[273]" "e[300]" "e[318]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.89327436685562134;
	setAttr ".dr" no;
	setAttr ".re" 243;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "3AC04429-4E7E-C6F7-9D90-268604A4D71B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[96]" "e[128]" "e[160]" "e[192]" "e[236]" "e[239]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]" "e[259]" "e[261]" "e[263]" "e[265]" "e[271]" "e[302]" "e[316]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.072077430784702301;
	setAttr ".re" 160;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "BBD856C8-47E4-9756-129A-F5802C218760";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 25 "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[242]" "e[276:277]" "e[279]" "e[281]" "e[283]" "e[285]" "e[299]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[317]" "e[342]" "e[356]" "e[382]" "e[396]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.89420902729034424;
	setAttr ".re" 276;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "8B215266-4D21-8EB6-D788-4E9EA992D210";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 25 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[183]" "e[185]" "e[221]" "e[225]" "e[234]" "e[238]" "e[264]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295]" "e[297]" "e[301]" "e[303]" "e[315]" "e[340]" "e[358]" "e[380]" "e[398]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.11479046940803528;
	setAttr ".re" 159;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "CE436B0B-4E2B-75C4-40D8-9C8C800D4781";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]" "e[259]" "e[261]" "e[263]" "e[265]" "e[271]" "e[302]" "e[360]" "e[385]" "e[387]" "e[391]" "e[393]" "e[395]" "e[397]" "e[428]" "e[446]" "e[480]" "e[498]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.90602266788482666;
	setAttr ".dr" no;
	setAttr ".re" 498;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "F5587437-4079-B65A-25D0-8CB1389E03DF";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[122]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[123]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[124]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[125]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[126]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[127]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[128]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[129]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[130]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[131]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[132]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[133]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[134]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[135]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[136]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[137]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[138]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[139]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[152]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[160]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[215]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[225]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[241]" -type "float3" 0.0019803166 0 0 ;
	setAttr ".tk[251]" -type "float3" 0.0019803166 0 0 ;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "1CCB187B-4E91-A3E0-577E-2DA18CE262AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[276:277]" "e[279]" "e[281]" "e[283]" "e[285]" "e[299]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[317]" "e[342]" "e[382]" "e[411]" "e[413]" "e[415]" "e[417]" "e[419]" "e[421]" "e[429]" "e[431]" "e[443]" "e[445]" "e[447]" "e[532]" "e[550]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.91012543439865112;
	setAttr ".dr" no;
	setAttr ".re" 550;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "121922F1-4F59-E718-A1F5-469C661C024D";
	setAttr ".ics" -type "componentList" 3 "f[158]" "f[197]" "f[248:249]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.6967255 1.9113756 -1.4196415 ;
	setAttr ".rs" 63431;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3974830508232117 1.641687492866295 -1.4411214888095856 ;
	setAttr ".cbx" -type "double3" 1.9959679245948792 2.1810638001451665 -1.3981615304946899 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "78924507-4494-B712-2C67-E48CEC552971";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[118]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[119]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[120]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[121]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[122]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[123]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[159]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[160]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[161]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[179]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[180]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[181]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[199]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[200]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[201]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[223]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[224]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[225]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[226]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[227]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[249]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[250]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[251]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[252]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[253]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[254]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[255]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[275]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[276]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[277]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[278]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[279]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[280]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[303]" -type "float3" 0 0 -0.039756879 ;
	setAttr ".tk[304]" -type "float3" 0 0 -0.039756875 ;
	setAttr ".tk[305]" -type "float3" 0 0 -0.039756875 ;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "B7602B27-4B57-4BED-BB92-71AFA4750CDA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 25 "e[44:45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[100]" "e[112]" "e[132]" "e[144]" "e[164]" "e[176]" "e[207]" "e[223]" "e[226]" "e[231]" "e[282]" "e[296]" "e[406]" "e[420]" "e[458]" "e[472]" "e[582]" "e[596]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.05725608766078949;
	setAttr ".re" 282;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "4137702E-423A-93CD-78CA-158B43DC5299";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[306:321]" -type "float3"  0 0 0.036705084 0 0 0.036705084
		 0 0 0.036705084 0 0 0.036705084 0 0 0.036705084 0 0 0.036705084 0 0 0.036705084 0
		 0 0.036705084 0 0 0.036705084 0 0 0.036705084 0 0 0.036705084 0 0 0.036705084 0 0
		 0.036705084 0 0 0.036705084 0 0 0.036705084 0 0 0.036705084;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "62C11F6E-4F9F-0EF1-60C7-23A069C009C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[44:45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[112]" "e[144]" "e[176]" "e[207]" "e[231]" "e[296]" "e[420]" "e[472]" "e[596]" "e[640:641]" "e[643]" "e[645]" "e[669]" "e[677]" "e[679]" "e[685]" "e[687]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.93536579608917236;
	setAttr ".dr" no;
	setAttr ".re" 640;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "AFAB628F-42CC-8A8F-2365-67AC959695B5";
	setAttr ".ics" -type "componentList" 3 "f[320]" "f[339:340]" "f[342:345]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.013080053 1.3753283 -0.30151445 ;
	setAttr ".rs" 63983;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4101896658539772 0.56959250106312576 -1.5499153733253479 ;
	setAttr ".cbx" -type "double3" 0.4363497719168663 2.1810640348384553 0.94688647985458374 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FF7AFDC5-4CA7-E4B3-62A8-2C8F262552B3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 2651\n            -height 1422\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n"
		+ "            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n"
		+ "            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2651\\n    -height 1422\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2651\\n    -height 1422\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "93F02396-42D5-172F-F9A9-1C96E51245EA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "2CDC3021-4276-1021-D1BE-BDBCB8760E59";
	setAttr ".ics" -type "componentList" 4 "f[148]" "f[236]" "f[333]" "f[335]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.47693586 2.7526288 1.3931305 ;
	setAttr ".rs" 50875;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4101896658539772 2.3138551963756258 1.3716505765914917 ;
	setAttr ".cbx" -type "double3" 1.3640613853931427 3.1914024604747468 1.4146105349063873 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "213A7F9A-4634-70D8-58AB-1988F6DC53E2";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[374:391]" -type "float3"  0 0 0.0052699698 0 0 0.0052699698
		 0 0 0.0052699698 0 0 0.0052699698 0 0 0.0052699698 0 0 0.0052699698 0 0 0.0052699698
		 0 0 0.0052699698 0 0 0.0052699698 0 0 0.0052699698 0 0 0.0052699698 0 0 0.0052699698
		 0 0 0.0052699698 0 0 0.0052699698 0 0 0.0052699698 0 0 0.0052699698 0 0 0.0052699698
		 0 0 0.0052699698;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "B5ECD3E1-4D92-0F67-B98A-75AFA88F2435";
	setAttr ".ics" -type "componentList" 11 "f[87:88]" "f[147]" "f[169:170]" "f[209:211]" "f[235]" "f[237]" "f[288:290]" "f[332]" "f[334]" "f[336]" "f[358:362]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.46439862 2.7548819 1.3930203 ;
	setAttr ".rs" 48567;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.46868592500686646 2.261715198893326 1.3688775300979614 ;
	setAttr ".cbx" -type "double3" 1.3974831998348236 3.2480485691020662 1.4171630144119263 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "6A4FBBE6-48BC-D4A7-C703-1FB7259EF91D";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[392:407]" -type "float3"  0 0 -0.026981108 0 0 -0.026981108
		 0 0 -0.026981108 0 0 -0.026981108 0 0 -0.026981108 0 0 -0.026981108 0 0 -0.026981108
		 0 0 -0.026981108 0 0 -0.026981108 0 0 -0.026981108 0 0 -0.026981108 0 0 -0.026981108
		 0 0 -0.026981108 0 0 -0.026981108 0 0 -0.026981108 0 0 -0.026981108;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "FEFBBE08-4F92-B7DF-D6BF-74B8FEB1C646";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[8:9]" "e[43]" "e[59]" "e[75]" "e[91]" "e[123]" "e[155]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]" "e[181]" "e[244]" "e[260]" "e[318]" "e[334]" "e[358]" "e[374]" "e[500]" "e[516]" "e[633]" "e[649]" "e[676]" "e[692]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.19122567772865295;
	setAttr ".re" 75;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "EF153D75-4E0B-6F7E-8705-F494F797EF12";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[408:443]" -type "float3"  0 0 0.012362191 0 0 0.012362191
		 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0
		 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0
		 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191
		 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0
		 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0
		 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191 0 0 0.012362191
		 0 0 0.012362191 0 0 0.012362191;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "CC38A9F3-404E-76E8-B6FD-148CD0540EEC";
	setAttr ".ics" -type "componentList" 11 "f[2]" "f[21]" "f[29]" "f[37]" "f[45]" "f[122]" "f[160]" "f[180]" "f[254]" "f[323]" "f[349]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.7926221 -1.3229417 ;
	setAttr ".rs" 34617;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5 2.7316483212897951 -1.3277981579303741 ;
	setAttr ".cbx" -type "double3" 2.5 2.8535957588145906 -1.318085253238678 ;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "249AAFFD-403E-95B9-7925-A79EBB8D7875";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[930:931]" "e[933]" "e[935]" "e[938:939]" "e[941]" "e[943]" "e[946:947]" "e[951:952]" "e[954]" "e[956]" "e[959]" "e[961]" "e[964:965]" "e[967]" "e[969]" "e[974:975]" "e[981:982]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.78371769189834595;
	setAttr ".dr" no;
	setAttr ".re" 933;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "87CCE722-436D-70E5-01FF-BE969DAF0791";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[472:495]" -type "float3"  0 0 -0.12367208 0 0 -0.12367208
		 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0
		 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0
		 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208
		 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0 0 -0.12367208 0
		 0 -0.12367208;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "355DC7B3-4A0D-7F4A-356A-DFA3A6D2EC14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[98]" "e[106]" "e[130]" "e[138]" "e[162]" "e[170]" "e[193]" "e[201]" "e[280]" "e[288]" "e[402]" "e[410]" "e[452]" "e[460]" "e[566]" "e[574]" "e[888]" "e[896]" "e[932]" "e[936]" "e[1032]" "e[1035]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.95328301191329956;
	setAttr ".dr" no;
	setAttr ".re" 1032;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "E80AD0CF-4A7F-BFDD-0714-FA9B4DBC10AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[73:74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86]" "e[90]" "e[114]" "e[122]" "e[146]" "e[154]" "e[178]" "e[186]" "e[207]" "e[296]" "e[304]" "e[422]" "e[430]" "e[470]" "e[478]" "e[546]" "e[554]" "e[916]" "e[924]" "e[960]" "e[963]" "e[1008]" "e[1012]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".wt" 0.19062314927577972;
	setAttr ".re" 1012;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "54F3BB37-4281-4500-3501-DEB2675A6C68";
	setAttr ".ics" -type "componentList" 2 "f[503]" "f[545]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 3 0 0 0 0 3 0 0 2.0695919646213228 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.5128565 -2.0770717 ;
	setAttr ".rs" 37580;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5 2.4878461612651521 -2.135576605796814 ;
	setAttr ".cbx" -type "double3" 2.5 2.5378670348117525 -2.0185666680335999 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "4A5A084F-4014-3B1C-B819-EE86F704CEC6";
	setAttr ".uopa" yes;
	setAttr -s 84 ".tk";
	setAttr ".tk[4]" -type "float3" 0 0.030337565 -0.019751517 ;
	setAttr ".tk[5]" -type "float3" 0 0.030337565 -0.019751517 ;
	setAttr ".tk[23]" -type "float3" 0 0.030337572 -0.019751521 ;
	setAttr ".tk[31]" -type "float3" 0 0.030337565 -0.019751517 ;
	setAttr ".tk[39]" -type "float3" 0 0.030337572 -0.019751521 ;
	setAttr ".tk[47]" -type "float3" 0 0.030337572 -0.019751521 ;
	setAttr ".tk[125]" -type "float3" 0 0.030337572 -0.019751521 ;
	setAttr ".tk[163]" -type "float3" 0 0.030337572 -0.019751521 ;
	setAttr ".tk[183]" -type "float3" 0 0.030337572 -0.019751521 ;
	setAttr ".tk[257]" -type "float3" 0 0.030337572 -0.019751521 ;
	setAttr ".tk[326]" -type "float3" 0 0.030337572 -0.019751521 ;
	setAttr ".tk[352]" -type "float3" 0 0.030337565 -0.019751517 ;
	setAttr ".tk[444]" -type "float3" 0 0.032336988 -0.0035125876 ;
	setAttr ".tk[445]" -type "float3" 0 0.032336988 -0.0035125876 ;
	setAttr ".tk[446]" -type "float3" 0 0.032336999 -0.0035125897 ;
	setAttr ".tk[447]" -type "float3" 0 0.032336988 -0.0035125876 ;
	setAttr ".tk[448]" -type "float3" 0 0.032336988 -0.0035125876 ;
	setAttr ".tk[449]" -type "float3" 0 0.032336988 -0.0035125876 ;
	setAttr ".tk[466]" -type "float3" 0 0.032336988 -0.0035125876 ;
	setAttr ".tk[467]" -type "float3" 0 0.032336988 -0.0035125876 ;
	setAttr ".tk[468]" -type "float3" 0 0.032336999 -0.0035125897 ;
	setAttr ".tk[469]" -type "float3" 0 0.032336999 -0.0035125897 ;
	setAttr ".tk[470]" -type "float3" 0 0.032336999 -0.0035125897 ;
	setAttr ".tk[471]" -type "float3" 0 0.032336999 -0.0035125897 ;
	setAttr ".tk[472]" -type "float3" 0 -0.083266802 -0.16182634 ;
	setAttr ".tk[473]" -type "float3" 0 -0.083266802 -0.16182634 ;
	setAttr ".tk[474]" -type "float3" 0 -0.081267357 -0.14558738 ;
	setAttr ".tk[475]" -type "float3" 0 -0.081267476 -0.14558738 ;
	setAttr ".tk[476]" -type "float3" 0 -0.083266772 -0.16182634 ;
	setAttr ".tk[477]" -type "float3" 0 -0.081267357 -0.14558738 ;
	setAttr ".tk[478]" -type "float3" 0 -0.083266772 -0.16182634 ;
	setAttr ".tk[479]" -type "float3" 0 -0.081267357 -0.14558738 ;
	setAttr ".tk[480]" -type "float3" 0 -0.081267335 -0.1455874 ;
	setAttr ".tk[481]" -type "float3" 0 -0.083266772 -0.16182634 ;
	setAttr ".tk[482]" -type "float3" 0 -0.081267335 -0.1455874 ;
	setAttr ".tk[483]" -type "float3" 0 -0.083266772 -0.16182634 ;
	setAttr ".tk[484]" -type "float3" 0 -0.083266772 -0.16182634 ;
	setAttr ".tk[485]" -type "float3" 0 -0.081267357 -0.14558738 ;
	setAttr ".tk[486]" -type "float3" 0 -0.083266802 -0.16182634 ;
	setAttr ".tk[487]" -type "float3" 0 -0.081267476 -0.14558738 ;
	setAttr ".tk[488]" -type "float3" 0 -0.081267335 -0.1455874 ;
	setAttr ".tk[489]" -type "float3" 0 -0.083266772 -0.16182634 ;
	setAttr ".tk[490]" -type "float3" 0 -0.083266772 -0.16182634 ;
	setAttr ".tk[491]" -type "float3" 0 -0.081267335 -0.1455874 ;
	setAttr ".tk[492]" -type "float3" 0 -0.081267335 -0.1455874 ;
	setAttr ".tk[493]" -type "float3" 0 -0.083266772 -0.16182634 ;
	setAttr ".tk[494]" -type "float3" 0 -0.081267357 -0.14558738 ;
	setAttr ".tk[495]" -type "float3" 0 -0.083266802 -0.16182634 ;
	setAttr ".tk[496]" -type "float3" 0 -0.064593792 -0.13333212 ;
	setAttr ".tk[497]" -type "float3" 0 -0.064593792 -0.13333212 ;
	setAttr ".tk[498]" -type "float3" 0 -0.064593762 -0.13333212 ;
	setAttr ".tk[499]" -type "float3" 0 -0.064593792 -0.13333212 ;
	setAttr ".tk[500]" -type "float3" 0 -0.064593792 -0.13333212 ;
	setAttr ".tk[501]" -type "float3" 0 -0.064593762 -0.13333212 ;
	setAttr ".tk[502]" -type "float3" 0 -0.064593762 -0.13333212 ;
	setAttr ".tk[503]" -type "float3" 0 -0.064593762 -0.13333212 ;
	setAttr ".tk[504]" -type "float3" 0 -0.064593762 -0.13333212 ;
	setAttr ".tk[505]" -type "float3" 0 -0.064593792 -0.13333212 ;
	setAttr ".tk[506]" -type "float3" 0 -0.064593852 -0.13333212 ;
	setAttr ".tk[507]" -type "float3" 0 -0.06659323 -0.14957108 ;
	setAttr ".tk[508]" -type "float3" 0 -0.066593193 -0.14957108 ;
	setAttr ".tk[509]" -type "float3" 0 -0.066593193 -0.14957108 ;
	setAttr ".tk[510]" -type "float3" 0 -0.066593193 -0.14957108 ;
	setAttr ".tk[511]" -type "float3" 0 -0.066593193 -0.14957108 ;
	setAttr ".tk[512]" -type "float3" 0 -0.066593193 -0.14957108 ;
	setAttr ".tk[513]" -type "float3" 0 -0.066593193 -0.14957108 ;
	setAttr ".tk[514]" -type "float3" 0 -0.066593193 -0.14957108 ;
	setAttr ".tk[515]" -type "float3" 0 -0.066593193 -0.14957108 ;
	setAttr ".tk[516]" -type "float3" 0 -0.06659323 -0.14957108 ;
	setAttr ".tk[517]" -type "float3" 0 -0.06659323 -0.14957108 ;
	setAttr ".tk[518]" -type "float3" 0 -0.06659323 -0.14957108 ;
	setAttr ".tk[519]" -type "float3" 0 -0.064593852 -0.13333212 ;
	setAttr ".tk[520]" -type "float3" 0 -0.06659323 -0.14957108 ;
	setAttr ".tk[521]" -type "float3" 0 0.030337565 -0.019751517 ;
	setAttr ".tk[546]" -type "float3" 0 0.032336988 -0.0035125876 ;
	setAttr ".tk[547]" -type "float3" 0 -0.064593852 -0.13333212 ;
	setAttr ".tk[548]" -type "float3" 0 -0.081267476 -0.14558738 ;
	setAttr ".tk[549]" -type "float3" 0 -0.083266802 -0.16182634 ;
	setAttr ".tk[550]" -type "float3" 0 -0.06659323 -0.14957108 ;
	setAttr ".tk[551]" -type "float3" 0 0.030337572 -0.019751521 ;
	setAttr ".tk[576]" -type "float3" 0 0.032336988 -0.0035125876 ;
	setAttr ".tk[577]" -type "float3" 0 -0.064593852 -0.13333212 ;
	setAttr ".tk[578]" -type "float3" 0 -0.081267476 -0.14558738 ;
	setAttr ".tk[579]" -type "float3" 0 -0.083266802 -0.16182634 ;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyExtrudeFace10.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCubeShape1.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCubeShape1.wm" "polySplitRing14.mp";
connectAttr "polyTweak6.out" "polySplitRing15.ip";
connectAttr "pCubeShape1.wm" "polySplitRing15.mp";
connectAttr "polySplitRing14.out" "polyTweak6.ip";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCubeShape1.wm" "polySplitRing16.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polySplitRing16.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polySplitRing17.ip";
connectAttr "pCubeShape1.wm" "polySplitRing17.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak8.ip";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "pCubeShape1.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak9.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySplitRing19.ip";
connectAttr "pCubeShape1.wm" "polySplitRing19.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak11.ip";
connectAttr "polySplitRing19.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak12.out" "polySplitRing20.ip";
connectAttr "pCubeShape1.wm" "polySplitRing20.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak12.ip";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "pCubeShape1.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "pCubeShape1.wm" "polySplitRing22.mp";
connectAttr "polyTweak13.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polySplitRing22.out" "polyTweak13.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__DoorKnob_Shape2.iog" ":initialShadingGroup.dsm" -na;
// End of building.ma
