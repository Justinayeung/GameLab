//Maya ASCII 2018 scene
//Name: cactus1.ma
//Last modified: Thu, Feb 07, 2019 09:55:17 AM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "EEAD9215-4FFF-F6C3-6FFD-769339D837A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4483537663588741 5.7704645318389289 -16.449152393713728 ;
	setAttr ".r" -type "double3" -8.7383527292791161 1979.3999999990758 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "69B7BCEF-4B00-C943-4EF7-D5956AC149D8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.170176292121971;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "EC313679-4357-C85D-1D04-7CA47EE77E03";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "61BFEE1F-41B0-9067-3117-979A3F79E479";
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
	rename -uid "B36E7E20-4BA4-8889-02C0-EABA2F3284BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "401B0BCA-464E-9356-31C4-B3A43694F56A";
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
	rename -uid "D57BEF01-4715-1AC2-A8AD-2A84D1C62F9D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8056E17C-4A21-DB79-C220-EFAFC30BC432";
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
createNode transform -n "pCylinder4";
	rename -uid "FD1FE962-4D44-8D15-0946-78B9DD30EF37";
	setAttr ".rp" -type "double3" -0.017550332582862316 3.2381540140978187 0.035465702106506153 ;
	setAttr ".sp" -type "double3" -0.017550332582862316 3.2381540140978187 0.035465702106506153 ;
createNode mesh -n "pCylinder4Shape" -p "pCylinder4";
	rename -uid "8E66651E-45C7-DB5B-359D-6F99AC05C8BE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:125]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 168 ".uvst[0].uvsp[0:167]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.38768798 0.41666666 0.38768798
		 0.45833331 0.38768798 0.49999997 0.38768798 0.54166663 0.38768798 0.58333331 0.38768798
		 0.625 0.38768798 0.375 0.46287596 0.41666666 0.46287596 0.45833331 0.46287596 0.49999997
		 0.46287596 0.54166663 0.46287596 0.58333331 0.46287596 0.625 0.46287596 0.375 0.53806394
		 0.41666666 0.53806394 0.45833331 0.53806394 0.49999997 0.53806394 0.54166663 0.53806394
		 0.58333331 0.53806394 0.625 0.53806394 0.375 0.61325192 0.41666666 0.61325192 0.45833331
		 0.61325192 0.49999997 0.61325192 0.54166663 0.61325192 0.58333331 0.61325192 0.625
		 0.61325192 0.375 0.68843991 0.41666666 0.68843991 0.45833331 0.68843991 0.49999997
		 0.68843991 0.54166663 0.68843991 0.58333331 0.68843991 0.625 0.68843991 0.57812506
		 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649
		 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.375 0.3125 0.41666666 0.3125 0.41666666
		 0.38768798 0.375 0.38768798 0.45833331 0.3125 0.45833331 0.38768798 0.49999997 0.3125
		 0.49999997 0.38768798 0.54166663 0.3125 0.54166663 0.38768798 0.58333331 0.3125 0.58333331
		 0.38768798 0.625 0.3125 0.625 0.38768798 0.41666666 0.46287596 0.375 0.46287596 0.45833331
		 0.46287596 0.49999997 0.46287596 0.54166663 0.46287596 0.58333331 0.46287596 0.625
		 0.46287596 0.41666666 0.53806394 0.375 0.53806394 0.45833331 0.53806394 0.49999997
		 0.53806394 0.54166663 0.53806394 0.58333331 0.53806394 0.625 0.53806394 0.41666666
		 0.61325192 0.375 0.61325192 0.45833331 0.61325192 0.49999997 0.61325192 0.54166663
		 0.61325192 0.58333331 0.61325192 0.625 0.61325192 0.41666666 0.68843991 0.375 0.68843991
		 0.45833331 0.68843991 0.49999997 0.68843991 0.54166663 0.68843991 0.58333331 0.68843991
		 0.625 0.68843991 0.42187503 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375
		 0.15624997 0.421875 0.29156646 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649
		 0.421875 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503 0.70843351 0.57812506
		 0.70843351 0.65625 0.84375 0.375 0.3125 0.41666666 0.3125 0.41666666 0.38768798 0.375
		 0.38768798 0.45833331 0.3125 0.45833331 0.38768798 0.49999997 0.3125 0.49999997 0.38768798
		 0.54166663 0.3125 0.54166663 0.38768798 0.58333331 0.3125 0.58333331 0.38768798 0.625
		 0.3125 0.625 0.38768798 0.41666666 0.46287596 0.375 0.46287596 0.45833331 0.46287596
		 0.49999997 0.46287596 0.54166663 0.46287596 0.58333331 0.46287596 0.625 0.46287596
		 0.41666666 0.53806394 0.375 0.53806394 0.45833331 0.53806394 0.49999997 0.53806394
		 0.54166663 0.53806394 0.58333331 0.53806394 0.625 0.53806394 0.41666666 0.61325192
		 0.375 0.61325192 0.45833331 0.61325192 0.49999997 0.61325192 0.54166663 0.61325192
		 0.58333331 0.61325192 0.625 0.61325192 0.41666666 0.68843991 0.375 0.68843991 0.45833331
		 0.68843991 0.49999997 0.68843991 0.54166663 0.68843991 0.58333331 0.68843991 0.625
		 0.68843991 0.42187503 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997
		 0.421875 0.29156646 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875
		 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351
		 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 114 ".vt[0:113]"  -0.28162807 3.10953641 -0.13462295 -0.28437394 3.28099465 -0.13462298
		 -0.28574681 3.36672378 -0.0033248994 -0.28437394 3.28099465 0.12797321 -0.28162807 3.10953641 0.12797323
		 -0.2802552 3.023807287 -0.0033248768 -0.60382342 3.11142254 -0.11823535 -0.60634363 3.26879239 -0.11823536
		 -0.60760373 3.34747744 -0.0008244128 -0.60634363 3.26879239 0.11658657 -0.60382342 3.11142254 0.1165866
		 -0.60256332 3.032737732 -0.00082439184 -1.080079556 3.084988356 -0.11280346 -1.083202004 3.27996278 -0.11280349
		 -1.084763169 3.37744999 0.021067984 -1.083202004 3.27996302 0.1549395 -1.080079556 3.084988356 0.15886809
		 -1.078518271 2.98750114 0.021068024 -1.60912967 3.23920441 -0.15167309 -1.45220506 3.33982444 -0.15167312
		 -1.3737427 3.39013457 0.0025635385 -1.45220506 3.33982444 0.15680024 -1.60912955 3.23920441 0.15680027
		 -1.68759191 3.18889451 0.0025635688 -1.8456049 3.54109907 -0.14309756 -1.67242563 3.65214157 -0.14309761
		 -1.58583605 3.70766306 0.027115449 -1.67242563 3.65214157 0.19732852 -1.8456049 3.54109907 0.19732854
		 -1.93219459 3.48557782 0.027115472 -2.020314455 3.86226773 -0.17264454 -1.84713531 3.97331047 -0.17264457
		 -1.76054549 4.028831959 -0.0024315151 -1.84713531 3.97331047 0.16778158 -2.020314455 3.86226797 0.16778159
		 -2.10690403 3.80674648 -0.0024314856 -0.23795724 3.19598699 -0.005132962 -1.99588156 4.020793915 -0.005132962
		 0.19406295 0.57009792 -0.30597052 -0.20432873 0.57009792 -0.30597058 -0.40352458 0.57009792 -0.00093238102
		 -0.20432879 0.57009792 0.30410588 0.19406284 0.57009792 0.30410594 0.39325863 0.57009792 -0.00093232887
		 0.17769536 1.41157758 -0.26789805 -0.18796115 1.41157758 -0.26789808 -0.37078944 1.41157758 0.0048768735
		 -0.18796122 1.41157758 0.27765188 0.17769527 1.41157758 0.27765194 0.36052349 1.41157758 0.0048769219
		 0.22138329 2.65664077 -0.25527841 -0.23164906 2.65664077 -0.25527847 -0.45816529 2.65664077 0.055738378
		 -0.23164918 2.65664077 0.36675531 0.22138317 2.65664077 0.37588239 0.44789934 2.65664077 0.055738468
		 0.21903987 3.75937152 -0.34558228 -0.21396144 3.75937152 -0.34558237 -0.43046209 3.75937152 0.01274793
		 -0.21396154 3.75937152 0.37107825 0.21903974 3.75937152 0.37107831 0.43554041 3.75937152 0.012747999
		 0.30271864 4.75688124 -0.32565919 -0.17513449 4.75688124 -0.32565928 -0.41406116 4.75688124 0.069788143
		 -0.1751346 4.75688124 0.46523559 0.30271846 4.75688124 0.46523562 0.54164505 4.75688124 0.069788203
		 0.24146579 5.70967579 -0.39430419 -0.23638734 5.70967579 -0.39430425 -0.47531396 5.70967579 0.0011431733
		 -0.23638746 5.70967579 0.39659065 0.24146566 5.70967579 0.39659068 0.48039222 5.70967579 0.0011432422
		 -0.005132962 0.4524157 -0.005132962 -0.005132962 6.023892403 -0.005132962 -0.045101047 3.88107729 -0.15641609
		 -0.048308969 4.081392288 -0.15641613 -0.04991293 4.18154955 -0.0030206025 -0.048308969 4.081392288 0.15037498
		 -0.045101047 3.88107729 0.15037499 -0.043497086 3.78092003 -0.0030205762 0.33095771 3.89533162 -0.13727047
		 0.32801336 4.079186916 -0.1372705 0.32654119 4.17111444 -9.9284109e-05 0.32801336 4.079186916 0.13707195
		 0.33095771 3.89533162 0.13707198 0.33242989 3.80340409 -9.9259894e-05 0.88792557 3.88227892 -0.13092439
		 0.88427764 4.11006737 -0.13092442 0.88245368 4.22396183 0.025477603 0.88427764 4.11006737 0.18187968
		 0.88792557 3.88227892 0.18646945 0.88974953 3.7683847 0.025477648 1.49976766 4.082146168 -0.1763358
		 1.3128109 4.19377041 -0.17633583 1.21933258 4.24958277 0.0038588587 1.3128109 4.19377041 0.18405358
		 1.49976754 4.082146168 0.18405361 1.59324586 4.026334286 0.0038588941 1.76453543 4.44351435 -0.166317
		 1.55821323 4.56670094 -0.16631705 1.45505202 4.62829447 0.032542855 1.55821311 4.56670094 0.23140278
		 1.76453531 4.44351435 0.2314028 1.86769652 4.38192081 0.032542881 1.95647717 4.82507849 -0.20083672
		 1.75015497 4.94826508 -0.20083675 1.64699364 5.0098586082 -0.0019768621 1.75015497 4.94826508 0.19688307
		 1.95647717 4.82507849 0.19688308 2.059638262 4.76348495 -0.0019768274 -0.099315882 3.98039222 -0.005132962
		 1.92202449 5.0092759132 -0.005132962;
	setAttr -s 234 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 18 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 24 1 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 30 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0
		 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0 12 18 0 13 19 0 14 20 0 15 21 0 16 22 0 17 23 0
		 18 24 0 19 25 0 20 26 0 21 27 0 22 28 0 23 29 0 24 30 0 25 31 0 26 32 0 27 33 0 28 34 0
		 29 35 0 36 0 1 36 1 1 36 2 1 36 3 1 36 4 1 36 5 1 30 37 1 31 37 1 32 37 1 33 37 1
		 34 37 1 35 37 1 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 43 38 0 44 45 1 45 46 1 46 47 1
		 47 48 1 48 49 1 49 44 1 50 51 1 51 52 1 52 53 1 53 54 1 54 55 1 55 50 1 56 57 1 57 58 1
		 58 59 1 59 60 1 60 61 1 61 56 1 62 63 1 63 64 1 64 65 1 65 66 1 66 67 1 67 62 1 68 69 0
		 69 70 0 70 71 0 71 72 0 72 73 0 73 68 0 38 44 0 39 45 0 40 46 0 41 47 0 42 48 0 43 49 0
		 44 50 0 45 51 0 46 52 0 47 53 0 48 54 0 49 55 0 50 56 0 51 57 0 52 58 0 53 59 0 54 60 0
		 55 61 0 56 62 0 57 63 0 58 64 0 59 65 0 60 66 0 61 67 0 62 68 0 63 69 0 64 70 0 65 71 0
		 66 72 0 67 73 0 74 38 1 74 39 1 74 40 1 74 41 1 74 42 1 74 43 1 68 75 1 69 75 1 70 75 1
		 71 75 1 72 75 1 73 75 1 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 76 0 82 83 1 83 84 1
		 84 85 1 85 86 1;
	setAttr ".ed[166:233]" 86 87 1 87 82 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1
		 93 88 1 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 94 1 100 101 1 101 102 1 102 103 1
		 103 104 1 104 105 1 105 100 1 106 107 0 107 108 0 108 109 0 109 110 0 110 111 0 111 106 0
		 76 82 0 77 83 0 78 84 0 79 85 0 80 86 0 81 87 0 82 88 0 83 89 0 84 90 0 85 91 0 86 92 0
		 87 93 0 88 94 0 89 95 0 90 96 0 91 97 0 92 98 0 93 99 0 94 100 0 95 101 0 96 102 0
		 97 103 0 98 104 0 99 105 0 100 106 0 101 107 0 102 108 0 103 109 0 104 110 0 105 111 0
		 112 76 1 112 77 1 112 78 1 112 79 1 112 80 1 112 81 1 106 113 1 107 113 1 108 113 1
		 109 113 1 110 113 1 111 113 1;
	setAttr -s 126 -ch 468 ".fc[0:125]" -type "polyFaces" 
		f 4 36 6 -38 -1
		mu 0 4 6 13 14 7
		f 4 37 7 -39 -2
		mu 0 4 7 14 15 8
		f 4 38 8 -40 -3
		mu 0 4 8 15 16 9
		f 4 39 9 -41 -4
		mu 0 4 9 16 17 10
		f 4 40 10 -42 -5
		mu 0 4 10 17 18 11
		f 4 41 11 -37 -6
		mu 0 4 11 18 19 12
		f 4 42 12 -44 -7
		mu 0 4 13 20 21 14
		f 4 43 13 -45 -8
		mu 0 4 14 21 22 15
		f 4 44 14 -46 -9
		mu 0 4 15 22 23 16
		f 4 45 15 -47 -10
		mu 0 4 16 23 24 17
		f 4 46 16 -48 -11
		mu 0 4 17 24 25 18
		f 4 47 17 -43 -12
		mu 0 4 18 25 26 19
		f 4 48 18 -50 -13
		mu 0 4 20 27 28 21
		f 4 49 19 -51 -14
		mu 0 4 21 28 29 22
		f 4 50 20 -52 -15
		mu 0 4 22 29 30 23
		f 4 51 21 -53 -16
		mu 0 4 23 30 31 24
		f 4 52 22 -54 -17
		mu 0 4 24 31 32 25
		f 4 53 23 -49 -18
		mu 0 4 25 32 33 26
		f 4 54 24 -56 -19
		mu 0 4 27 34 35 28
		f 4 55 25 -57 -20
		mu 0 4 28 35 36 29
		f 4 56 26 -58 -21
		mu 0 4 29 36 37 30
		f 4 57 27 -59 -22
		mu 0 4 30 37 38 31
		f 4 58 28 -60 -23
		mu 0 4 31 38 39 32
		f 4 59 29 -55 -24
		mu 0 4 32 39 40 33
		f 4 60 30 -62 -25
		mu 0 4 34 41 42 35
		f 4 61 31 -63 -26
		mu 0 4 35 42 43 36
		f 4 62 32 -64 -27
		mu 0 4 36 43 44 37
		f 4 63 33 -65 -28
		mu 0 4 37 44 45 38
		f 4 64 34 -66 -29
		mu 0 4 38 45 46 39
		f 4 65 35 -61 -30
		mu 0 4 39 46 47 40
		f 3 -68 66 0
		mu 0 3 1 54 0
		f 3 -69 67 1
		mu 0 3 2 54 1
		f 3 -70 68 2
		mu 0 3 3 54 2
		f 3 -71 69 3
		mu 0 3 4 54 3
		f 3 -72 70 4
		mu 0 3 5 54 4
		f 3 -67 71 5
		mu 0 3 0 54 5
		f 3 72 -74 -31
		mu 0 3 52 55 51
		f 3 73 -75 -32
		mu 0 3 51 55 50
		f 3 74 -76 -33
		mu 0 3 50 55 49
		f 3 75 -77 -34
		mu 0 3 49 55 48
		f 3 76 -78 -35
		mu 0 3 48 55 53
		f 3 77 -73 -36
		mu 0 3 53 55 52
		f 4 78 115 -85 -115
		mu 0 4 56 57 58 59
		f 4 79 116 -86 -116
		mu 0 4 57 60 61 58
		f 4 80 117 -87 -117
		mu 0 4 60 62 63 61
		f 4 81 118 -88 -118
		mu 0 4 62 64 65 63
		f 4 82 119 -89 -119
		mu 0 4 64 66 67 65
		f 4 83 114 -90 -120
		mu 0 4 66 68 69 67
		f 4 84 121 -91 -121
		mu 0 4 59 58 70 71
		f 4 85 122 -92 -122
		mu 0 4 58 61 72 70
		f 4 86 123 -93 -123
		mu 0 4 61 63 73 72
		f 4 87 124 -94 -124
		mu 0 4 63 65 74 73
		f 4 88 125 -95 -125
		mu 0 4 65 67 75 74
		f 4 89 120 -96 -126
		mu 0 4 67 69 76 75
		f 4 90 127 -97 -127
		mu 0 4 71 70 77 78
		f 4 91 128 -98 -128
		mu 0 4 70 72 79 77
		f 4 92 129 -99 -129
		mu 0 4 72 73 80 79
		f 4 93 130 -100 -130
		mu 0 4 73 74 81 80
		f 4 94 131 -101 -131
		mu 0 4 74 75 82 81
		f 4 95 126 -102 -132
		mu 0 4 75 76 83 82
		f 4 96 133 -103 -133
		mu 0 4 78 77 84 85
		f 4 97 134 -104 -134
		mu 0 4 77 79 86 84
		f 4 98 135 -105 -135
		mu 0 4 79 80 87 86
		f 4 99 136 -106 -136
		mu 0 4 80 81 88 87
		f 4 100 137 -107 -137
		mu 0 4 81 82 89 88
		f 4 101 132 -108 -138
		mu 0 4 82 83 90 89
		f 4 102 139 -109 -139
		mu 0 4 85 84 91 92
		f 4 103 140 -110 -140
		mu 0 4 84 86 93 91
		f 4 104 141 -111 -141
		mu 0 4 86 87 94 93
		f 4 105 142 -112 -142
		mu 0 4 87 88 95 94
		f 4 106 143 -113 -143
		mu 0 4 88 89 96 95
		f 4 107 138 -114 -144
		mu 0 4 89 90 97 96
		f 3 -79 -145 145
		mu 0 3 98 99 100
		f 3 -80 -146 146
		mu 0 3 101 98 100
		f 3 -81 -147 147
		mu 0 3 102 101 100
		f 3 -82 -148 148
		mu 0 3 103 102 100
		f 3 -83 -149 149
		mu 0 3 104 103 100
		f 3 -84 -150 144
		mu 0 3 99 104 100
		f 3 108 151 -151
		mu 0 3 105 106 107
		f 3 109 152 -152
		mu 0 3 106 108 107
		f 3 110 153 -153
		mu 0 3 108 109 107
		f 3 111 154 -154
		mu 0 3 109 110 107
		f 3 112 155 -155
		mu 0 3 110 111 107
		f 3 113 150 -156
		mu 0 3 111 105 107
		f 4 156 193 -163 -193
		mu 0 4 112 113 114 115
		f 4 157 194 -164 -194
		mu 0 4 113 116 117 114
		f 4 158 195 -165 -195
		mu 0 4 116 118 119 117
		f 4 159 196 -166 -196
		mu 0 4 118 120 121 119
		f 4 160 197 -167 -197
		mu 0 4 120 122 123 121
		f 4 161 192 -168 -198
		mu 0 4 122 124 125 123
		f 4 162 199 -169 -199
		mu 0 4 115 114 126 127
		f 4 163 200 -170 -200
		mu 0 4 114 117 128 126
		f 4 164 201 -171 -201
		mu 0 4 117 119 129 128
		f 4 165 202 -172 -202
		mu 0 4 119 121 130 129
		f 4 166 203 -173 -203
		mu 0 4 121 123 131 130
		f 4 167 198 -174 -204
		mu 0 4 123 125 132 131
		f 4 168 205 -175 -205
		mu 0 4 127 126 133 134
		f 4 169 206 -176 -206
		mu 0 4 126 128 135 133
		f 4 170 207 -177 -207
		mu 0 4 128 129 136 135
		f 4 171 208 -178 -208
		mu 0 4 129 130 137 136
		f 4 172 209 -179 -209
		mu 0 4 130 131 138 137
		f 4 173 204 -180 -210
		mu 0 4 131 132 139 138
		f 4 174 211 -181 -211
		mu 0 4 134 133 140 141
		f 4 175 212 -182 -212
		mu 0 4 133 135 142 140
		f 4 176 213 -183 -213
		mu 0 4 135 136 143 142
		f 4 177 214 -184 -214
		mu 0 4 136 137 144 143
		f 4 178 215 -185 -215
		mu 0 4 137 138 145 144
		f 4 179 210 -186 -216
		mu 0 4 138 139 146 145
		f 4 180 217 -187 -217
		mu 0 4 141 140 147 148
		f 4 181 218 -188 -218
		mu 0 4 140 142 149 147
		f 4 182 219 -189 -219
		mu 0 4 142 143 150 149
		f 4 183 220 -190 -220
		mu 0 4 143 144 151 150
		f 4 184 221 -191 -221
		mu 0 4 144 145 152 151
		f 4 185 216 -192 -222
		mu 0 4 145 146 153 152
		f 3 -157 -223 223
		mu 0 3 154 155 156
		f 3 -158 -224 224
		mu 0 3 157 154 156
		f 3 -159 -225 225
		mu 0 3 158 157 156
		f 3 -160 -226 226
		mu 0 3 159 158 156
		f 3 -161 -227 227
		mu 0 3 160 159 156
		f 3 -162 -228 222
		mu 0 3 155 160 156
		f 3 186 229 -229
		mu 0 3 161 162 163
		f 3 187 230 -230
		mu 0 3 162 164 163
		f 3 188 231 -231
		mu 0 3 164 165 163
		f 3 189 232 -232
		mu 0 3 165 166 163
		f 3 190 233 -233
		mu 0 3 166 167 163
		f 3 191 228 -234
		mu 0 3 167 161 163;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5A327BD7-43A2-2239-FCF9-F28584DBB60D";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F0FDB749-496D-4B77-91B4-588C7816DCC5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B65BB429-4795-9EA0-8F34-438C8C214E2D";
createNode displayLayerManager -n "layerManager";
	rename -uid "2C468849-4A58-9E47-91C3-C0BD065A4A46";
createNode displayLayer -n "defaultLayer";
	rename -uid "31920377-4F10-EF74-8FE6-F5820D34D188";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EAFDFBC1-42A6-795D-DA1E-568070CA26F3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F1DB53CB-4F51-F72D-A8BC-DA93670ED7E4";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0DBF10A5-4127-FC0C-887C-FA9BAB26FAB0";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2651\n            -height 1422\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2651\\n    -height 1422\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2651\\n    -height 1422\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "ACEDBF5A-44E0-0012-F0E5-42A93D0EEF28";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId1";
	rename -uid "77D0403C-44D3-1000-BF51-18A0503EB4CD";
	setAttr ".ihi" 0;
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
connectAttr "groupId1.id" "pCylinder4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder4Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinder4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of cactus1.ma
