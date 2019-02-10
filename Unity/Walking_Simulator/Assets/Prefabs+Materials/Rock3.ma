//Maya ASCII 2018 scene
//Name: Rock3.ma
//Last modified: Thu, Feb 07, 2019 05:27:57 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "85683B6B-4E52-C4CE-32A6-D8B9321DD2CF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.150530050346717 27.56877238399429 76.142551432442957 ;
	setAttr ".r" -type "double3" -13.538352729609072 366.99999999999295 1.0013875287448697e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6610EE8E-45F3-ACEA-6DDA-7DADDA8F84A3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 81.855430751685063;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "280E998D-41A2-45BC-A480-E8AC37C2E141";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "329CB666-4528-5F8F-4D21-49B225EFCA9F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "A56F8115-4E83-E8CE-AE01-CB9157190911";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EC261903-45A8-BFFC-0BEC-379B3E0CC513";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "1C8E5526-433D-BEF2-2D3E-C482405F7124";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3080E733-460D-151A-0A38-BBB1E23FE5E8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "812D11CE-4047-DCA7-1673-AABF3B7EE780";
	setAttr ".rp" -type "double3" 0 1.5689213271638183 0 ;
	setAttr ".sp" -type "double3" 0 1.5689213271638183 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "3C908935-4196-26D9-3436-2F99681E0DD9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52756229043006897 0.37777033448219299 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 160 ".uvst[0].uvsp[0:159]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.55678195
		 0.25 0.55678195 0.5 0.55678195 0.5 0.55678195 0.5 0.55678195 0.5 0.55678195 0.5 0.55678195
		 0.5 0.55678195 0.5 0.55678195 0.5 0.55678195 0.5 0.55678195 0.5 0.55678195 0.75 0.55678195
		 0 0.55678195 1 0.55678195 0.25 0.55678195 0.25 0.55678195 0.25 0.55678195 0.25 0.55678195
		 0.25 0.55678195 0.25 0.55678195 0.25 0.55678195 0.25 0.55678195 0.25 0.49834263 0.25
		 0.49834263 0.5 0.49834263 0.5 0.49834263 0.5 0.49834263 0.5 0.49834263 0.5 0.49834263
		 0.5 0.49834263 0.5 0.49834263 0.5 0.49834263 0.5 0.49834263 0.5 0.49834263 0.75 0.49834263
		 0 0.49834263 1 0.49834263 0.25 0.49834263 0.25 0.49834263 0.25 0.49834263 0.25 0.49834263
		 0.25 0.49834263 0.25 0.49834263 0.25 0.49834263 0.25 0.49834263 0.25 0.375 0.41554469
		 0.375 0.41554469 0.375 0.41554469 0.375 0.41554469 0.375 0.41554469 0.375 0.41554469
		 0.375 0.41554469 0.375 0.41554469 0.375 0.41554469 0.20945534 0.25 0.375 0.41554469
		 0.20945534 0 0.375 0.83445531 0.49834263 0.83445531 0.55678195 0.83445531 0.625 0.83445531
		 0.79054469 0 0.625 0.41554469 0.79054469 0.25 0.625 0.41554469 0.625 0.41554469 0.625
		 0.41554469 0.625 0.41554469 0.625 0.41554469 0.625 0.41554469 0.625 0.41554469 0.625
		 0.41554469 0.625 0.41554469 0.55678195 0.41554469 0.49834263 0.41554469 0.375 0.33999598
		 0.375 0.33999598 0.375 0.33999598 0.375 0.33999598 0.375 0.33999598 0.375 0.33999598
		 0.375 0.33999598 0.375 0.33999598 0.375 0.33999598 0.28500405 0.25 0.375 0.33999598
		 0.28500405 0 0.375 0.91000402 0.49834263 0.91000402 0.55678195 0.91000402 0.625 0.91000402
		 0.71499598 0 0.625 0.33999598 0.71499598 0.25 0.625 0.33999598 0.625 0.33999598 0.625
		 0.33999598 0.625 0.33999598 0.625 0.33999598 0.625 0.33999598 0.625 0.33999598 0.625
		 0.33999598 0.625 0.33999598 0.55678195 0.33999598 0.49834263 0.33999598 0 0.85927957
		 1 0.85927957 1 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 140 ".vt[0:139]"  -6.27407503 1.25077271 4.64849138 6.27407503 1.25077271 4.64849138
		 -6.27407503 3.20900059 4.64849138 6.27407503 3.20900059 4.64849138 -6.27407503 3.20900059 -4.64849138
		 6.27407503 3.20900059 -4.64849138 -6.27407503 1.25077271 -4.64849138 6.27407503 1.25077271 -4.64849138
		 -5.83346653 3.47142839 4.32204103 5.83346653 3.47142839 4.32204103 5.83346653 3.47142839 -4.32204103
		 -5.83346653 3.47142839 -4.32204103 -5.89023495 3.68853951 4.36410141 5.89023495 3.68853951 4.36410141
		 5.89023495 3.68853951 -4.36410141 -5.89023495 3.68853951 -4.36410141 -5.89023495 3.91199064 4.36410141
		 5.89023495 3.91199064 4.36410141 5.89023495 3.91199064 -4.36410141 -5.89023495 3.91199064 -4.36410141
		 -5.96958494 4.28931379 4.42289257 5.96958494 4.28931379 4.42289257 5.96958494 4.28931379 -4.42289257
		 -5.96958494 4.28931379 -4.42289257 -5.89045811 4.63765574 4.36426735 5.89045811 4.63765574 4.36426735
		 5.89045811 4.63765574 -4.36426735 -5.89045811 4.63765574 -4.36426735 -5.89045811 4.84549761 4.36426735
		 5.89045811 4.84549761 4.36426735 5.89045811 4.84549761 -4.36426735 -5.89045811 4.84549761 -4.36426735
		 -5.73293018 5.20409775 4.24755478 5.73293018 5.20409775 4.24755478 5.73293018 5.20409775 -4.24755478
		 -5.73293018 5.20409775 -4.24755478 -5.22082996 5.20409775 3.86813855 5.22082996 5.20409775 3.86813855
		 5.22082996 5.20409775 -3.86813855 -5.22082996 5.20409775 -3.86813855 -5.22082996 6.083977699 3.86813855
		 5.22082996 6.083977699 3.86813855 5.22082996 6.083977699 -3.86813855 -5.22082996 6.083977699 -3.86813855
		 2.37159133 6.083977699 6.86758184 2.37159133 6.083977699 -6.86758184 2.37159133 5.20409775 -6.86758184
		 2.60421562 5.20409775 -7.54120779 2.67577362 4.84549761 -7.74842215 2.67577362 4.63765574 -7.74842215
		 2.71171713 4.28931379 -7.85250616 2.67567229 3.91199064 -7.74812746 2.67567229 3.68853951 -7.74812746
		 2.64988494 3.47142839 -7.6734519 2.85003376 3.20900059 -8.25303841 2.85003376 1.25077271 -8.25303841
		 2.85003376 1.25077271 8.25303841 2.85003376 3.20900059 8.25303841 2.64988494 3.47142839 7.6734519
		 2.67567229 3.68853951 7.74812746 2.67567229 3.91199064 7.74812746 2.71171713 4.28931379 7.85250616
		 2.67577362 4.63765574 7.74842215 2.67577362 4.84549761 7.74842215 2.60421562 5.20409775 7.54120779
		 2.37159133 5.20409775 6.86758184 -0.06922327 6.083977699 6.86758184 -0.06922327 6.083977699 -6.86758184
		 -0.06922327 5.20409775 -6.86758184 -0.076013289 5.20409775 -7.54120779 -0.07810197 4.84549761 -7.74842215
		 -0.07810197 4.63765574 -7.74842215 -0.079151176 4.28931379 -7.85250616 -0.078099139 3.91199064 -7.74812746
		 -0.078099139 3.68853951 -7.74812746 -0.077346243 3.47142839 -7.6734519 -0.083188429 3.20900059 -8.25303841
		 -0.083188429 1.25077271 -8.25303841 -0.083188429 1.25077271 8.25303841 -0.083188429 3.20900059 8.25303841
		 -0.077346243 3.47142839 7.6734519 -0.078099139 3.68853951 7.74812746 -0.078099139 3.91199064 7.74812746
		 -0.079151176 4.28931379 7.85250616 -0.07810197 4.63765574 7.74842215 -0.07810197 4.84549761 7.74842215
		 -0.076013289 5.20409775 7.54120779 -0.06922327 5.20409775 6.86758184 -13.94534111 6.083977699 -1.25465989
		 -13.94534111 5.20409775 -1.25465989 -15.31321239 5.20409775 -1.3777262 -15.7339859 4.84549809 -1.41558301
		 -15.7339859 4.63765526 -1.41558301 -15.94534016 4.28931427 -1.43459785 -15.73338604 3.91199064 -1.41552901
		 -15.73338604 3.68853951 -1.41552901 -15.58175755 3.47142744 -1.40188622 -16.75866318 3.20900059 -1.50777221
		 -16.75866318 1.25077438 -1.50777221 -0.22220437 1.25077438 -2.67693377 7.61271667 1.25077438 -2.67693377
		 16.75866318 1.25077438 -1.50777221 16.75866318 3.20900059 -1.50777221 15.58175755 3.47142744 -1.40188622
		 15.73338604 3.68853951 -1.41552901 15.73338604 3.91199064 -1.41552901 15.94534016 4.28931427 -1.43459785
		 15.7339859 4.63765526 -1.41558301 15.7339859 4.84549809 -1.41558301 15.31321239 5.20409775 -1.3777262
		 13.94534111 5.20409775 -1.25465989 13.94534111 6.083977699 -1.25465989 6.33475018 6.083977699 -2.22755241
		 -0.18490204 6.083977699 -2.22755241 -13.94534111 6.083977699 1.083203435 -13.94534111 5.20409775 1.083203435
		 -15.31321239 5.20409775 1.18945313 -15.7339859 4.84549809 1.2221359 -15.7339859 4.63765526 1.2221359
		 -15.94534016 4.28931427 1.23855317 -15.73338604 3.91199064 1.22208953 -15.73338604 3.68853951 1.22208953
		 -15.58175755 3.47142744 1.21031117 -16.75866318 3.20900059 1.30172813 -16.75866318 1.25077438 1.30172813
		 -0.22220437 1.25077438 2.31111789 7.61271667 1.25077438 2.31111789 16.75866318 1.25077438 1.30172813
		 16.75866318 3.20900059 1.30172813 15.58175755 3.47142744 1.21031117 15.73338604 3.68853951 1.22208953
		 15.73338604 3.91199064 1.22208953 15.94534016 4.28931427 1.23855317 15.7339859 4.63765526 1.2221359
		 15.7339859 4.84549809 1.2221359 15.31321239 5.20409775 1.18945313 13.94534111 5.20409775 1.083203435
		 13.94534111 6.083977699 1.083203435 6.33475018 6.083977699 1.9231447 -0.18490204 6.083977699 1.9231447;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 78 0 2 79 0 4 76 0 6 77 0 0 2 0 1 3 0 2 123 0 3 128 0
		 4 6 0 5 7 0 6 98 0 7 101 0 2 8 0 3 9 0 8 80 1 5 10 0 9 129 1 4 11 0 11 75 1 8 122 1
		 8 12 0 9 13 0 12 81 1 10 14 0 13 130 1 11 15 0 15 74 1 12 121 1 12 16 0 13 17 0 16 82 1
		 14 18 0 17 131 1 15 19 0 19 73 1 16 120 1 16 20 0 17 21 0 20 83 1 18 22 0 21 132 1
		 19 23 0 23 72 1 20 119 1 20 24 0 21 25 0 24 84 1 22 26 0 25 133 1 23 27 0 27 71 1
		 24 118 1 24 28 0 25 29 0 28 85 1 26 30 0 29 134 1 27 31 0 31 70 1 28 117 1 28 32 0
		 29 33 0 32 86 0 30 34 0 33 135 0 31 35 0 35 69 0 32 116 0 32 36 0 33 37 0 36 87 0
		 34 38 0 37 136 0 35 39 0 39 68 0 36 115 0 36 40 0 37 41 0 40 66 0 38 42 0 41 137 0
		 39 43 0 43 67 0 40 114 0 44 41 0 45 42 0 44 138 1 46 38 0 45 46 1 47 34 0 46 47 1
		 48 30 1 47 48 1 49 26 1 48 49 1 50 22 1 49 50 1 51 18 1 50 51 1 52 14 1 51 52 1 53 10 1
		 52 53 1 54 5 0 53 54 1 55 7 0 54 55 1 56 1 0 55 100 1 57 3 0 56 57 1 58 9 1 57 58 1
		 59 13 1 58 59 1 60 17 1 59 60 1 61 21 1 60 61 1 62 25 1 61 62 1 63 29 1 62 63 1 64 33 0
		 63 64 1 65 37 0 64 65 1 65 44 1 66 44 0 67 45 0 66 139 1 68 46 0 67 68 1 69 47 0
		 68 69 1 70 48 1 69 70 1 71 49 1 70 71 1 72 50 1 71 72 1 73 51 1 72 73 1 74 52 1 73 74 1
		 75 53 1 74 75 1 76 54 0 75 76 1 77 55 0 76 77 1 78 56 0 77 99 1 79 57 0 78 79 1 80 58 1
		 79 80 1 81 59 1 80 81 1 82 60 1 81 82 1 83 61 1 82 83 1 84 62 1 83 84 1 85 63 1;
	setAttr ".ed[166:275]" 84 85 1 86 64 0 85 86 1 87 65 0 86 87 1 87 66 1 88 43 0
		 89 39 0 88 89 1 90 35 0 89 90 1 91 31 1 90 91 1 92 27 1 91 92 1 93 23 1 92 93 1 94 19 1
		 93 94 1 95 15 1 94 95 1 96 11 1 95 96 1 97 4 0 96 97 1 98 124 0 97 98 1 99 125 1
		 98 99 1 100 126 1 99 100 1 101 127 0 100 101 1 102 5 0 101 102 1 103 10 1 102 103 1
		 104 14 1 103 104 1 105 18 1 104 105 1 106 22 1 105 106 1 107 26 1 106 107 1 108 30 1
		 107 108 1 109 34 0 108 109 1 110 38 0 109 110 1 111 42 0 110 111 1 112 45 1 111 112 1
		 113 67 1 112 113 0 113 88 1 114 88 0 115 89 0 114 115 1 116 90 0 115 116 1 117 91 1
		 116 117 1 118 92 1 117 118 1 119 93 1 118 119 1 120 94 1 119 120 1 121 95 1 120 121 1
		 122 96 1 121 122 1 123 97 0 122 123 1 124 0 0 123 124 1 125 78 1 124 125 1 126 56 1
		 125 126 1 127 1 0 126 127 1 128 102 0 127 128 1 129 103 1 128 129 1 130 104 1 129 130 1
		 131 105 1 130 131 1 132 106 1 131 132 1 133 107 1 132 133 1 134 108 1 133 134 1 135 109 0
		 134 135 1 136 110 0 135 136 1 137 111 0 136 137 1 138 112 0 137 138 1 139 113 0 138 139 0
		 139 114 1;
	setAttr -s 138 -ch 552 ".fc[0:137]" -type "polyFaces" 
		f 4 0 154 -2 -5
		mu 0 4 0 85 87 2
		f 4 78 130 275 -84
		mu 0 4 46 73 155 126
		f 4 2 150 -4 -9
		mu 0 4 4 83 84 6
		f 4 246 245 -1 -244
		mu 0 4 138 139 86 8
		f 4 -250 252 -8 -6
		mu 0 4 1 142 144 3
		f 4 243 4 6 244
		mu 0 4 137 0 2 135
		f 4 1 156 -15 -13
		mu 0 4 2 87 88 14
		f 4 7 254 -17 -14
		mu 0 4 3 143 145 15
		f 4 -3 17 18 148
		mu 0 4 83 4 17 82
		f 4 -7 12 19 242
		mu 0 4 136 2 14 134
		f 4 14 158 -23 -21
		mu 0 4 14 88 89 18
		f 4 16 256 -25 -22
		mu 0 4 15 145 146 19
		f 4 -19 25 26 146
		mu 0 4 82 17 21 81
		f 4 -20 20 27 240
		mu 0 4 134 14 18 133
		f 4 22 160 -31 -29
		mu 0 4 18 89 90 22
		f 4 24 258 -33 -30
		mu 0 4 19 146 147 23
		f 4 -27 33 34 144
		mu 0 4 81 21 25 80
		f 4 -28 28 35 238
		mu 0 4 133 18 22 132
		f 4 30 162 -39 -37
		mu 0 4 22 90 91 26
		f 4 32 260 -41 -38
		mu 0 4 23 147 148 27
		f 4 -35 41 42 142
		mu 0 4 80 25 29 79
		f 4 -36 36 43 236
		mu 0 4 132 22 26 131
		f 4 38 164 -47 -45
		mu 0 4 26 91 92 30
		f 4 40 262 -49 -46
		mu 0 4 27 148 149 31
		f 4 -43 49 50 140
		mu 0 4 79 29 33 78
		f 4 -44 44 51 234
		mu 0 4 131 26 30 130
		f 4 46 166 -55 -53
		mu 0 4 30 92 93 34
		f 4 48 264 -57 -54
		mu 0 4 31 149 150 35
		f 4 -51 57 58 138
		mu 0 4 78 33 37 77
		f 4 -52 52 59 232
		mu 0 4 130 30 34 129
		f 4 54 168 -63 -61
		mu 0 4 34 93 94 38
		f 4 56 266 -65 -62
		mu 0 4 35 150 151 39
		f 4 -59 65 66 136
		mu 0 4 77 37 41 76
		f 4 -60 60 67 230
		mu 0 4 129 34 38 128
		f 4 62 170 -71 -69
		mu 0 4 38 94 95 42
		f 4 64 268 -73 -70
		mu 0 4 39 151 152 43
		f 4 -67 73 74 134
		mu 0 4 76 41 45 75
		f 4 -68 68 75 228
		mu 0 4 128 38 42 127
		f 4 70 171 -79 -77
		mu 0 4 42 95 73 46
		f 4 72 270 -81 -78
		mu 0 4 43 152 153 47
		f 4 -75 81 82 132
		mu 0 4 75 45 49 74
		f 4 -76 76 83 226
		mu 0 4 127 42 46 126
		f 4 84 80 272 -87
		mu 0 4 50 47 153 154
		f 4 -88 -89 85 -80
		mu 0 4 44 52 51 48
		f 4 -90 -91 87 -72
		mu 0 4 40 53 52 44
		f 4 -92 -93 89 -64
		mu 0 4 36 54 53 40
		f 4 -94 -95 91 -56
		mu 0 4 32 55 54 36
		f 4 -96 -97 93 -48
		mu 0 4 28 56 55 32
		f 4 -98 -99 95 -40
		mu 0 4 24 57 56 28
		f 4 -100 -101 97 -32
		mu 0 4 20 58 57 24
		f 4 -102 -103 99 -24
		mu 0 4 16 59 58 20
		f 4 -104 -105 101 -16
		mu 0 4 5 60 59 16
		f 4 -107 103 9 -106
		mu 0 4 61 60 5 7
		f 4 -248 250 249 -108
		mu 0 4 63 140 141 9
		f 4 -111 107 5 -110
		mu 0 4 64 62 1 3
		f 4 -113 109 13 -112
		mu 0 4 65 64 3 15
		f 4 -115 111 21 -114
		mu 0 4 66 65 15 19
		f 4 -117 113 29 -116
		mu 0 4 67 66 19 23
		f 4 -119 115 37 -118
		mu 0 4 68 67 23 27
		f 4 -121 117 45 -120
		mu 0 4 69 68 27 31
		f 4 -123 119 53 -122
		mu 0 4 70 69 31 35
		f 4 -125 121 61 -124
		mu 0 4 71 70 35 39
		f 4 -127 123 69 -126
		mu 0 4 72 71 39 43
		f 4 -128 125 77 -85
		mu 0 4 50 72 43 47
		f 4 128 86 274 -131
		mu 0 4 73 50 154 155
		f 4 -132 -133 129 88
		mu 0 4 52 75 74 51
		f 4 -134 -135 131 90
		mu 0 4 53 76 75 52
		f 4 -136 -137 133 92
		mu 0 4 54 77 76 53
		f 4 -138 -139 135 94
		mu 0 4 55 78 77 54
		f 4 -140 -141 137 96
		mu 0 4 56 79 78 55
		f 4 -142 -143 139 98
		mu 0 4 57 80 79 56
		f 4 -144 -145 141 100
		mu 0 4 58 81 80 57
		f 4 -146 -147 143 102
		mu 0 4 59 82 81 58
		f 4 -148 -149 145 104
		mu 0 4 60 83 82 59
		f 4 -151 147 106 -150
		mu 0 4 84 83 60 61
		f 4 -246 248 247 -152
		mu 0 4 86 139 140 63
		f 4 -155 151 110 -154
		mu 0 4 87 85 62 64
		f 4 -157 153 112 -156
		mu 0 4 88 87 64 65
		f 4 -159 155 114 -158
		mu 0 4 89 88 65 66
		f 4 -161 157 116 -160
		mu 0 4 90 89 66 67
		f 4 -163 159 118 -162
		mu 0 4 91 90 67 68
		f 4 -165 161 120 -164
		mu 0 4 92 91 68 69
		f 4 -167 163 122 -166
		mu 0 4 93 92 69 70
		f 4 -169 165 124 -168
		mu 0 4 94 93 70 71
		f 4 -171 167 126 -170
		mu 0 4 95 94 71 72
		f 4 -172 169 127 -129
		mu 0 4 73 95 72 50
		f 4 -174 -175 172 -82
		mu 0 4 45 97 96 49
		f 4 -176 -177 173 -74
		mu 0 4 41 98 97 45
		f 4 -178 -179 175 -66
		mu 0 4 37 99 98 41
		f 4 -180 -181 177 -58
		mu 0 4 33 100 99 37
		f 4 -182 -183 179 -50
		mu 0 4 29 101 100 33
		f 4 -184 -185 181 -42
		mu 0 4 25 102 101 29
		f 4 -186 -187 183 -34
		mu 0 4 21 103 102 25
		f 4 -188 -189 185 -26
		mu 0 4 17 104 103 21
		f 4 -190 -191 187 -18
		mu 0 4 4 106 104 17
		f 4 10 -193 189 8
		mu 0 4 12 107 105 13
		f 4 3 152 -195 -11
		mu 0 4 6 84 109 108
		f 4 -197 -153 149 108
		mu 0 4 110 109 84 61
		f 4 -199 -109 105 11
		mu 0 4 111 110 61 7
		f 4 -201 -12 -10 -200
		mu 0 4 114 112 10 11
		f 4 -203 199 15 -202
		mu 0 4 115 113 5 16
		f 4 -205 201 23 -204
		mu 0 4 116 115 16 20
		f 4 -207 203 31 -206
		mu 0 4 117 116 20 24
		f 4 -209 205 39 -208
		mu 0 4 118 117 24 28
		f 4 -211 207 47 -210
		mu 0 4 119 118 28 32
		f 4 -213 209 55 -212
		mu 0 4 120 119 32 36
		f 4 -215 211 63 -214
		mu 0 4 121 120 36 40
		f 4 -217 213 71 -216
		mu 0 4 122 121 40 44
		f 4 -219 215 79 -218
		mu 0 4 123 122 44 48
		f 4 -221 217 -86 -220
		mu 0 4 124 123 48 51
		f 4 -223 219 -130 -222
		mu 0 4 125 124 51 74
		f 4 -224 221 -83 -173
		mu 0 4 96 125 74 49
		f 4 -226 -227 224 174
		mu 0 4 97 127 126 96
		f 4 -228 -229 225 176
		mu 0 4 98 128 127 97
		f 4 -230 -231 227 178
		mu 0 4 99 129 128 98
		f 4 -232 -233 229 180
		mu 0 4 100 130 129 99
		f 4 -234 -235 231 182
		mu 0 4 101 131 130 100
		f 4 -236 -237 233 184
		mu 0 4 102 132 131 101
		f 4 -238 -239 235 186
		mu 0 4 103 133 132 102
		f 4 -240 -241 237 188
		mu 0 4 104 134 133 103
		f 4 -242 -243 239 190
		mu 0 4 106 136 134 104
		f 4 191 -245 241 192
		mu 0 4 107 137 135 105
		f 4 194 193 -247 -192
		mu 0 4 108 109 139 138
		f 4 -249 -194 196 195
		mu 0 4 140 139 109 110
		f 4 -251 -196 198 197
		mu 0 4 141 140 110 111
		f 4 -253 -198 200 -252
		mu 0 4 144 142 112 114
		f 4 -255 251 202 -254
		mu 0 4 145 143 113 115
		f 4 -257 253 204 -256
		mu 0 4 146 145 115 116
		f 4 -259 255 206 -258
		mu 0 4 147 146 116 117
		f 4 -261 257 208 -260
		mu 0 4 148 147 117 118
		f 4 -263 259 210 -262
		mu 0 4 149 148 118 119
		f 4 -265 261 212 -264
		mu 0 4 150 149 119 120
		f 4 -267 263 214 -266
		mu 0 4 151 150 120 121
		f 4 -269 265 216 -268
		mu 0 4 152 151 121 122
		f 4 -271 267 218 -270
		mu 0 4 153 152 122 123
		f 4 -273 269 220 -272
		mu 0 4 154 153 123 124
		f 4 -276 273 223 -225
		mu 0 4 126 155 125 96
		f 4 222 -274 -275 271
		mu 0 4 156 157 158 159;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F4C736D8-4AA1-8DA0-C193-B9801D0569A3";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "8A855CA5-4CA9-8AEF-43DB-6EB00DB64402";
createNode displayLayer -n "defaultLayer";
	rename -uid "5EAF2CC7-40AB-EBEA-824F-AEB942C93A56";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A4B516C3-4E92-C5DF-E6AD-28A291C472B2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "457D34C7-4CE0-FFC6-160C-9F81A5CF961D";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9DB6FF4D-4359-F35F-3C95-0E97FE061E63";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2DE94752-4122-AE6B-5E65-44BFAC96B026";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "14F53E41-4021-CC1A-B920-5E9C2561B65B";
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
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2607\n            -height 1522\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2607\\n    -height 1522\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2607\\n    -height 1522\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2D88455F-4E69-2EEB-8572-D8932401D3AF";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Rock3.ma
