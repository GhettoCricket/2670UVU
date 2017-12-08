//Maya ASCII 2017ff05 scene
//Name: Bridge.ma
//Last modified: Fri, Dec 08, 2017 09:13:16 AM
//Codeset: 1252
requires maya "2017ff05";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "E6F3154C-4298-665E-0044-4D8B5417FF38";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.430923625011781 7.5436160704594801 27.580234676007429 ;
	setAttr ".r" -type "double3" -17.738352729568923 -384.19999999979422 -4.3587388122816991e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "79207CC9-434D-865C-7C93-BE9AD39755C8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 35.143826351233542;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "89033FC9-447E-0DAB-918F-A29F8F069487";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1C2B463B-47F0-D19A-0AF4-D8B409B0FF8A";
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
	rename -uid "6CCAD049-4D89-45B3-739D-328E82093D0A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FBDACE9B-4CC9-21EE-474C-E6B98BEE9E25";
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
	rename -uid "5FF2ABA2-46D6-407F-7302-FF81F2514E0C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2B53C304-4028-F78F-3C2B-2897547E86CE";
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
	rename -uid "B35215D6-4EE3-FC52-D00C-5684980CF0E7";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "738A5772-4E77-042C-5F94-38B8290E0916";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dmb" yes;
	setAttr ".bw" 3;
createNode mesh -n "polySurfaceShape1" -p "pCube1";
	rename -uid "40A044A4-4285-9519-C876-AABB7ECA5020";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 158 ".uvst[0].uvsp[0:157]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.41666666 0.79166669 0.25 0.20833334 0.25 0.375
		 0.41666666 0.20833334 0 0.375 0.83333337 0.625 0.83333337 0.79166669 0 0.625 0.33333331
		 0.70833337 0.25 0.29166669 0.25 0.375 0.33333331 0.29166669 0 0.375 0.91666669 0.625
		 0.91666669 0.70833337 0 0.375 0.25 0.625 0.25 0.625 0.33333331 0.375 0.33333331 0.375
		 0.41666666 0.625 0.41666666 0.625 0.5 0.375 0.5 0.54166663 0.25 0.54166663 0.33333331
		 0.54166663 0.33333331 0.54166663 0.41666666 0.54166663 0.41666666 0.54166663 0.5
		 0.54166663 0.5 0.54166663 0.75 0.54166663 0.83333337 0.54166663 0.91666675 0.54166663
		 0 0.54166663 1 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331 0.45833331 0.33333331
		 0.45833331 0.41666666 0.45833331 0.41666666 0.45833331 0.5 0.45833331 0.5 0.45833331
		 0.75 0.45833331 0.83333337 0.45833331 0.91666675 0.45833331 0 0.45833331 1 0.45833331
		 0.25 0.56944442 0.33333331 0.56944442 0.25 0.56944442 0.25 0.56944442 0 0.56944442
		 1 0.56944442 0.91666675 0.56944442 0.83333337 0.56944442 0.75 0.56944442 0.5 0.56944442
		 0.5 0.56944442 0.41666666 0.56944442 0.41666666 0.56944442 0.33333331 0.59722221
		 0.33333331 0.59722221 0.25 0.59722221 0.25 0.59722221 0 0.59722221 1 0.59722221 0.91666675
		 0.59722221 0.83333337 0.59722221 0.75 0.59722221 0.5 0.59722221 0.5 0.59722221 0.41666666
		 0.59722221 0.41666666 0.59722221 0.33333331 0.51388884 0.25 0.51388884 0.33333331
		 0.51388884 0.33333331 0.51388884 0.41666666 0.51388884 0.41666666 0.51388884 0.5
		 0.51388884 0.5 0.51388884 0.75 0.51388884 0.83333337 0.51388884 0.91666675 0.51388884
		 0 0.51388884 1 0.51388884 0.25 0.48611107 0.25 0.48611107 0.33333331 0.48611107 0.33333331
		 0.48611107 0.41666666 0.48611107 0.41666666 0.48611107 0.5 0.48611107 0.5 0.48611107
		 0.75 0.48611107 0.83333337 0.48611107 0.91666675 0.48611107 0 0.48611107 1 0.48611107
		 0.25 0.43055552 0.25 0.43055552 0.33333331 0.43055552 0.33333331 0.43055552 0.41666666
		 0.43055552 0.41666666 0.43055552 0.5 0.43055552 0.5 0.43055552 0.75 0.43055552 0.83333337
		 0.43055552 0.91666675 0.43055552 0 0.43055552 1 0.43055552 0.25 0.40277776 0.25 0.40277776
		 0.33333331 0.40277776 0.33333331 0.40277776 0.41666666 0.40277776 0.41666666 0.40277776
		 0.5 0.40277776 0.5 0.40277776 0.75 0.40277776 0.83333337 0.40277776 0.91666675 0.40277776
		 0 0.40277776 1 0.40277776 0.25 0.59722221 0.83333337 0.59722221 0.75 0.625 0.75 0.625
		 0.83333337 0.59722221 0.91666675 0.625 0.91666669 0.59722221 1 0.625 1 0.40277776
		 0.91666675 0.40277776 1 0.375 1 0.375 0.91666669 0.375 0.75 0.40277776 0.75 0.40277776
		 0.83333337 0.375 0.83333337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 136 ".pt[0:135]" -type "float3"  -11.682099 0 2.1671193 11.682099 
		0 2.1671193 -11.682099 0 2.1671193 11.682099 0 2.1671193 -11.682099 0 -2.1671193 
		11.682099 0 -2.1671193 -11.682099 0 -2.1671193 11.682099 0 -2.1671193 11.682099 0 
		-1.7420154 -11.682099 0 -1.7420154 -11.682099 0 -0.9112466 11.682099 0 -0.9112466 
		11.682099 0 1.7420157 -11.682099 0 1.7420157 -11.682099 0 0.91124707 11.682099 0 
		0.91124707 -11.682099 0 2.1671193 11.682099 0 2.1671193 11.682099 0 1.7420157 -11.682099 
		0 1.7420157 11.682099 0 -1.7420154 -11.682099 0 -1.7420154 11.682099 0 -2.1671193 
		-11.682099 0 -2.1671193 3.8940327 0 2.1671193 3.8940327 0 1.7420157 3.8940327 0 1.7420157 
		3.8940327 0 -1.7420154 3.8940327 0 -1.7420154 3.8940327 0 -2.1671193 3.8940327 0 
		-2.1671193 3.8940327 0 -2.1671193 3.8940327 0 -0.9112466 3.8940327 0 0.91124707 3.8940327 
		0 2.1671193 3.8940327 0 2.1671193 -3.8940341 0 2.1671193 -3.8940341 0 1.7420157 -3.8940341 
		0 1.7420157 -3.8940341 0 -1.7420154 -3.8940341 0 -1.7420154 -3.8940341 0 -2.1671193 
		-3.8940341 0 -2.1671193 -3.8940341 0 -2.1671193 -3.8940341 0 -0.9112466 -3.8940341 
		0 0.91124707 -3.8940341 0 2.1671193 -3.8940341 0 2.1671193 6.4900551 0 1.7420157 
		6.4900551 0 2.1671193 6.4900551 0 2.1671193 6.4900551 0 2.1671193 6.4900551 0 0.91124707 
		6.4900551 0 -0.9112466 6.4900551 0 -2.1671193 6.4900551 0 -2.1671193 6.4900551 0 
		-2.1671193 6.4900551 0 -1.7420154 6.4900551 0 -1.7420154 6.4900551 0 1.7420157 9.0860777 
		0 1.7420157 9.0860777 0 2.1671193 9.0860777 0 2.1671193 8.2225323 0 2.1671193 8.2225323 
		0 0.91124707 8.2225323 0 -0.9112466 8.2225323 0 -2.1671193 9.0860777 0 -2.1671193 
		9.0860777 0 -2.1671193 9.0860777 0 -1.7420154 9.0860777 0 -1.7420154 9.0860777 0 
		1.7420157 1.29801 0 2.1671193 1.29801 0 1.7420157 1.29801 0 1.7420157 1.29801 0 -1.7420154 
		1.29801 0 -1.7420154 1.29801 0 -2.1671193 1.29801 0 -2.1671193 1.29801 0 -2.1671193 
		1.29801 0 -0.9112466 1.29801 0 0.91124707 1.29801 0 2.1671193 1.29801 0 2.1671193 
		-1.2980118 0 2.1671193 -1.2980118 0 1.7420157 -1.2980118 0 1.7420157 -1.2980118 0 
		-1.7420154 -1.2980118 0 -1.7420154 -1.2980118 0 -2.1671193 -1.2980118 0 -2.1671193 
		-1.2980118 0 -2.1671193 -1.2980118 0 -0.9112466 -1.2980118 0 0.91124707 -1.2980118 
		0 2.1671193 -1.2980118 0 2.1671193 -6.4900556 0 2.1671193 -6.4900556 0 1.7420157 
		-6.4900556 0 1.7420157 -6.4900556 0 -1.7420154 -6.4900556 0 -1.7420154 -6.4900556 
		0 -2.1671193 -6.4900556 0 -2.1671193 -6.4900556 0 -2.1671193 -6.4900556 0 -0.9112466 
		-6.4900556 0 0.91124707 -6.4900556 0 2.1671193 -6.4900556 0 2.1671193 -9.0860777 
		0 2.1671193 -9.0860777 0 1.7420157 -9.0860777 0 1.7420157 -9.0860777 0 -1.7420154 
		-9.0860777 0 -1.7420154 -9.0860777 0 -2.1671193 -9.0860777 0 -2.1671193 -8.1529884 
		-1.0368168 -2.1671193 -8.1529884 -1.0368168 -0.9112466 -8.1529884 -1.0368168 0.91124707 
		-8.1529884 -1.0368168 2.1671193 -9.0860777 0 2.1671193 9.240427 0 -0.9112466 9.240427 
		0 -2.1671193 11.836449 0 -2.1671193 11.836449 0 -0.9112466 9.240427 0 0.91124707 
		11.836449 0 0.91124707 9.240427 0 2.1671193 11.836449 0 2.1671193 -11.723863 0 0.91124707 
		-9.127841 0 0.91124707 -9.127841 0 2.1671193 -11.723863 0 2.1671193 -11.723863 0 
		-2.1671193 -9.127841 0 -2.1671193 -9.127841 0 -0.9112466 -11.723863 0 -0.9112466;
	setAttr -s 136 ".vt[0:135]"  -0.5 -0.5 0.5 0.5 -0.52916062 0.5 -0.5 0.5 0.5
		 0.5 0.47083941 0.5 -0.5 0.5 -0.5 0.5 0.47083941 -0.5 -0.5 -0.5 -0.5 0.5 -0.52916062 -0.5
		 0.5 0.47083941 -0.4019196 -0.5 0.5 -0.4019196 -0.5 -0.5 -0.4019196 0.5 -0.52916062 -0.4019196
		 0.5 0.47083941 0.40191969 -0.5 0.5 0.40191969 -0.5 -0.5 0.40191969 0.5 -0.52916062 0.40191969
		 -0.5 1.27208376 0.5 0.5 1.24292314 0.5 0.5 1.24292314 0.40191969 -0.5 1.27208376 0.40191969
		 0.5 1.24292302 -0.4019196 -0.5 1.27208364 -0.4019196 0.5 1.24292302 -0.5 -0.5 1.27208364 -0.5
		 0.16666664 0.89688236 0.5 0.16666664 0.89688236 0.40191969 0.16666664 0.1247986 0.40191969
		 0.16666664 0.1247986 -0.4019196 0.16666664 0.89688224 -0.4019196 0.16666664 0.89688224 -0.5
		 0.16666664 0.1247986 -0.5 0.16666664 -0.8752014 -0.5 0.16666664 -0.8752014 -0.4019196
		 0.16666664 -0.8752014 0.40191969 0.16666664 -0.8752014 0.5 0.16666664 0.1247986 0.5
		 -0.1666667 1.0078547001 0.5 -0.1666667 1.0078547001 0.40191969 -0.1666667 0.23577091 0.40191969
		 -0.1666667 0.23577091 -0.4019196 -0.1666667 1.0078545809 -0.4019196 -0.1666667 1.0078545809 -0.5
		 -0.1666667 0.23577091 -0.5 -0.1666667 -0.76422906 -0.5 -0.1666667 -0.76422906 -0.4019196
		 -0.1666667 -0.76422906 0.40191969 -0.1666667 -0.76422906 0.5 -0.1666667 0.23577091 0.5
		 0.27777776 1.0078547001 0.40191969 0.27777776 1.0078547001 0.5 0.27777776 0.23577091 0.5
		 0.27777776 -0.76422906 0.5 0.27777776 -0.76422906 0.40191969 0.27777776 -0.76422906 -0.4019196
		 0.27777776 -0.76422906 -0.5 0.27777776 0.23577091 -0.5 0.27777776 1.0078545809 -0.5
		 0.27777776 1.0078545809 -0.4019196 0.27777776 0.23577091 -0.4019196 0.27777776 0.23577091 0.40191969
		 0.3888889 1.14145935 0.40191969 0.3888889 1.14145935 0.5 0.3888889 0.36937562 0.5
		 0.35192871 -1.80467463 0.5 0.35192871 -1.80467463 0.40191969 0.35192871 -1.80467463 -0.4019196
		 0.35192871 -1.80467463 -0.5 0.3888889 0.36937562 -0.5 0.3888889 1.14145923 -0.5 0.3888889 1.14145923 -0.4019196
		 0.3888889 0.36937562 -0.4019196 0.3888889 0.36937562 0.40191969 0.055555508 0.85403645 0.5
		 0.055555508 0.85403645 0.40191969 0.055555508 0.081952721 0.40191969 0.055555508 0.081952721 -0.4019196
		 0.055555508 0.85403633 -0.4019196 0.055555508 0.85403633 -0.5 0.055555508 0.081952721 -0.5
		 0.055555508 -0.91804731 -0.5 0.055555508 -0.91804731 -0.4019196 0.055555508 -0.91804731 0.40191969
		 0.055555508 -0.91804731 0.5 0.055555508 0.081952721 0.5 -0.055555586 0.89688236 0.5
		 -0.055555586 0.89688236 0.40191969 -0.055555586 0.1247986 0.40191969 -0.055555586 0.1247986 -0.4019196
		 -0.055555586 0.89688224 -0.4019196 -0.055555586 0.89688224 -0.5 -0.055555586 0.1247986 -0.5
		 -0.055555586 -0.8752014 -0.5 -0.055555586 -0.8752014 -0.4019196 -0.055555586 -0.8752014 0.40191969
		 -0.055555586 -0.8752014 0.5 -0.055555586 0.1247986 0.5 -0.27777779 1.14145935 0.5
		 -0.27777779 1.14145935 0.40191969 -0.27777779 0.36937562 0.40191969 -0.27777779 0.36937562 -0.4019196
		 -0.27777779 1.14145923 -0.4019196 -0.27777779 1.14145923 -0.5 -0.27777779 0.36937562 -0.5
		 -0.27777779 -0.63062441 -0.5 -0.27777779 -0.63062441 -0.4019196 -0.27777779 -0.63062441 0.40191969
		 -0.27777779 -0.63062441 0.5 -0.27777779 0.36937562 0.5 -0.3888889 1.24292314 0.5
		 -0.3888889 1.24292314 0.40191969 -0.3888889 0.47083941 0.40191969 -0.3888889 0.47083941 -0.4019196
		 -0.3888889 1.24292302 -0.4019196 -0.3888889 1.24292302 -0.5 -0.3888889 0.47083941 -0.5
		 -0.3888889 -0.52916062 -0.5 -0.3888889 -0.52916062 -0.4019196 -0.3888889 -0.52916062 0.40191969
		 -0.3888889 -0.52916062 0.5 -0.3888889 0.47083941 0.5 0.39549512 -4.92506313 -0.4019196
		 0.39549512 -4.92506266 -0.5 0.50660622 -4.82359886 -0.5 0.50660622 -4.82359886 -0.4019196
		 0.39549512 -4.92506313 0.40191969 0.50660622 -4.82359934 0.40191969 0.39549512 -4.92506266 0.5
		 0.50660622 -4.82359886 0.5 -0.50178748 -4.54302788 0.40191969 -0.39067638 -4.57218838 0.40191969
		 -0.39067638 -4.57218838 0.5 -0.50178748 -4.54302788 0.5 -0.50178748 -4.54302788 -0.5
		 -0.39067638 -4.57218838 -0.5 -0.39067638 -4.57218838 -0.4019196 -0.50178748 -4.54302788 -0.4019196;
	setAttr -s 268 ".ed";
	setAttr ".ed[0:165]"  0 118 1 2 119 1 4 114 1 6 115 1 0 2 0 1 3 0 2 13 1
		 3 12 1 4 6 0 5 7 0 6 10 1 7 11 1 8 5 1 9 4 1 8 70 0 10 14 1 9 10 1 11 15 1 11 8 1
		 12 8 0 13 9 0 12 71 0 14 0 1 13 14 1 15 1 1 15 12 1 2 16 0 3 17 0 16 108 0 12 18 0
		 17 18 0 13 19 0 18 60 0 16 19 0 8 20 0 9 21 0 20 69 0 5 22 0 20 22 0 4 23 0 23 113 0
		 21 23 0 24 49 0 25 73 0 24 25 1 26 74 0 25 26 1 27 75 0 26 27 1 28 76 0 27 28 1 29 56 0
		 28 29 1 30 55 1 29 30 1 31 54 0 30 31 1 32 53 1 31 32 1 33 52 1 32 33 1 34 51 0 33 34 1
		 35 50 1 34 35 1 35 24 1 36 84 0 37 97 0 36 37 1 38 98 0 37 38 1 39 99 0 38 39 1 40 100 0
		 39 40 1 41 89 0 40 41 1 42 90 1 41 42 1 43 91 0 42 43 1 44 92 1 43 44 1 45 93 1 44 45 1
		 46 94 0 45 46 1 47 95 1 46 47 1 47 36 1 48 25 0 49 61 0 48 49 1 50 62 1 49 50 1 51 63 0
		 50 51 1 52 64 1 51 52 1 53 65 1 52 53 1 54 66 0 53 54 1 55 67 1 54 55 1 56 68 0 55 56 1
		 57 28 0 56 57 1 58 27 0 57 58 1 59 26 0 58 59 1 59 48 1 60 48 0 61 17 0 60 61 1 62 3 1
		 61 62 1 63 1 1 62 63 1 63 64 0 64 65 0 66 7 1 65 66 0 67 5 1 66 67 1 68 22 0 67 68 1
		 69 57 0 68 69 1 70 58 0 69 70 1 71 59 0 70 71 1 71 60 1 72 24 0 73 85 0 72 73 1 74 86 0
		 73 74 1 75 87 0 74 75 1 76 88 0 75 76 1 77 29 0 76 77 1 78 30 1 77 78 1 79 31 0 78 79 1
		 80 32 1 79 80 1 81 33 1 80 81 1 82 34 0 81 82 1 83 35 1 82 83 1 83 72 1 84 72 0 85 37 0
		 84 85 1 86 38 0 85 86 1 87 39 0;
	setAttr ".ed[166:267]" 86 87 1 88 40 0 87 88 1 89 77 0 88 89 1 90 78 1 89 90 1
		 91 79 0 90 91 1 92 80 1 91 92 1 93 81 1 92 93 1 94 82 0 93 94 1 95 83 1 94 95 1 95 84 1
		 96 36 0 97 109 0 96 97 1 98 110 0 97 98 1 99 111 0 98 99 1 100 112 0 99 100 1 101 41 0
		 100 101 1 102 42 1 101 102 1 103 43 0 102 103 1 104 44 1 103 104 1 105 45 1 104 105 1
		 106 46 0 105 106 1 107 47 1 106 107 1 107 96 1 108 96 0 109 19 0 108 109 1 110 13 0
		 109 110 1 111 9 0 110 111 1 112 21 0 111 112 1 113 101 0 112 113 1 114 102 1 113 114 1
		 115 103 0 114 115 1 116 104 1 115 116 0 117 105 1 116 117 0 118 106 0 117 118 0 119 107 1
		 118 119 1 119 108 1 65 120 1 66 121 0 120 121 0 7 122 0 121 122 0 11 123 1 122 123 0
		 120 123 1 64 124 1 124 120 0 15 125 1 123 125 0 124 125 1 63 126 0 126 124 0 1 127 0
		 125 127 0 126 127 0 14 128 1 117 129 1 128 129 1 118 130 0 129 130 0 0 131 0 131 130 0
		 128 131 0 6 132 0 115 133 0 132 133 0 116 134 1 133 134 0 10 135 1 135 134 1 132 135 0
		 134 129 0 135 128 0;
	setAttr -s 134 -ch 536 ".fc[0:133]" -type "polyFaces" 
		f 4 0 230 -2 -5
		mu 0 4 0 139 141 2
		f 4 28 210 209 -34
		mu 0 4 30 129 130 33
		f 4 2 222 -4 -9
		mu 0 4 4 135 136 6
		f 4 252 254 -257 -258
		mu 0 4 153 150 151 152
		f 4 -25 25 -8 -6
		mu 0 4 1 29 23 3
		f 4 22 4 6 23
		mu 0 4 26 0 2 24
		f 4 -216 218 -41 -42
		mu 0 4 34 133 134 37
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 260 262 -265 -266
		mu 0 4 154 155 156 157
		f 4 -19 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 -212 214 213 -21
		mu 0 4 25 131 132 17
		f 4 15 -24 20 16
		mu 0 4 18 26 24 16
		f 4 264 266 -253 -268
		mu 0 4 157 156 150 153
		f 4 -26 -18 18 -20
		mu 0 4 23 29 21 15
		f 4 1 231 -29 -27
		mu 0 4 2 141 129 30
		f 4 7 29 -31 -28
		mu 0 4 3 22 32 31
		f 4 211 31 -210 212
		mu 0 4 131 25 33 130
		f 4 -7 26 33 -32
		mu 0 4 25 2 30 33
		f 4 -214 216 215 -36
		mu 0 4 17 132 133 34
		f 4 12 37 -39 -35
		mu 0 4 14 5 36 35
		f 4 -3 39 40 220
		mu 0 4 135 4 37 134
		f 4 -14 35 41 -40
		mu 0 4 4 17 34 37
		f 4 115 30 32 116
		mu 0 4 78 31 32 77
		f 4 21 135 -33 -30
		mu 0 4 22 89 77 32
		f 4 134 -22 19 14
		mu 0 4 88 89 22 14
		f 4 132 -15 34 36
		mu 0 4 87 88 14 35
		f 4 130 -37 38 -128
		mu 0 4 86 87 35 36
		f 4 -126 128 127 -38
		mu 0 4 5 85 86 36
		f 4 126 125 9 -124
		mu 0 4 84 85 5 7
		f 4 234 236 238 -240
		mu 0 4 142 143 144 145
		f 4 241 239 243 -245
		mu 0 4 146 142 145 147
		f 4 246 244 248 -250
		mu 0 4 148 146 147 149
		f 4 120 119 5 -118
		mu 0 4 79 80 1 3
		f 4 118 117 27 -116
		mu 0 4 78 79 3 31
		f 4 66 162 161 -69
		mu 0 4 51 103 104 52
		f 4 163 -71 -162 164
		mu 0 4 105 53 52 104
		f 4 -73 -164 166 165
		mu 0 4 54 53 105 106
		f 4 -75 -166 168 167
		mu 0 4 55 54 106 107
		f 4 -77 -168 170 -76
		mu 0 4 56 55 107 108
		f 4 -78 -79 75 172
		mu 0 4 109 57 56 108
		f 4 -81 77 174 -80
		mu 0 4 58 57 109 110
		f 4 -83 79 176 -82
		mu 0 4 59 58 110 111
		f 4 -85 81 178 -84
		mu 0 4 60 59 111 112
		f 4 -87 83 180 -86
		mu 0 4 62 60 112 114
		f 4 -89 85 182 -88
		mu 0 4 63 61 113 115
		f 4 -90 87 183 -67
		mu 0 4 51 63 115 103
		f 4 42 -93 90 -45
		mu 0 4 38 65 64 39
		f 4 -66 63 -95 -43
		mu 0 4 38 50 66 65
		f 4 -65 61 -97 -64
		mu 0 4 50 48 67 66
		f 4 -63 59 -99 -62
		mu 0 4 49 47 69 68
		f 4 -61 57 -101 -60
		mu 0 4 47 46 70 69
		f 4 -59 55 -103 -58
		mu 0 4 46 45 71 70
		f 4 -57 53 -105 -56
		mu 0 4 45 44 72 71
		f 4 -107 -54 -55 51
		mu 0 4 73 72 44 43
		f 4 -53 -108 -109 -52
		mu 0 4 43 42 74 73
		f 4 -51 -110 -111 107
		mu 0 4 42 41 75 74
		f 4 -49 -112 -113 109
		mu 0 4 41 40 76 75
		f 4 -114 111 -47 -91
		mu 0 4 64 76 40 39
		f 4 91 -117 114 92
		mu 0 4 65 78 77 64
		f 4 94 93 -119 -92
		mu 0 4 65 66 79 78
		f 4 96 95 -121 -94
		mu 0 4 66 67 80 79
		f 4 98 97 -122 -96
		mu 0 4 68 69 82 81
		f 4 100 99 -123 -98
		mu 0 4 69 70 83 82
		f 4 102 101 -125 -100
		mu 0 4 70 71 84 83
		f 4 104 103 -127 -102
		mu 0 4 71 72 85 84
		f 4 -129 -104 106 105
		mu 0 4 86 85 72 73
		f 4 108 -130 -131 -106
		mu 0 4 73 74 87 86
		f 4 110 -132 -133 129
		mu 0 4 74 75 88 87
		f 4 112 -134 -135 131
		mu 0 4 75 76 89 88
		f 4 -136 133 113 -115
		mu 0 4 77 89 76 64
		f 4 136 44 43 -139
		mu 0 4 90 38 39 91
		f 4 45 -141 -44 46
		mu 0 4 40 92 91 39
		f 4 -143 -46 48 47
		mu 0 4 93 92 40 41
		f 4 -145 -48 50 49
		mu 0 4 94 93 41 42
		f 4 -147 -50 52 -146
		mu 0 4 95 94 42 43
		f 4 -148 -149 145 54
		mu 0 4 44 96 95 43
		f 4 -151 147 56 -150
		mu 0 4 97 96 44 45
		f 4 -153 149 58 -152
		mu 0 4 98 97 45 46
		f 4 -155 151 60 -154
		mu 0 4 99 98 46 47
		f 4 -157 153 62 -156
		mu 0 4 101 99 47 49
		f 4 -159 155 64 -158
		mu 0 4 102 100 48 50
		f 4 -160 157 65 -137
		mu 0 4 90 102 50 38
		f 4 160 138 137 -163
		mu 0 4 103 90 91 104
		f 4 139 -165 -138 140
		mu 0 4 92 105 104 91
		f 4 -167 -140 142 141
		mu 0 4 106 105 92 93
		f 4 -169 -142 144 143
		mu 0 4 107 106 93 94
		f 4 -171 -144 146 -170
		mu 0 4 108 107 94 95
		f 4 -172 -173 169 148
		mu 0 4 96 109 108 95
		f 4 -175 171 150 -174
		mu 0 4 110 109 96 97
		f 4 -177 173 152 -176
		mu 0 4 111 110 97 98
		f 4 -179 175 154 -178
		mu 0 4 112 111 98 99
		f 4 -181 177 156 -180
		mu 0 4 114 112 99 101
		f 4 -183 179 158 -182
		mu 0 4 115 113 100 102
		f 4 -184 181 159 -161
		mu 0 4 103 115 102 90
		f 4 184 68 67 -187
		mu 0 4 116 51 52 117
		f 4 69 -189 -68 70
		mu 0 4 53 118 117 52
		f 4 -191 -70 72 71
		mu 0 4 119 118 53 54
		f 4 -193 -72 74 73
		mu 0 4 120 119 54 55
		f 4 -195 -74 76 -194
		mu 0 4 121 120 55 56
		f 4 -196 -197 193 78
		mu 0 4 57 122 121 56
		f 4 -199 195 80 -198
		mu 0 4 123 122 57 58
		f 4 -201 197 82 -200
		mu 0 4 124 123 58 59
		f 4 -203 199 84 -202
		mu 0 4 125 124 59 60
		f 4 -205 201 86 -204
		mu 0 4 127 125 60 62
		f 4 -207 203 88 -206
		mu 0 4 128 126 61 63
		f 4 -208 205 89 -185
		mu 0 4 116 128 63 51
		f 4 208 186 185 -211
		mu 0 4 129 116 117 130
		f 4 187 -213 -186 188
		mu 0 4 118 131 130 117
		f 4 -215 -188 190 189
		mu 0 4 132 131 118 119
		f 4 -217 -190 192 191
		mu 0 4 133 132 119 120
		f 4 -219 -192 194 -218
		mu 0 4 134 133 120 121
		f 4 -220 -221 217 196
		mu 0 4 122 135 134 121
		f 4 -223 219 198 -222
		mu 0 4 136 135 122 123
		f 4 -225 221 200 -224
		mu 0 4 137 136 123 124
		f 4 -227 223 202 -226
		mu 0 4 138 137 124 125
		f 4 -229 225 204 -228
		mu 0 4 140 138 125 127
		f 4 -231 227 206 -230
		mu 0 4 141 139 126 128
		f 4 -232 229 207 -209
		mu 0 4 129 141 128 116
		f 4 124 233 -235 -233
		mu 0 4 83 84 143 142
		f 4 123 235 -237 -234
		mu 0 4 84 7 144 143
		f 4 11 237 -239 -236
		mu 0 4 7 20 145 144
		f 4 122 232 -242 -241
		mu 0 4 82 83 142 146
		f 4 17 242 -244 -238
		mu 0 4 20 28 147 145
		f 4 121 240 -247 -246
		mu 0 4 81 82 146 148
		f 4 24 247 -249 -243
		mu 0 4 28 9 149 147
		f 4 -120 245 249 -248
		mu 0 4 9 81 148 149
		f 4 228 253 -255 -252
		mu 0 4 138 140 151 150
		f 4 -1 255 256 -254
		mu 0 4 140 8 152 151
		f 4 -23 250 257 -256
		mu 0 4 8 27 153 152
		f 4 3 259 -261 -259
		mu 0 4 6 136 155 154
		f 4 224 261 -263 -260
		mu 0 4 136 137 156 155
		f 4 -11 258 265 -264
		mu 0 4 19 6 154 157
		f 4 226 251 -267 -262
		mu 0 4 137 138 150 156
		f 4 -16 263 267 -251
		mu 0 4 27 19 157 153;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C43369FA-42F2-0D06-B789-2A8912D146A0";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E772BD4F-4C59-9C5F-924E-F9BF78E2BE1F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8147356E-49FE-1683-C396-A283057A8373";
createNode displayLayerManager -n "layerManager";
	rename -uid "7ACE8618-44E8-5135-8AB2-B3B42286CFFF";
createNode displayLayer -n "defaultLayer";
	rename -uid "23A99D90-4ACD-DC12-0E4F-1C84276921F9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F0DFE6E7-4476-4ED6-2D10-07A7219FB02E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5E6E1E00-4D99-4645-EB40-0A8013111DB2";
	setAttr ".g" yes;
createNode objectSet -s -n "lightEditorRoot";
	rename -uid "011E0054-4A3B-30AD-84D8-6FB2B7DB2837";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	addAttr -ci true -sn "lightGroup" -ln "lightGroup" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visibility" -ln "visibility" -dv 1 -min 0 -max 1 -at "bool";
lockNode -l 1 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "2E9036F5-4143-9E3B-EEAD-5AA507BF5143";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:133]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.058702468872070313 -1.8264896869659424 0 ;
	setAttr ".ro" -type "double3" 0 -0.35376594123798188 0 ;
	setAttr ".ps" -type "double2" 24.627122269554032 6.1971468925476074 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "6FDF6B9D-440F-E937-DE20-A198A1093341";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[4]" "e[8]" "e[255]" "e[257:258]" "e[265]" "e[267]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "9D4A6AC9-4E11-E8BF-F9E3-2687B9E80F2C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6]" "e[13]" "e[31]" "e[33]" "e[35]" "e[41]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "C414BA00-44E8-6B48-F6A2-779BCC305B43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[14]" "e[21]" "e[45]" "e[47]" "e[69]" "e[71]" "e[109]" "e[111]" "e[131]" "e[133]" "e[139]" "e[141]" "e[163]" "e[165]" "e[187]" "e[189]" "e[211]" "e[213]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "F3B4B8C1-4F2F-FD81-2037-29B2FC6C579A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[5]" "e[9]" "e[235]" "e[247]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "BD2C7464-4967-04A9-E636-B8912650F2C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[7]" "e[12]" "e[29:30]" "e[34]" "e[38]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "01510134-44E6-885C-877D-FAB116A9EE69";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[238]" "e[243]" "e[248]";
createNode polyMapCut -n "polyMapCut7";
	rename -uid "53B1BCA8-4A13-0050-DA34-9891939F0BD1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[236]" "e[249]" "e[256]" "e[260]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "4AF47AD2-4D86-9EE8-198C-09AD8D4954F2";
	setAttr ".uopa" yes;
	setAttr -s 184 ".uvtk[0:183]" -type "float2" 0.1683806 -0.66371292 0.020965472
		 0.27360034 0.064874649 0.015285313 0.11144777 0.057076156 0.12116282 -0.049090922
		 0.074404135 -0.088704705 0.081095114 -0.074977219 0.12811385 -0.036534429 0.12382986
		 -0.35181397 0.074483424 -0.29736072 0.026722535 0.10123366 0.1114722 -0.16951168
		 0.048026659 -0.026283283 -0.028920636 0.70421958 -0.034905612 0.73837304 0.064543024
		 -0.061646998 -0.22039819 0.22149521 -0.1484223 -0.29523209 -0.26302212 0.12929237
		 -0.23254532 0.081308126 0.15186425 -0.62834924 0.13904768 0.10709637 0.14158127 -0.50654292
		 0.092123434 -0.45534343 0.085018709 -0.44202536 0.13434193 -0.49426466 0.11982698
		 -0.55975193 0.13581166 -0.68696845 0.0046915011 0.58919656 -0.027477905 0.60074407
		 -0.024982929 0.63504845 0.0047952789 0.62705171 -0.20685488 -0.34188414 -0.1804598
		 -0.22663525 -0.19697624 -0.19127107 -0.22039467 -0.33456451 0.14890653 -0.76055408
		 0.10327712 -0.35020077 -0.25041002 -0.013149917 -0.24293691 -0.025285721 -0.23001146
		 -0.47767049 -0.21722496 -0.48551667 -0.19279951 -0.057686269 -0.20020235 -0.044398129
		 -0.21206087 0.099138141 -0.17754745 -0.39610302 -0.18944615 -0.42925155 -0.18240279
		 -0.41561067 -0.17274207 -0.27045286 -0.12634271 0.15351802 -0.075657547 0.71103042
		 -0.069874585 0.67689675 -0.091266632 0.55519927 -0.074750245 0.51983511 -0.079558194
		 0.78024608 -0.042712748 0.4512383 -0.077238023 0.81484705 -0.14490277 0.85376781
		 -0.18217653 0.046842158 -0.13196903 0.32512569 -0.0076183677 -0.096248627 -0.041365147
		 -0.080222964 -0.040859252 -0.065205634 -0.0053143799 -0.081158102 0.031456113 -0.60351682
		 -0.001350224 0.06566292 0.018306017 -0.54315877 -0.030486166 -0.24087352 0.003049165
		 -0.36647248 -0.032577723 -0.34312874 0.00031018257 -0.35148305 -0.033509225 -0.3281436
		 -0.0343633 -0.18169528 -0.0028102994 -0.20483547 -0.0058680773 -0.015235543 -0.035199523
		 0.0076456666 -0.010023177 0.023343325 -0.037512124 0.045220017 -0.012801528 0.10008454
		 -0.040445089 0.11819541 -0.011538923 0.13922155 -0.040844977 0.15585536 -0.0097191334
		 0.0061815381 -0.041234434 0.022485793 -0.10772985 -0.072994173 -0.14547747 -0.075457752
		 -0.15102547 -0.060608089 -0.11061406 -0.058066607 -0.10404265 0.029569626 -0.13766843
		 0.026322722 -0.10030133 0.1627562 -0.12606138 0.1579749 -0.096004426 0.12417626 -0.12382966
		 0.1129685 -0.093262672 0.047309697 -0.12137383 0.026535749 -0.094693244 0.0081417561
		 -0.12116504 -0.018728018 -0.097235799 -0.18151295 -0.13084519 -0.21032012 -0.13738239
		 -0.35804689 -0.099930525 -0.32823884 -0.10239601 -0.34327215 -0.14243436 -0.37313879
		 -0.099262357 -0.42410979 -0.13841832 -0.40828684 -0.11552632 0.088573217 -0.15988499
		 0.085011184 -0.13445771 0.28104889 -0.13182431 0.19691354 -0.074100792 -0.071609318
		 -0.075106531 -0.056640625 -0.0077502131 -0.56289679 -0.067561448 -0.232319 -0.066878438
		 -0.33430028 -0.066292316 -0.31929648 -0.065697134 -0.17288679 -0.065164775 0.016420603
		 -0.065468937 0.054093301 -0.068394482 0.12709546 -0.070792258 0.16468447 -0.072535217
		 0.031204104 0.029835254 -0.10654807 0.034568489 -0.091400266 0.10974085 -0.71045589
		 0.051869541 -0.29944521 0.043399274 -0.40283358 0.038147956 -0.38792443 0.030684501
		 -0.24057239 0.019836694 -0.0494591 0.017607823 -0.0048169494 0.015072688 0.08113271
		 0.014768168 0.12605637 0.023665875 -0.0050579309 0.02927354 0.14557028 0.02653794
		 0.22989124 0.015989395 0.042314 0.0018098592 0.69665098 -0.00052696466 0.077677727
		 0.10331062 -0.52438778 0.028339336 0.78506058 0.099927105 0.19675958 0.12176194 -0.50282657
		 0.11042256 -0.35984069 0.10844067 -0.041145682 0.097952537 0.064485848 0.12942956
		 -0.67330313 0.19449954 -0.81262833 0.096600711 -0.64855903 0.15341789 -0.40041164
		 0.091306403 0.069579184 0.18811744 -0.79896301 0.057435095 -0.59846085 0.042010248
		 0.054759443 -0.020849705 -0.49152184 0.0080316961 -0.26392311 -0.039809197 0.081785798
		 0.070611835 -0.65515381 -0.060056061 -0.45090225 -0.076836854 0.090496302 -0.1252414
		 -0.50809801 -0.08611232 -0.52028143 -0.20043075 -0.32415307 -0.15030992 -0.26996118
		 -0.046956837 -0.5361048 -0.1063115 -0.24092507 -0.13190591 -0.33059624 -0.20905995
		 -0.15132159 -0.23721445 -0.49018246 -0.21671277 -0.37875021 -0.24900854 -0.38404116
		 -0.23028016 -0.016837299 -0.16440719 -0.49074522 -0.21907878 0.089235246 -0.22309518
		 -0.36508489 -0.15802485 -0.50441003 -0.11014432 0.76793885 -0.026196301 0.41587409
		 -0.10558176 0.69824082 -0.13513905 0.60737175 0.038167831 0.54230171 -0.0018643737
		 0.733886 -0.11047506 0.80538756 -0.1015957 0.66051644;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "EF90C9D5-4034-9D6E-A7E2-A89F09C1756E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 782\n            -height 811\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 782\\n    -height 811\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 782\\n    -height 811\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6006BBDE-41B6-2E26-BF1A-2094D4CE7E2D";
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
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV1.out" "pCubeShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyPlanarProj1.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV1.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Bridge.ma
