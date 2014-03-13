package;

import de.polygonal.core.math.random.Mersenne;
import haxe.unit.TestCase;

class TestMersenne extends TestCase
{
	public function testMersenneTwister()
	{
		//first 1000 values
		var values:Array<Float> =
		[
			1791095845, 4282876139, 3093770124, 4005303368,     491263,
			 550290313, 1298508491, 4290846341,  630311759, 1013994432,
			 396591248, 1703301249,  799981516, 1666063943, 1484172013,
			2876537340, 1704103302, 4018109721, 2314200242, 3634877716,
			1800426750, 1345499493, 2942995346, 2252917204,  878115723,
			1904615676, 3771485674,  986026652,  117628829, 2295290254,
			2879636018, 3925436996, 1792310487, 1963679703, 2399554537,
			1849836273,  602957303, 4033523166,  850839392, 3343156310,
			3439171725, 3075069929, 4158651785, 3447817223, 1346146623,
			 398576445, 2973502998, 2225448249, 3764062721, 3715233664,
			3842306364, 3561158865,  365262088, 3563119320,  167739021,
			1172740723,  729416111,  254447594, 3771593337, 2879896008,
			 422396446, 2547196999, 1808643459, 2884732358, 4114104213,
			1768615473, 2289927481,  848474627, 2971589572, 1243949848,
			1355129329,  610401323, 2948499020, 3364310042, 3584689972,
			1771840848,   78547565,  146764659, 3221845289, 2680188370,
			4247126031, 2837408832, 3213347012, 1282027545, 1204497775,
			1916133090, 3389928919,  954017671,  443352346,  315096729,
			1923688040, 2015364118, 3902387977,  413056707, 1261063143,
			3879945342, 1235985687,  513207677,  558468452, 2253996187,
			  83180453,  359158073, 2915576403, 3937889446,  908935816,
			3910346016, 1140514210, 1283895050, 2111290647, 2509932175,
			 229190383, 2430573655, 2465816345, 2636844999,  630194419,
			4108289372, 2531048010, 1120896190, 3005439278,  992203680,
			 439523032, 2291143831, 1778356919, 4079953217, 2982425969,
			2117674829, 1778886403, 2321861504,  214548472, 3287733501,
			2301657549,  194758406, 2850976308,  601149909, 2211431878,
			3403347458, 4057003596,  127995867, 2519234709, 3792995019,
			3880081671, 2322667597,  590449352, 1924060235,  598187340,
			3831694379, 3467719188, 1621712414, 1708008996, 2312516455,
			 710190855, 2801602349, 3983619012, 1551604281, 1493642992,
			2452463100, 3224713426, 2739486816, 3118137613,  542518282,
			3793770775, 2964406140, 2678651729, 2782062471, 3225273209,
			1520156824, 1498506954, 3278061020, 1159331476, 1531292064,
			3847801996, 3233201345, 1838637662, 3785334332, 4143956457,
			  50118808, 2849459538, 2139362163, 2670162785,  316934274,
			 492830188, 3379930844, 4078025319,  275167074, 1932357898,
			1526046390, 2484164448, 4045158889, 1752934226, 1631242710,
			1018023110, 3276716738, 3879985479, 3313975271, 2463934640,
			1294333494,   12327951, 3318889349, 2650617233,  656828586,
			1402929172, 2485213814, 2263697328,   38689046, 3805092325,
			3045314445, 1534461937, 2021386866, 3902128737, 3283900085,
			2677311316, 2007436298,   67951712, 1155350711, 3991902525,
			3572092472, 2967379673, 2367922581, 4283469031,  300997728,
			 740196857, 2029264851,  588993561, 3190150641, 4005467022,
			 824445069, 2992811220, 1994202740,  283468587,  989400710,
			3244689101, 2182906552, 3237873595,  895794063, 3964360216,
			 211760123, 3055975561, 2228494786,  533739719,  739929909,
			  85384517, 1702152612,  112575333,  461130488,  121575445,
			2189618472, 1057468493,  438667483, 3693791921, 1240033649,
			2314261807,  995395021, 2374352296, 4156102094, 3616495149,
			1195370327,  533320336, 1003401116, 1199084778,  393231917,
			2515816899, 2448417652, 4164382018, 1794980814, 2409606446,
			1579874688,   80089501, 3491786815, 3438691147, 1244509731,
			1000616885, 3081173469, 3466490401, 2632592002, 1665848788,
			1833563731, 3708884016, 3229269814, 3208863008, 1837441277,
			2389033628, 1839888439,  586070738, 1554367775,  257344540,
			 658583774,  521166154, 4025201800,  191348845, 3935950435,
			 461683744, 3358486024,  969414228, 2647112653, 3062264370,
			 154616399, 2403966121, 2810299200,   53927532,  557356243,
			 309127192, 1264264305, 4154420202, 1549687572, 2439972908,
			1179591951,  873137822,  317694427, 1083730830,  653424115,
			3194707731,  694146299,  839363226, 4031736043, 2496917590,
			1594007943, 4166204131,  214826037, 3637101999, 3182379886,
			1030138300, 1282821875, 2120724770,  877711460, 2662689508,
			4216612640, 3560445843, 3835496899,  673413912, 3261378259,
			  79784165, 2796541534,  300742822,  170439343, 2088836327,
			3495572357, 2604165199, 3275226687, 2443198321, 1955423319,
			1363061152, 2284177194, 4246074058,  469594818, 2489986776,
			 627205858, 1632693918, 2185230993, 2366304580,  926210880,
			3201187004, 3936095732, 2874333390, 1984929937, 1137820839,
			 568083619,  284905937, 3282392732, 1589499542,  913684262,
			2704616105,  318937546,  902690509,  409822534, 3233060505,
			 696667366,  285772016, 1530999856, 1118044850,  409343934,
			3456394540,  615309929,  830793910, 3998670080, 2746463574,
			2476410359, 2253441808, 3606248723, 3972019977, 2677019248,
			1130851036, 1393792051,  283300719, 3126786186, 3157084283,
			2245136708, 3316479383, 3164581134, 3899039423,  710413845,
			4002789550, 2950892924,   59921539, 1833138616, 1006577496,
			3129130192, 2649042862, 3248435766, 4075994063, 1707727431,
			4080975356, 3973704206, 2390807245,  874070159, 3932499353,
			  34371381, 2755505876, 3978646009, 1675070394, 1264917461,
			2087314034,  717051630, 2595493789,  103515692, 2360290341,
			1941332118, 3977918939, 3471788470, 3945930060, 1582166540,
			1695977848, 2616524091, 4137181082,  149669836,  747133895,
			1522897623,  542581159,  337240701,  580160555, 2977207756,
			2171802482,   54600486,   92448347, 1973731952, 4071501053,
			4128826181, 3552433890, 1435314593,   64506027, 2027582874,
			 756757176,  452651973, 1426202185, 2160694580,  562627161,
			3804008987, 3476736043, 2295133185, 1480632658, 1208933503,
			4037730910, 1522929632, 2499731866, 3849494356, 3774554654,
			1037187943, 3628106816,  102581398, 3888630370, 4147765044,
			1975170691, 1846698054, 2346541708, 1487297831, 3429976294,
			2478486611, 1227153135,  543425712, 2105622845, 4080404934,
			2573159181, 1346948260,   66714903, 4092378518, 2548983234,
			 937991802, 1862625756, 1068159225, 3467587050, 3710000479,
			1353966133, 1010469769, 3834927785, 3500828089, 2481877848,
			2336020845,  790317814,  821456605, 3384130292, 2529048268,
			2628653906,  206745962,  231538571,   68173929, 1804718116,
			 213507184, 2916578448, 1715475614, 3945364595, 2477783658,
			   1726676, 3725959097, 4195148579, 3376541097, 1617400145,
			1093939970, 4182368469,  353282141, 2597235876,  677556845,
			3559865646,  899765072, 2468367131, 1792645448, 2697566748,
			1493317250, 1226540771, 3005979021, 2520429993, 2995780473,
			3221318948,  320936676, 3686429864,  156636178, 3243053281,
			3390446502, 2998133055, 3867740659, 3712910894,   20028776,
			1385904345, 1134744551, 2881015920, 2007370239, 1936488805,
			1545398786, 1641118818, 1031726876, 1764421326,   99508939,
			1724341690, 2283497130, 1363153690,  559182056, 2671123349,
			2411447866, 1847897983,  720827792, 4182448092, 1808502309,
			2911132649, 2940712173,  852851176, 1176392938, 1832666891,
			  42948502, 1474660870,  944318560, 3425832590,  137250916,
			3779563863, 4015245515, 3881971619, 3359059647, 2846359931,
			2223049248, 1160535662,   70707035, 1083906737, 1283337190,
			3671758714, 2322372736, 2266517142, 3693171809, 3445255622,
			 795059876, 2458819474,  358828827, 3148823196,  190148069,
			2229137972, 1906140774, 3310921202,   82973406, 2443226489,
			 287900466, 2000208686, 3486532103, 1471837653, 2732847376,
			 292956903, 3319367325, 1623171979, 3030881725,  341991419,
			1023108090, 4221167374,  190773608,  780021278, 1207817352,
			3486906536, 3715531696, 3757931678,  314062231, 2956712386,
			2836103900, 2445959872,  804784871,  691367052, 2243203729,
			2005234426, 3882131873, 1482502666, 2040765468,  966539241,
			3637933003, 2544819077, 3602530129, 1341188741,  598203257,
			3935502378, 2320590422, 3906854836, 2006116153, 1104314680,
			 939235918,  476274519, 1893343226,  828768629, 2062779089,
			2145697674, 1431445192, 3129251632,   38279669,  894188307,
			2170951052, 1065296025, 2891145549, 3657902864,  238195972,
			1786056664,  676799350, 2648642203, 2598898610, 1003588420,
			1371055747,  437946042, 3824741900, 2215588994, 3394628428,
			2049304928,  934152032,  655719741,  859891087, 2670637412,
			2922467834, 2336505674,  670946188, 2809498514, 2191983774,
			 620818363, 4243705477, 3227787408,  621447007,  953693792,
			 207446972, 2230599083, 3861450476, 3372820767, 3072317163,
			  95908451, 1332847916, 1393126168, 1687665598, 3749173071,
			 346963477, 3628000147, 1512349517, 2312584737,    4352004,
			3722054183, 2682767484, 4079385667,  860159138, 3549391010,
			2684833834, 3668397902, 1380625106,  424099686,  203230246,
			2797330810, 3106827952, 3021582458, 3260962513, 2620964350,
			1745063685, 3434321402, 3025095910,  148482267, 2514098677,
			3308150152, 4164247848, 3142750405, 1305147909, 1115396103,
			1347569102, 1104104229,  972645225, 2715722062, 2887654945,
			1483041307, 3345445555, 3421322317, 2201865246, 1916183467,
			2642542766, 3361883145,  196113219, 4254043907, 1915982787,
			1289556790, 4157582689,  614205375, 1544299747, 3871090256,
			2379549980, 2325979813, 1766753728, 4186477989, 4149138397,
			2734195090,  872126798, 4268823911, 4264157638, 2345356252,
			2831242292, 2260982154, 3474960288,  581658414, 1967743039,
			1527742075, 3810959069,  112607890, 2293230500,  688892061,
			2479396344, 3202487335, 3940625180,  130565686, 1349249053,
			1574290615, 3118740839, 3703748954, 3458461595, 2975028156,
			2061854570, 2967573900, 2094115985,  810188871, 3613828699,
			1897964423, 2385972604, 2497855955, 1159131320, 4250951219,
			2090544032,  875770572, 1184749118, 1064004710,  968044723,
			1126024800, 2777786910, 3221965974, 3956238597, 1962694107,
			 861032543,  244510057, 3778940310, 2184060620, 2000628852,
			 910361965, 3113765910, 3429979110, 1300822418, 1277028573,
			2100270365,  118566930,  874774580, 2548772986,  380603935,
			3624267057,  711631586, 1636451795, 2160353657, 3220616925,
			3382634669, 2195335915, 3880940467, 2323370326,  942848783,
			4120739015, 3170248368, 3452985756, 1107254995,  138826523,
			2423258109, 3046795051,  568780947, 1997166159, 1598104390,
			4069691736,  355861498,  951046358, 2172077579, 1147065573,
			2982454721,  349928029, 1962705167, 1840903859, 1551663074,
			 468232022, 3504725549, 2722093427,  196758975, 3448700842,
			1665707670, 2992735341, 1969342055, 3290852818, 3159945384,
			1470829228, 3906860944, 3632904465, 1191447403, 1841547864,
			3512288486, 3539095424, 2818855152, 2690780513,   48448594,
			 615997303, 3158320071,  336669172, 2591989774,   78738084,
			2920659994,  286581664, 2508088193, 1969602480, 2463253848,
			 486799861, 1550558230,  119328546, 4117584734, 3242105365,
			4238887108, 1695869891, 1662734000, 3208076406, 3591365778,
			1943063905, 4218269323, 1933107851, 2514071929, 2053305780,
			2881631052, 2035831364,  370469037, 3449560256, 4258247769,
			1728262696, 3347927815, 3885597447, 4270764278,  159175969,
			2807576122, 3323764999,  160751778,  539625604, 3088465285,
			2656495549, 2955436150,   44514151, 2614832306, 2313386572,
			 456173997,   12962046, 1205532000, 4085346197, 3333816434,
			3888672125, 3823235164, 3418651975, 2193007324, 3931073263,
			3073942169,  625167849,  334057719,  677445473, 2642711553,
			 805871885, 3598340212, 2673599526, 2989320405, 3890422171,
			2383961766, 4251825108, 3698781345, 3054247681, 3201131518, 
			3143058847, 1136230645, 3905384561, 4293975666, 1721739558,
			2464159772, 1073100491, 2744737394,  744876899, 2103243807,
			 513064115, 3819835458, 3490135875, 3755992992,  630468426,
			3641230240, 1135149025, 2781952773, 3517961216, 2515041189,
			1333962094, 1209388872, 4219450795, 4259121516, 1145204504,
			3434518672, 2292023677, 2154511200, 1350625504, 3317069097,
			3911739544,  533778709, 1574348793, 3955741595, 1862264878,
			 192571683, 2200280382,  981850180, 4032486718, 3618451325,
			 132924960, 1312420089, 3078970413, 2080145240, 3826897254,
			2791958899,  117197738,  618229817, 2242193049, 1313393440,
			1400115560, 3809294369, 3691478518, 3808957062, 2398810305,
			2212838707, 2964506143, 1147132295, 1944990971, 3781046413,
			2698566783, 2138822019, 1245956508, 1432110735,   40151837,
			3842692674, 2477147887,  878247997, 1337642707, 3520175200,
			2221647418, 3602781138, 3935933160, 2245391866, 1831695266,
			 695517982, 1062557881, 4075825248, 1594694577,  255331836,
			4002313006, 3807486291, 4023819049, 2466789652, 3626369528,
			1627135016, 3952256888, 2752667134,  978824302,  548926898
		];
		
		var m = new Mersenne();
		m.setSeed(1);
		for (i in 0...values.length)
			assertEquals(values[i],  m.random());
		m.free();
		
		m = new Mersenne();
		m.setSeed(1);
		var a = [0x123,  0x234,  0x345,  0x456];
		m.initByArray(a);
		
		var values:Array<Float> =
		[
			1067595299,  955945823,  477289528, 4107218783, 4228976476, 
			3344332714, 3355579695,  227628506,  810200273, 2591290167, 
			2560260675, 3242736208,  646746669, 1479517882, 4245472273, 
			1143372638, 3863670494, 3221021970, 1773610557, 1138697238, 
			1421897700, 1269916527, 2859934041, 1764463362, 3874892047, 
			3965319921,   72549643, 2383988930, 2600218693, 3237492380, 
			2792901476,  725331109,  605841842,  271258942,  715137098, 
			3297999536, 1322965544, 4229579109, 1395091102, 3735697720, 
			2101727825, 3730287744, 2950434330, 1661921839, 2895579582, 
			2370511479, 1004092106, 2247096681, 2111242379, 3237345263, 
			4082424759,  219785033, 2454039889, 3709582971,  835606218, 
			2411949883, 2735205030,  756421180, 2175209704, 1873865952, 
			2762534237, 4161807854, 3351099340,  181129879, 3269891896, 
			 776029799, 2218161979, 3001745796, 1866825872, 2133627728, 
			  34862734, 1191934573, 3102311354, 2916517763, 1012402762, 
			2184831317, 4257399449, 2899497138, 3818095062, 3030756734, 
			1282161629,  420003642, 2326421477, 2741455717, 1278020671, 
			3744179621,  271777016, 2626330018, 2560563991, 3055977700, 
			4233527566, 1228397661, 3595579322, 1077915006, 2395931898, 
			1851927286, 3013683506, 1999971931, 3006888962, 1049781534, 
			1488758959, 3491776230,  104418065, 2448267297, 3075614115, 
			3872332600,  891912190, 3936547759, 2269180963, 2633455084, 
			1047636807, 2604612377, 2709305729, 1952216715,  207593580, 
			2849898034,  670771757, 2210471108,  467711165,  263046873, 
			3569667915, 1042291111, 3863517079, 1464270005, 2758321352, 
			3790799816, 2301278724, 3106281430,    7974801, 2792461636, 
			 555991332,  621766759, 1322453093,  853629228,  686962251, 
			1455120532,  957753161, 1802033300, 1021534190, 3486047311, 
			1902128914, 3701138056, 4176424663, 1795608698,  560858864, 
			3737752754, 3141170998, 1553553385, 3367807274,  711546358, 
			2475125503,  262969859,  251416325, 2980076994, 1806565895, 
			 969527843, 3529327173, 2736343040, 2987196734, 1649016367, 
			2206175811, 3048174801, 3662503553, 3138851612, 2660143804, 
			1663017612, 1816683231,  411916003, 3887461314, 2347044079, 
			1015311755, 1203592432, 2170947766, 2569420716,  813872093, 
			1105387678, 1431142475,  220570551, 4243632715, 4179591855, 
			2607469131, 3090613241,  282341803, 1734241730, 1391822177, 
			1001254810,  827927915, 1886687171, 3935097347, 2631788714, 
			3905163266,  110554195, 2447955646, 3717202975, 3304793075, 
			3739614479, 3059127468,  953919171, 2590123714, 1132511021, 
			3795593679, 2788030429,  982155079, 3472349556,  859942552, 
			2681007391, 2299624053,  647443547,  233600422,  608168955, 
			3689327453, 1849778220, 1608438222, 3968158357, 2692977776, 
			2851872572,  246750393, 3582818628, 3329652309, 4036366910, 
			1012970930,  950780808, 3959768744, 2538550045,  191422718, 
			2658142375, 3276369011, 2927737484, 1234200027, 1920815603, 
			3536074689, 1535612501, 2184142071, 3276955054,  428488088, 
			2378411984, 4059769550, 3913744741, 2732139246,   64369859, 
			3755670074,  842839565, 2819894466, 2414718973, 1010060670, 
			1839715346, 2410311136,  152774329, 3485009480, 4102101512, 
			2852724304,  879944024, 1785007662, 2748284463, 1354768064, 
			3267784736, 2269127717, 3001240761, 3179796763,  895723219, 
			 865924942, 4291570937,   89355264, 1471026971, 4114180745, 
			3201939751, 2867476999, 2460866060, 3603874571, 2238880432, 
			3308416168, 2072246611, 2755653839, 3773737248, 1709066580, 
			4282731467, 2746170170, 2832568330,  433439009, 3175778732, 
			  26248366, 2551382801,  183214346, 3893339516, 1928168445, 
			1337157619, 3429096554, 3275170900, 1782047316, 4264403756, 
			1876594403, 4289659572, 3223834894, 1728705513, 4068244734, 
			2867840287, 1147798696,  302879820, 1730407747, 1923824407, 
			1180597908, 1569786639,  198796327,  560793173, 2107345620, 
			2705990316, 3448772106, 3678374155,  758635715,  884524671, 
			 486356516, 1774865603, 3881226226, 2635213607, 1181121587, 
			1508809820, 3178988241, 1594193633, 1235154121,  326117244, 
			2304031425,  937054774, 2687415945, 3192389340, 2003740439, 
			1823766188, 2759543402,   10067710, 1533252662, 4132494984, 
			  82378136,  420615890, 3467563163,  541562091, 3535949864, 
			2277319197, 3330822853, 3215654174, 4113831979, 4204996991, 
			2162248333, 3255093522, 2219088909, 2978279037,  255818579, 
			2859348628, 3097280311, 2569721123, 1861951120, 2907080079, 
			2719467166,  998319094, 2521935127, 2404125338,  259456032, 
			2086860995, 1839848496, 1893547357, 2527997525, 1489393124, 
			2860855349,   76448234, 2264934035,  744914583, 2586791259, 
			1385380501,   66529922, 1819103258, 1899300332, 2098173828, 
			1793831094,  276463159,  360132945, 4178212058,  595015228, 
			 177071838, 2800080290, 1573557746, 1548998935,  378454223, 
			1460534296, 1116274283, 3112385063, 3709761796,  827999348, 
			3580042847, 1913901014,  614021289, 4278528023, 1905177404, 
			  45407939, 3298183234, 1184848810, 3644926330, 3923635459, 
			1627046213, 3677876759,  969772772, 1160524753, 1522441192, 
			 452369933, 1527502551,  832490847, 1003299676, 1071381111, 
			2891255476,  973747308, 4086897108, 1847554542, 3895651598, 
			2227820339, 1621250941, 2881344691, 3583565821, 3510404498, 
			 849362119,  862871471,  797858058, 2867774932, 2821282612, 
			3272403146, 3997979905,  209178708, 1805135652,    6783381, 
			2823361423,  792580494, 4263749770,  776439581, 3798193823, 
			2853444094, 2729507474, 1071873341, 1329010206, 1289336450, 
			3327680758, 2011491779,   80157208,  922428856, 1158943220, 
			1667230961, 2461022820, 2608845159,  387516115, 3345351910, 
			1495629111, 4098154157, 3156649613, 3525698599, 4134908037, 
			 446713264, 2137537399, 3617403512,  813966752, 1157943946, 
			3734692965, 1680301658, 3180398473, 3509854711, 2228114612, 
			1008102291,  486805123,  863791847, 3189125290, 1050308116, 
			3777341526, 4291726501,  844061465, 1347461791, 2826481581, 
			 745465012, 2055805750, 4260209475, 2386693097, 2980646741, 
			 447229436, 2077782664, 1232942813, 4023002732, 1399011509, 
			3140569849, 2579909222, 3794857471,  900758066, 2887199683, 
			1720257997, 3367494931, 2668921229,  955539029, 3818726432, 
			1105704962, 3889207255, 2277369307, 2746484505, 1761846513, 
			2413916784, 2685127085, 4240257943, 1166726899, 4215215715, 
			3082092067, 3960461946, 1663304043, 2087473241, 4162589986, 
			2507310778, 1579665506,  767234210,  970676017,  492207530, 
			1441679602, 1314785090, 3262202570, 3417091742, 1561989210, 
			3011406780, 1146609202, 3262321040, 1374872171, 1634688712, 
			1280458888, 2230023982,  419323804, 3262899800,   39783310, 
			1641619040, 1700368658, 2207946628, 2571300939, 2424079766, 
			 780290914, 2715195096, 3390957695,  163151474, 2309534542, 
			1860018424,  555755123,  280320104, 1604831083, 2713022383, 
			1728987441, 3639955502,  623065489, 3828630947, 4275479050, 
			3516347383, 2343951195, 2430677756,  635534992, 3868699749, 
			 808442435, 3070644069, 4282166003, 2093181383, 2023555632, 
			1568662086, 3422372620, 4134522350, 3016979543, 3259320234, 
			2888030729, 3185253876, 4258779643, 1267304371, 1022517473, 
			 815943045,  929020012, 2995251018, 3371283296, 3608029049, 
			2018485115,  122123397, 2810669150, 1411365618, 1238391329, 
			1186786476, 3155969091, 2242941310, 1765554882,  279121160, 
			4279838515, 1641578514, 3796324015,   13351065,  103516986, 
			1609694427,  551411743, 2493771609, 1316337047, 3932650856, 
			4189700203,  463397996, 2937735066, 1855616529, 2626847990, 
			  55091862, 3823351211,  753448970, 4045045500, 1274127772, 
			1124182256,   92039808, 2126345552,  425973257,  386287896, 
			2589870191, 1987762798, 4084826973, 2172456685, 3366583455, 
			3602966653, 2378803535, 2901764433, 3716929006, 3710159000, 
			2653449155, 3469742630, 3096444476, 3932564653, 2595257433, 
			 318974657, 3146202484,  853571438,  144400272, 3768408841, 
			 782634401, 2161109003,  570039522, 1886241521,   14249488, 
			2230804228, 1604941699, 3928713335, 3921942509, 2155806892, 
			 134366254,  430507376, 1924011722,  276713377,  196481886, 
			3614810992, 1610021185, 1785757066,  851346168, 3761148643, 
			2918835642, 3364422385, 3012284466, 3735958851, 2643153892, 
			3778608231, 1164289832,  205853021, 2876112231, 3503398282, 
			3078397001, 3472037921, 1748894853, 2740861475,  316056182, 
			1660426908,  168885906,  956005527, 3984354789,  566521563, 
			1001109523, 1216710575, 2952284757, 3834433081, 3842608301, 
			2467352408, 3974441264, 3256601745, 1409353924, 1329904859, 
			2307560293, 3125217879, 3622920184, 3832785684, 3882365951, 
			2308537115, 2659155028, 1450441945, 3532257603, 3186324194, 
			1225603425, 1124246549,  175808705, 3009142319, 2796710159, 
			3651990107,  160762750, 1902254979, 1698648476, 1134980669, 
			 497144426, 3302689335, 4057485630, 3603530763, 4087252587, 
			 427812652,  286876201,  823134128, 1627554964, 3745564327, 
			2589226092, 4202024494,   62878473, 3275585894, 3987124064, 
			2791777159, 1916869511, 2585861905, 1375038919, 1403421920, 
			  60249114, 3811870450, 3021498009, 2612993202,  528933105, 
			2757361321, 3341402964, 2621861700,  273128190, 4015252178, 
			3094781002, 1621621288, 2337611177, 1796718448, 1258965619, 
			4241913140, 2138560392, 3022190223, 4174180924,  450094611, 
			3274724580,  617150026, 2704660665, 1469700689, 1341616587, 
			 356715071, 1188789960, 2278869135, 1766569160, 2795896635, 
			  57824704, 2893496380, 1235723989, 1630694347, 3927960522, 
			 428891364, 1814070806, 2287999787, 4125941184, 3968103889, 
			3548724050, 1025597707, 1404281500, 2002212197,   92429143, 
			2313943944, 2403086080, 3006180634, 3561981764, 1671860914, 
			1768520622, 1803542985,  844848113, 3006139921, 1410888995, 
			1157749833, 2125704913, 1789979528, 1799263423,  741157179, 
			2405862309,  767040434, 2655241390, 3663420179, 2172009096, 
			2511931187, 1680542666,  231857466, 1154981000,  157168255, 
			1454112128, 3505872099, 1929775046, 2309422350, 2143329496, 
			2960716902,  407610648, 2938108129, 2581749599,  538837155, 
			2342628867,  430543915,  740188568, 1937713272, 3315215132, 
			2085587024, 4030765687,  766054429, 3517641839,  689721775, 
			1294158986, 1753287754, 4202601348, 1974852792,   33459103, 
			3568087535, 3144677435, 1686130825, 4134943013, 3005738435, 
			3599293386,  426570142,  754104406, 3660892564, 1964545167, 
			 829466833,  821587464, 1746693036, 1006492428, 1595312919, 
			1256599985, 1024482560, 1897312280, 2902903201,  691790057, 
			1037515867, 3176831208, 1968401055, 2173506824, 1089055278, 
			1748401123, 2941380082,  968412354, 1818753861, 2973200866, 
			3875951774, 1119354008, 3988604139, 1647155589, 2232450826, 
			3486058011, 3655784043, 3759258462,  847163678, 1082052057, 
			 989516446, 2871541755, 3196311070, 3929963078,  658187585, 
			3664944641, 2175149170, 2203709147, 2756014689, 2456473919, 
			3890267390, 1293787864, 2830347984, 3059280931, 4158802520, 
			1561677400, 2586570938,  783570352, 1355506163,   31495586, 
			3789437343, 3340549429, 2092501630,  896419368,  671715824, 
			3530450081, 3603554138, 1055991716, 3442308219, 1499434728, 
			3130288473, 3639507000,   17769680, 2259741420,  487032199, 
			4227143402, 3693771256, 1880482820, 3924810796,  381462353, 
			4017855991, 2452034943, 2736680833, 2209866385, 2128986379, 
			 437874044,  595759426,  641721026, 1636065708, 3899136933, 
			 629879088, 3591174506,  351984326, 2638783544, 2348444281, 
			2341604660, 2123933692,  143443325, 1525942256,  364660499, 
			 599149312,  939093251, 1523003209,  106601097,  376589484, 
			1346282236, 1297387043,  764598052, 3741218111,  933457002, 
			1886424424, 3219631016,  525405256, 3014235619,  323149677, 
			2038881721, 4100129043, 2851715101, 2984028078, 1888574695, 
			2014194741, 3515193880, 4180573530, 3461824363, 2641995497, 
			3179230245, 2902294983, 2217320456, 4040852155, 1784656905, 
			3311906931,   87498458, 2752971818, 2635474297, 2831215366, 
			3682231106, 2920043893, 3772929704, 2816374944,  309949752, 
			2383758854,  154870719,  385111597, 1191604312, 1840700563, 
			 872191186, 2925548701, 1310412747, 2102066999, 1504727249, 
			3574298750, 1191230036, 3330575266, 3180292097, 3539347721, 
			 681369118, 3305125752, 3648233597,  950049240, 4173257693, 
			1760124957,  512151405,  681175196,  580563018, 1169662867, 
			4015033554, 2687781101,  699691603, 2673494188, 1137221356, 
			 123599888,  472658308, 1053598179, 1012713758, 3481064843, 
			3759461013, 3981457956, 3830587662, 1877191791, 3650996736, 
			 988064871, 3515461600, 4089077232, 2225147448, 1249609188, 
			2643151863, 3896204135, 2416995901, 1397735321, 3460025646
		];
		
		for (i in 0...values.length) assertEquals(values[i],  m.random());
	}
}