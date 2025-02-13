module user_project_wrapper (user_clock2,
    vccd1,
    vssd1,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vssd1;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;


 digital_unison digital_unison_instance_0 (.clk_master(la_data_in[0]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .cclk_I({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7,
    _NC8}),
    .cclk_Q({_NC9,
    _NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14,
    _NC15,
    _NC16}),
    .clkdiv2_I({_NC17,
    _NC18,
    _NC19,
    _NC20,
    _NC21,
    _NC22,
    _NC23,
    _NC24}),
    .clkdiv2_Q({_NC25,
    _NC26,
    _NC27,
    _NC28,
    _NC29,
    _NC30,
    _NC31,
    _NC32}),
    .comp_high_I({_NC33,
    _NC34,
    _NC35,
    _NC36,
    _NC37,
    _NC38,
    _NC39,
    _NC40}),
    .comp_high_Q({_NC41,
    _NC42,
    _NC43,
    _NC44,
    _NC45,
    _NC46,
    _NC47,
    _NC48}),
    .cos_out({_NC49,
    _NC50,
    _NC51,
    _NC52,
    _NC53,
    _NC54,
    _NC55,
    _NC56}),
    .fb1_I({_NC57,
    _NC58,
    _NC59,
    _NC60,
    _NC61,
    _NC62,
    _NC63,
    _NC64}),
    .fb1_Q({_NC65,
    _NC66,
    _NC67,
    _NC68,
    _NC69,
    _NC70,
    _NC71,
    _NC72}),
    .phi1b_dig_I({_NC73,
    _NC74,
    _NC75,
    _NC76,
    _NC77,
    _NC78,
    _NC79,
    _NC80}),
    .phi1b_dig_Q({_NC81,
    _NC82,
    _NC83,
    _NC84,
    _NC85,
    _NC86,
    _NC87,
    _NC88}),
    .read_out_I({la_data_out[11],
    la_data_out[10]}),
    .read_out_Q({la_data_out[9],
    la_data_out[8]}),
    .sin_out({_NC89,
    _NC90,
    _NC91,
    _NC92,
    _NC93,
    _NC94,
    _NC95,
    _NC96}));
 digital_unison digital_unison_instance_1 (.clk_master(la_data_in[1]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .cclk_I({_NC97,
    _NC98,
    _NC99,
    _NC100,
    _NC101,
    _NC102,
    _NC103,
    _NC104}),
    .cclk_Q({_NC105,
    _NC106,
    _NC107,
    _NC108,
    _NC109,
    _NC110,
    _NC111,
    _NC112}),
    .clkdiv2_I({_NC113,
    _NC114,
    _NC115,
    _NC116,
    _NC117,
    _NC118,
    _NC119,
    _NC120}),
    .clkdiv2_Q({_NC121,
    _NC122,
    _NC123,
    _NC124,
    _NC125,
    _NC126,
    _NC127,
    _NC128}),
    .comp_high_I({_NC129,
    _NC130,
    _NC131,
    _NC132,
    _NC133,
    _NC134,
    _NC135,
    _NC136}),
    .comp_high_Q({_NC137,
    _NC138,
    _NC139,
    _NC140,
    _NC141,
    _NC142,
    _NC143,
    _NC144}),
    .cos_out({_NC145,
    _NC146,
    _NC147,
    _NC148,
    _NC149,
    _NC150,
    _NC151,
    _NC152}),
    .fb1_I({_NC153,
    _NC154,
    _NC155,
    _NC156,
    _NC157,
    _NC158,
    _NC159,
    _NC160}),
    .fb1_Q({_NC161,
    _NC162,
    _NC163,
    _NC164,
    _NC165,
    _NC166,
    _NC167,
    _NC168}),
    .phi1b_dig_I({_NC169,
    _NC170,
    _NC171,
    _NC172,
    _NC173,
    _NC174,
    _NC175,
    _NC176}),
    .phi1b_dig_Q({_NC177,
    _NC178,
    _NC179,
    _NC180,
    _NC181,
    _NC182,
    _NC183,
    _NC184}),
    .read_out_I({la_data_out[15],
    la_data_out[14]}),
    .read_out_Q({la_data_out[13],
    la_data_out[12]}),
    .sin_out({_NC185,
    _NC186,
    _NC187,
    _NC188,
    _NC189,
    _NC190,
    _NC191,
    _NC192}));
 digital_unison digital_unison_instance_2 (.clk_master(la_data_in[2]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .cclk_I({_NC193,
    _NC194,
    _NC195,
    _NC196,
    _NC197,
    _NC198,
    _NC199,
    _NC200}),
    .cclk_Q({_NC201,
    _NC202,
    _NC203,
    _NC204,
    _NC205,
    _NC206,
    _NC207,
    _NC208}),
    .clkdiv2_I({_NC209,
    _NC210,
    _NC211,
    _NC212,
    _NC213,
    _NC214,
    _NC215,
    _NC216}),
    .clkdiv2_Q({_NC217,
    _NC218,
    _NC219,
    _NC220,
    _NC221,
    _NC222,
    _NC223,
    _NC224}),
    .comp_high_I({_NC225,
    _NC226,
    _NC227,
    _NC228,
    _NC229,
    _NC230,
    _NC231,
    _NC232}),
    .comp_high_Q({_NC233,
    _NC234,
    _NC235,
    _NC236,
    _NC237,
    _NC238,
    _NC239,
    _NC240}),
    .cos_out({_NC241,
    _NC242,
    _NC243,
    _NC244,
    _NC245,
    _NC246,
    _NC247,
    _NC248}),
    .fb1_I({_NC249,
    _NC250,
    _NC251,
    _NC252,
    _NC253,
    _NC254,
    _NC255,
    _NC256}),
    .fb1_Q({_NC257,
    _NC258,
    _NC259,
    _NC260,
    _NC261,
    _NC262,
    _NC263,
    _NC264}),
    .phi1b_dig_I({_NC265,
    _NC266,
    _NC267,
    _NC268,
    _NC269,
    _NC270,
    _NC271,
    _NC272}),
    .phi1b_dig_Q({_NC273,
    _NC274,
    _NC275,
    _NC276,
    _NC277,
    _NC278,
    _NC279,
    _NC280}),
    .read_out_I({la_data_out[19],
    la_data_out[18]}),
    .read_out_Q({la_data_out[17],
    la_data_out[16]}),
    .sin_out({_NC281,
    _NC282,
    _NC283,
    _NC284,
    _NC285,
    _NC286,
    _NC287,
    _NC288}));
 digital_unison digital_unison_instance_3 (.clk_master(la_data_in[3]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .cclk_I({_NC289,
    _NC290,
    _NC291,
    _NC292,
    _NC293,
    _NC294,
    _NC295,
    _NC296}),
    .cclk_Q({_NC297,
    _NC298,
    _NC299,
    _NC300,
    _NC301,
    _NC302,
    _NC303,
    _NC304}),
    .clkdiv2_I({_NC305,
    _NC306,
    _NC307,
    _NC308,
    _NC309,
    _NC310,
    _NC311,
    _NC312}),
    .clkdiv2_Q({_NC313,
    _NC314,
    _NC315,
    _NC316,
    _NC317,
    _NC318,
    _NC319,
    _NC320}),
    .comp_high_I({_NC321,
    _NC322,
    _NC323,
    _NC324,
    _NC325,
    _NC326,
    _NC327,
    _NC328}),
    .comp_high_Q({_NC329,
    _NC330,
    _NC331,
    _NC332,
    _NC333,
    _NC334,
    _NC335,
    _NC336}),
    .cos_out({_NC337,
    _NC338,
    _NC339,
    _NC340,
    _NC341,
    _NC342,
    _NC343,
    _NC344}),
    .fb1_I({_NC345,
    _NC346,
    _NC347,
    _NC348,
    _NC349,
    _NC350,
    _NC351,
    _NC352}),
    .fb1_Q({_NC353,
    _NC354,
    _NC355,
    _NC356,
    _NC357,
    _NC358,
    _NC359,
    _NC360}),
    .phi1b_dig_I({_NC361,
    _NC362,
    _NC363,
    _NC364,
    _NC365,
    _NC366,
    _NC367,
    _NC368}),
    .phi1b_dig_Q({_NC369,
    _NC370,
    _NC371,
    _NC372,
    _NC373,
    _NC374,
    _NC375,
    _NC376}),
    .read_out_I({la_data_out[23],
    la_data_out[22]}),
    .read_out_Q({la_data_out[21],
    la_data_out[20]}),
    .sin_out({_NC377,
    _NC378,
    _NC379,
    _NC380,
    _NC381,
    _NC382,
    _NC383,
    _NC384}));
 digital_unison digital_unison_instance_4 (.clk_master(la_data_in[4]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .cclk_I({_NC385,
    _NC386,
    _NC387,
    _NC388,
    _NC389,
    _NC390,
    _NC391,
    _NC392}),
    .cclk_Q({_NC393,
    _NC394,
    _NC395,
    _NC396,
    _NC397,
    _NC398,
    _NC399,
    _NC400}),
    .clkdiv2_I({_NC401,
    _NC402,
    _NC403,
    _NC404,
    _NC405,
    _NC406,
    _NC407,
    _NC408}),
    .clkdiv2_Q({_NC409,
    _NC410,
    _NC411,
    _NC412,
    _NC413,
    _NC414,
    _NC415,
    _NC416}),
    .comp_high_I({_NC417,
    _NC418,
    _NC419,
    _NC420,
    _NC421,
    _NC422,
    _NC423,
    _NC424}),
    .comp_high_Q({_NC425,
    _NC426,
    _NC427,
    _NC428,
    _NC429,
    _NC430,
    _NC431,
    _NC432}),
    .cos_out({_NC433,
    _NC434,
    _NC435,
    _NC436,
    _NC437,
    _NC438,
    _NC439,
    _NC440}),
    .fb1_I({_NC441,
    _NC442,
    _NC443,
    _NC444,
    _NC445,
    _NC446,
    _NC447,
    _NC448}),
    .fb1_Q({_NC449,
    _NC450,
    _NC451,
    _NC452,
    _NC453,
    _NC454,
    _NC455,
    _NC456}),
    .phi1b_dig_I({_NC457,
    _NC458,
    _NC459,
    _NC460,
    _NC461,
    _NC462,
    _NC463,
    _NC464}),
    .phi1b_dig_Q({_NC465,
    _NC466,
    _NC467,
    _NC468,
    _NC469,
    _NC470,
    _NC471,
    _NC472}),
    .read_out_I({la_data_out[27],
    la_data_out[26]}),
    .read_out_Q({la_data_out[25],
    la_data_out[24]}),
    .sin_out({_NC473,
    _NC474,
    _NC475,
    _NC476,
    _NC477,
    _NC478,
    _NC479,
    _NC480}));
 digital_unison digital_unison_instance_5 (.clk_master(la_data_in[5]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .cclk_I({_NC481,
    _NC482,
    _NC483,
    _NC484,
    _NC485,
    _NC486,
    _NC487,
    _NC488}),
    .cclk_Q({_NC489,
    _NC490,
    _NC491,
    _NC492,
    _NC493,
    _NC494,
    _NC495,
    _NC496}),
    .clkdiv2_I({_NC497,
    _NC498,
    _NC499,
    _NC500,
    _NC501,
    _NC502,
    _NC503,
    _NC504}),
    .clkdiv2_Q({_NC505,
    _NC506,
    _NC507,
    _NC508,
    _NC509,
    _NC510,
    _NC511,
    _NC512}),
    .comp_high_I({_NC513,
    _NC514,
    _NC515,
    _NC516,
    _NC517,
    _NC518,
    _NC519,
    _NC520}),
    .comp_high_Q({_NC521,
    _NC522,
    _NC523,
    _NC524,
    _NC525,
    _NC526,
    _NC527,
    _NC528}),
    .cos_out({_NC529,
    _NC530,
    _NC531,
    _NC532,
    _NC533,
    _NC534,
    _NC535,
    _NC536}),
    .fb1_I({_NC537,
    _NC538,
    _NC539,
    _NC540,
    _NC541,
    _NC542,
    _NC543,
    _NC544}),
    .fb1_Q({_NC545,
    _NC546,
    _NC547,
    _NC548,
    _NC549,
    _NC550,
    _NC551,
    _NC552}),
    .phi1b_dig_I({_NC553,
    _NC554,
    _NC555,
    _NC556,
    _NC557,
    _NC558,
    _NC559,
    _NC560}),
    .phi1b_dig_Q({_NC561,
    _NC562,
    _NC563,
    _NC564,
    _NC565,
    _NC566,
    _NC567,
    _NC568}),
    .read_out_I({la_data_out[31],
    la_data_out[30]}),
    .read_out_Q({la_data_out[29],
    la_data_out[28]}),
    .sin_out({_NC569,
    _NC570,
    _NC571,
    _NC572,
    _NC573,
    _NC574,
    _NC575,
    _NC576}));
endmodule
