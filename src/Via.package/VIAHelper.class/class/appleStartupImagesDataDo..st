as yet unclassified
appleStartupImagesDataDo: aBlock
"WIDTH HEIGHT PIXEL-RATIO ORIENTATION"

"see https://developer.apple.com/design/human-interface-guidelines/layout#Specifications"

{
"<!-- iPhone Xs Max (1242px x 2688px) --> "
#(414 896 3).
"<!-- iPhone Xr (828px x 1792px) --> "
#(414 896 2).
"<!-- iPhone X, Xs (1125px x 2436px) --> "
#(375 812 3).
"<!-- iPhone 8 Plus, 7 Plus, 6s Plus, 6 Plus (1242px x 2208px) --> "
#(414 736 3).
"<!-- iPhone 8, 7, 6s, 6 (750px x 1334px) --> "
#(375 667 2).
#(430 932 3).
#(393 852 3).
#(428 926 3).
#(390 844 3).


"<!-- iPad Pro 12.9 (2048px x 2732px) --> "
#(1024 1366 2).
"<!-- iPad Pro 11 (1668px x 2388px) --> "
#(834 1194 2).
"<!-- iPad Pro 10.5 (1668px x 2224px) --> "
#(834 1112 2).
"<!-- iPad Mini, Air (1536px x 2048px) --> "
#(768 1024 2).
#(744 1133 2).
#(820 1180 2).
#(810 1080 2).

} do: [ :each |
	aBlock value: (each at: 1) value: (each at: 2) value: (each at: 3) value: 'portrait'.
	aBlock value: (each at: 2) value: (each at: 1) value: (each at: 3) value: 'landscape'.
]