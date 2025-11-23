module reciprocal (
    input  [17:0] i_data,   // unsigned INT18
    output [35:0] o_recip   // Q2.34
);

    localparam TWO = {2'b10, 17'd0};     // Q2.17


    // initial lut
    reg  [4:0]  lzc;
    wire [17:0] data_norm;  // Q0.18 (interperet as)
    wire [17:0] y0;         // Q1.17

    // newton iteration
    wire [35:0] mult;       // Q1.35
    wire [17:0] mult1;      // Q1.17
    wire [17:0] sub;        // Q1.17
    wire [35:0] mult2;      // Q2.34


    // count leading zeros
    always @(*) begin
        if (i_data[17]) begin
            lzc = 5'd0;
        end else if (i_data[16]) begin
            lzc = 5'd1;
        end else if (i_data[15]) begin
            lzc = 5'd2;
        end else if (i_data[14]) begin
            lzc = 5'd3;
        end else if (i_data[13]) begin
            lzc = 5'd4;
        end else if (i_data[12]) begin
            lzc = 5'd5;
        end else if (i_data[11]) begin
            lzc = 5'd6;
        end else if (i_data[10]) begin
            lzc = 5'd7;
        end else if (i_data[9]) begin
            lzc = 5'd8;
        end else if (i_data[8]) begin
            lzc = 5'd9;
        end else if (i_data[7]) begin
            lzc = 5'd10;
        end else if (i_data[6]) begin
            lzc = 5'd11;
        end else if (i_data[5]) begin
            lzc = 5'd12;
        end else if (i_data[4]) begin
            lzc = 5'd13;
        end else if (i_data[3]) begin
            lzc = 5'd14;
        end else if (i_data[2]) begin
            lzc = 5'd15;
        end else if (i_data[1]) begin
            lzc = 5'd16;
        end else if (i_data[0]) begin
            lzc = 5'd17;
        end else begin
            lzc = 5'd0;
        end
    end

    // normalize
    assign data_norm = i_data << lzc;

    // LUT initial guess
    assign y0      = recip_lut(data_norm[17:8]);    // Q1.17, take top 10 bits as lut index

    // newton iteration
    assign mult    = data_norm * y0;
    assign mult1   = mult >> 18;
    assign sub     = TWO - {1'b0, mult1};
    assign mult2   = y0 * sub;

    // rescale output
    assign o_recip = mult2 >> (18 - lzc);


    /////////
    // LUT //
    /////////

    function automatic [17:0] recip_lut;
        input [9:0] idx;

        begin
            case (idx)
                10'd512: recip_lut = 18'h3ffff;
                10'd513: recip_lut = 18'h3fe01;
                10'd514: recip_lut = 18'h3fc04;
                10'd515: recip_lut = 18'h3fa09;
                10'd516: recip_lut = 18'h3f810;
                10'd517: recip_lut = 18'h3f619;
                10'd518: recip_lut = 18'h3f424;
                10'd519: recip_lut = 18'h3f230;
                10'd520: recip_lut = 18'h3f03f;
                10'd521: recip_lut = 18'h3ee50;
                10'd522: recip_lut = 18'h3ec62;
                10'd523: recip_lut = 18'h3ea76;
                10'd524: recip_lut = 18'h3e88d;
                10'd525: recip_lut = 18'h3e6a5;
                10'd526: recip_lut = 18'h3e4bf;
                10'd527: recip_lut = 18'h3e2db;
                10'd528: recip_lut = 18'h3e0f8;
                10'd529: recip_lut = 18'h3df18;
                10'd530: recip_lut = 18'h3dd39;
                10'd531: recip_lut = 18'h3db5c;
                10'd532: recip_lut = 18'h3d981;
                10'd533: recip_lut = 18'h3d7a8;
                10'd534: recip_lut = 18'h3d5d0;
                10'd535: recip_lut = 18'h3d3fa;
                10'd536: recip_lut = 18'h3d226;
                10'd537: recip_lut = 18'h3d054;
                10'd538: recip_lut = 18'h3ce83;
                10'd539: recip_lut = 18'h3ccb4;
                10'd540: recip_lut = 18'h3cae7;
                10'd541: recip_lut = 18'h3c91c;
                10'd542: recip_lut = 18'h3c752;
                10'd543: recip_lut = 18'h3c58a;
                10'd544: recip_lut = 18'h3c3c4;
                10'd545: recip_lut = 18'h3c1ff;
                10'd546: recip_lut = 18'h3c03c;
                10'd547: recip_lut = 18'h3be7b;
                10'd548: recip_lut = 18'h3bcbb;
                10'd549: recip_lut = 18'h3bafd;
                10'd550: recip_lut = 18'h3b940;
                10'd551: recip_lut = 18'h3b785;
                10'd552: recip_lut = 18'h3b5cc;
                10'd553: recip_lut = 18'h3b414;
                10'd554: recip_lut = 18'h3b25e;
                10'd555: recip_lut = 18'h3b0aa;
                10'd556: recip_lut = 18'h3aef7;
                10'd557: recip_lut = 18'h3ad45;
                10'd558: recip_lut = 18'h3ab96;
                10'd559: recip_lut = 18'h3a9e7;
                10'd560: recip_lut = 18'h3a83b;
                10'd561: recip_lut = 18'h3a68f;
                10'd562: recip_lut = 18'h3a4e6;
                10'd563: recip_lut = 18'h3a33d;
                10'd564: recip_lut = 18'h3a197;
                10'd565: recip_lut = 18'h39ff2;
                10'd566: recip_lut = 18'h39e4e;
                10'd567: recip_lut = 18'h39cac;
                10'd568: recip_lut = 18'h39b0b;
                10'd569: recip_lut = 18'h3996c;
                10'd570: recip_lut = 18'h397ce;
                10'd571: recip_lut = 18'h39631;
                10'd572: recip_lut = 18'h39496;
                10'd573: recip_lut = 18'h392fd;
                10'd574: recip_lut = 18'h39165;
                10'd575: recip_lut = 18'h38fce;
                10'd576: recip_lut = 18'h38e39;
                10'd577: recip_lut = 18'h38ca5;
                10'd578: recip_lut = 18'h38b13;
                10'd579: recip_lut = 18'h38982;
                10'd580: recip_lut = 18'h387f2;
                10'd581: recip_lut = 18'h38664;
                10'd582: recip_lut = 18'h384d7;
                10'd583: recip_lut = 18'h3834b;
                10'd584: recip_lut = 18'h381c1;
                10'd585: recip_lut = 18'h38038;
                10'd586: recip_lut = 18'h37eb0;
                10'd587: recip_lut = 18'h37d2a;
                10'd588: recip_lut = 18'h37ba5;
                10'd589: recip_lut = 18'h37a22;
                10'd590: recip_lut = 18'h378a0;
                10'd591: recip_lut = 18'h3771f;
                10'd592: recip_lut = 18'h3759f;
                10'd593: recip_lut = 18'h37421;
                10'd594: recip_lut = 18'h372a4;
                10'd595: recip_lut = 18'h37128;
                10'd596: recip_lut = 18'h36fae;
                10'd597: recip_lut = 18'h36e34;
                10'd598: recip_lut = 18'h36cbc;
                10'd599: recip_lut = 18'h36b46;
                10'd600: recip_lut = 18'h369d0;
                10'd601: recip_lut = 18'h3685c;
                10'd602: recip_lut = 18'h366e9;
                10'd603: recip_lut = 18'h36577;
                10'd604: recip_lut = 18'h36407;
                10'd605: recip_lut = 18'h36297;
                10'd606: recip_lut = 18'h36129;
                10'd607: recip_lut = 18'h35fbd;
                10'd608: recip_lut = 18'h35e51;
                10'd609: recip_lut = 18'h35ce6;
                10'd610: recip_lut = 18'h35b7d;
                10'd611: recip_lut = 18'h35a15;
                10'd612: recip_lut = 18'h358ae;
                10'd613: recip_lut = 18'h35748;
                10'd614: recip_lut = 18'h355e4;
                10'd615: recip_lut = 18'h35480;
                10'd616: recip_lut = 18'h3531e;
                10'd617: recip_lut = 18'h351bd;
                10'd618: recip_lut = 18'h3505d;
                10'd619: recip_lut = 18'h34efe;
                10'd620: recip_lut = 18'h34da0;
                10'd621: recip_lut = 18'h34c44;
                10'd622: recip_lut = 18'h34ae8;
                10'd623: recip_lut = 18'h3498e;
                10'd624: recip_lut = 18'h34835;
                10'd625: recip_lut = 18'h346dc;
                10'd626: recip_lut = 18'h34585;
                10'd627: recip_lut = 18'h3442f;
                10'd628: recip_lut = 18'h342da;
                10'd629: recip_lut = 18'h34187;
                10'd630: recip_lut = 18'h34034;
                10'd631: recip_lut = 18'h33ee2;
                10'd632: recip_lut = 18'h33d92;
                10'd633: recip_lut = 18'h33c42;
                10'd634: recip_lut = 18'h33af4;
                10'd635: recip_lut = 18'h339a7;
                10'd636: recip_lut = 18'h3385a;
                10'd637: recip_lut = 18'h3370f;
                10'd638: recip_lut = 18'h335c5;
                10'd639: recip_lut = 18'h3347b;
                10'd640: recip_lut = 18'h33333;
                10'd641: recip_lut = 18'h331ec;
                10'd642: recip_lut = 18'h330a6;
                10'd643: recip_lut = 18'h32f61;
                10'd644: recip_lut = 18'h32e1d;
                10'd645: recip_lut = 18'h32cda;
                10'd646: recip_lut = 18'h32b97;
                10'd647: recip_lut = 18'h32a56;
                10'd648: recip_lut = 18'h32916;
                10'd649: recip_lut = 18'h327d7;
                10'd650: recip_lut = 18'h32699;
                10'd651: recip_lut = 18'h3255c;
                10'd652: recip_lut = 18'h3241f;
                10'd653: recip_lut = 18'h322e4;
                10'd654: recip_lut = 18'h321aa;
                10'd655: recip_lut = 18'h32071;
                10'd656: recip_lut = 18'h31f38;
                10'd657: recip_lut = 18'h31e01;
                10'd658: recip_lut = 18'h31cca;
                10'd659: recip_lut = 18'h31b95;
                10'd660: recip_lut = 18'h31a60;
                10'd661: recip_lut = 18'h3192d;
                10'd662: recip_lut = 18'h317fa;
                10'd663: recip_lut = 18'h316c8;
                10'd664: recip_lut = 18'h31597;
                10'd665: recip_lut = 18'h31467;
                10'd666: recip_lut = 18'h31338;
                10'd667: recip_lut = 18'h3120a;
                10'd668: recip_lut = 18'h310dd;
                10'd669: recip_lut = 18'h30fb0;
                10'd670: recip_lut = 18'h30e85;
                10'd671: recip_lut = 18'h30d5a;
                10'd672: recip_lut = 18'h30c31;
                10'd673: recip_lut = 18'h30b08;
                10'd674: recip_lut = 18'h309e0;
                10'd675: recip_lut = 18'h308b9;
                10'd676: recip_lut = 18'h30793;
                10'd677: recip_lut = 18'h3066e;
                10'd678: recip_lut = 18'h30549;
                10'd679: recip_lut = 18'h30426;
                10'd680: recip_lut = 18'h30303;
                10'd681: recip_lut = 18'h301e1;
                10'd682: recip_lut = 18'h300c0;
                10'd683: recip_lut = 18'h2ffa0;
                10'd684: recip_lut = 18'h2fe81;
                10'd685: recip_lut = 18'h2fd62;
                10'd686: recip_lut = 18'h2fc45;
                10'd687: recip_lut = 18'h2fb28;
                10'd688: recip_lut = 18'h2fa0c;
                10'd689: recip_lut = 18'h2f8f1;
                10'd690: recip_lut = 18'h2f7d6;
                10'd691: recip_lut = 18'h2f6bd;
                10'd692: recip_lut = 18'h2f5a4;
                10'd693: recip_lut = 18'h2f48c;
                10'd694: recip_lut = 18'h2f375;
                10'd695: recip_lut = 18'h2f25f;
                10'd696: recip_lut = 18'h2f14a;
                10'd697: recip_lut = 18'h2f035;
                10'd698: recip_lut = 18'h2ef21;
                10'd699: recip_lut = 18'h2ee0e;
                10'd700: recip_lut = 18'h2ecfc;
                10'd701: recip_lut = 18'h2ebea;
                10'd702: recip_lut = 18'h2ead9;
                10'd703: recip_lut = 18'h2e9c9;
                10'd704: recip_lut = 18'h2e8ba;
                10'd705: recip_lut = 18'h2e7ac;
                10'd706: recip_lut = 18'h2e69e;
                10'd707: recip_lut = 18'h2e591;
                10'd708: recip_lut = 18'h2e485;
                10'd709: recip_lut = 18'h2e37a;
                10'd710: recip_lut = 18'h2e26f;
                10'd711: recip_lut = 18'h2e165;
                10'd712: recip_lut = 18'h2e05c;
                10'd713: recip_lut = 18'h2df54;
                10'd714: recip_lut = 18'h2de4c;
                10'd715: recip_lut = 18'h2dd45;
                10'd716: recip_lut = 18'h2dc3f;
                10'd717: recip_lut = 18'h2db39;
                10'd718: recip_lut = 18'h2da35;
                10'd719: recip_lut = 18'h2d931;
                10'd720: recip_lut = 18'h2d82e;
                10'd721: recip_lut = 18'h2d72b;
                10'd722: recip_lut = 18'h2d629;
                10'd723: recip_lut = 18'h2d528;
                10'd724: recip_lut = 18'h2d428;
                10'd725: recip_lut = 18'h2d328;
                10'd726: recip_lut = 18'h2d229;
                10'd727: recip_lut = 18'h2d12b;
                10'd728: recip_lut = 18'h2d02d;
                10'd729: recip_lut = 18'h2cf30;
                10'd730: recip_lut = 18'h2ce34;
                10'd731: recip_lut = 18'h2cd38;
                10'd732: recip_lut = 18'h2cc3e;
                10'd733: recip_lut = 18'h2cb43;
                10'd734: recip_lut = 18'h2ca4a;
                10'd735: recip_lut = 18'h2c951;
                10'd736: recip_lut = 18'h2c859;
                10'd737: recip_lut = 18'h2c762;
                10'd738: recip_lut = 18'h2c66b;
                10'd739: recip_lut = 18'h2c575;
                10'd740: recip_lut = 18'h2c47f;
                10'd741: recip_lut = 18'h2c38b;
                10'd742: recip_lut = 18'h2c296;
                10'd743: recip_lut = 18'h2c1a3;
                10'd744: recip_lut = 18'h2c0b0;
                10'd745: recip_lut = 18'h2bfbe;
                10'd746: recip_lut = 18'h2becd;
                10'd747: recip_lut = 18'h2bddc;
                10'd748: recip_lut = 18'h2bceb;
                10'd749: recip_lut = 18'h2bbfc;
                10'd750: recip_lut = 18'h2bb0d;
                10'd751: recip_lut = 18'h2ba1f;
                10'd752: recip_lut = 18'h2b931;
                10'd753: recip_lut = 18'h2b844;
                10'd754: recip_lut = 18'h2b758;
                10'd755: recip_lut = 18'h2b66c;
                10'd756: recip_lut = 18'h2b581;
                10'd757: recip_lut = 18'h2b496;
                10'd758: recip_lut = 18'h2b3ac;
                10'd759: recip_lut = 18'h2b2c3;
                10'd760: recip_lut = 18'h2b1da;
                10'd761: recip_lut = 18'h2b0f2;
                10'd762: recip_lut = 18'h2b00b;
                10'd763: recip_lut = 18'h2af24;
                10'd764: recip_lut = 18'h2ae3e;
                10'd765: recip_lut = 18'h2ad58;
                10'd766: recip_lut = 18'h2ac73;
                10'd767: recip_lut = 18'h2ab8f;
                10'd768: recip_lut = 18'h2aaab;
                10'd769: recip_lut = 18'h2a9c7;
                10'd770: recip_lut = 18'h2a8e5;
                10'd771: recip_lut = 18'h2a803;
                10'd772: recip_lut = 18'h2a721;
                10'd773: recip_lut = 18'h2a640;
                10'd774: recip_lut = 18'h2a560;
                10'd775: recip_lut = 18'h2a480;
                10'd776: recip_lut = 18'h2a3a1;
                10'd777: recip_lut = 18'h2a2c2;
                10'd778: recip_lut = 18'h2a1e4;
                10'd779: recip_lut = 18'h2a107;
                10'd780: recip_lut = 18'h2a02a;
                10'd781: recip_lut = 18'h29f4e;
                10'd782: recip_lut = 18'h29e72;
                10'd783: recip_lut = 18'h29d97;
                10'd784: recip_lut = 18'h29cbc;
                10'd785: recip_lut = 18'h29be2;
                10'd786: recip_lut = 18'h29b08;
                10'd787: recip_lut = 18'h29a2f;
                10'd788: recip_lut = 18'h29957;
                10'd789: recip_lut = 18'h2987f;
                10'd790: recip_lut = 18'h297a8;
                10'd791: recip_lut = 18'h296d1;
                10'd792: recip_lut = 18'h295fb;
                10'd793: recip_lut = 18'h29525;
                10'd794: recip_lut = 18'h29450;
                10'd795: recip_lut = 18'h2937b;
                10'd796: recip_lut = 18'h292a7;
                10'd797: recip_lut = 18'h291d4;
                10'd798: recip_lut = 18'h29101;
                10'd799: recip_lut = 18'h2902e;
                10'd800: recip_lut = 18'h28f5c;
                10'd801: recip_lut = 18'h28e8b;
                10'd802: recip_lut = 18'h28dba;
                10'd803: recip_lut = 18'h28ce9;
                10'd804: recip_lut = 18'h28c19;
                10'd805: recip_lut = 18'h28b4a;
                10'd806: recip_lut = 18'h28a7b;
                10'd807: recip_lut = 18'h289ad;
                10'd808: recip_lut = 18'h288df;
                10'd809: recip_lut = 18'h28812;
                10'd810: recip_lut = 18'h28745;
                10'd811: recip_lut = 18'h28679;
                10'd812: recip_lut = 18'h285ad;
                10'd813: recip_lut = 18'h284e1;
                10'd814: recip_lut = 18'h28417;
                10'd815: recip_lut = 18'h2834c;
                10'd816: recip_lut = 18'h28283;
                10'd817: recip_lut = 18'h281b9;
                10'd818: recip_lut = 18'h280f0;
                10'd819: recip_lut = 18'h28028;
                10'd820: recip_lut = 18'h27f60;
                10'd821: recip_lut = 18'h27e99;
                10'd822: recip_lut = 18'h27dd2;
                10'd823: recip_lut = 18'h27d0c;
                10'd824: recip_lut = 18'h27c46;
                10'd825: recip_lut = 18'h27b80;
                10'd826: recip_lut = 18'h27abb;
                10'd827: recip_lut = 18'h279f7;
                10'd828: recip_lut = 18'h27933;
                10'd829: recip_lut = 18'h2786f;
                10'd830: recip_lut = 18'h277ac;
                10'd831: recip_lut = 18'h276ea;
                10'd832: recip_lut = 18'h27627;
                10'd833: recip_lut = 18'h27566;
                10'd834: recip_lut = 18'h274a5;
                10'd835: recip_lut = 18'h273e4;
                10'd836: recip_lut = 18'h27324;
                10'd837: recip_lut = 18'h27264;
                10'd838: recip_lut = 18'h271a4;
                10'd839: recip_lut = 18'h270e5;
                10'd840: recip_lut = 18'h27027;
                10'd841: recip_lut = 18'h26f69;
                10'd842: recip_lut = 18'h26eab;
                10'd843: recip_lut = 18'h26dee;
                10'd844: recip_lut = 18'h26d32;
                10'd845: recip_lut = 18'h26c76;
                10'd846: recip_lut = 18'h26bba;
                10'd847: recip_lut = 18'h26afe;
                10'd848: recip_lut = 18'h26a44;
                10'd849: recip_lut = 18'h26989;
                10'd850: recip_lut = 18'h268cf;
                10'd851: recip_lut = 18'h26816;
                10'd852: recip_lut = 18'h2675d;
                10'd853: recip_lut = 18'h266a4;
                10'd854: recip_lut = 18'h265ec;
                10'd855: recip_lut = 18'h26534;
                10'd856: recip_lut = 18'h2647c;
                10'd857: recip_lut = 18'h263c5;
                10'd858: recip_lut = 18'h2630f;
                10'd859: recip_lut = 18'h26259;
                10'd860: recip_lut = 18'h261a3;
                10'd861: recip_lut = 18'h260ee;
                10'd862: recip_lut = 18'h26039;
                10'd863: recip_lut = 18'h25f85;
                10'd864: recip_lut = 18'h25ed1;
                10'd865: recip_lut = 18'h25e1d;
                10'd866: recip_lut = 18'h25d6a;
                10'd867: recip_lut = 18'h25cb7;
                10'd868: recip_lut = 18'h25c05;
                10'd869: recip_lut = 18'h25b53;
                10'd870: recip_lut = 18'h25aa1;
                10'd871: recip_lut = 18'h259f0;
                10'd872: recip_lut = 18'h2593f;
                10'd873: recip_lut = 18'h2588f;
                10'd874: recip_lut = 18'h257df;
                10'd875: recip_lut = 18'h25730;
                10'd876: recip_lut = 18'h25681;
                10'd877: recip_lut = 18'h255d2;
                10'd878: recip_lut = 18'h25524;
                10'd879: recip_lut = 18'h25476;
                10'd880: recip_lut = 18'h253c8;
                10'd881: recip_lut = 18'h2531b;
                10'd882: recip_lut = 18'h2526e;
                10'd883: recip_lut = 18'h251c2;
                10'd884: recip_lut = 18'h25116;
                10'd885: recip_lut = 18'h2506a;
                10'd886: recip_lut = 18'h24fbf;
                10'd887: recip_lut = 18'h24f14;
                10'd888: recip_lut = 18'h24e6a;
                10'd889: recip_lut = 18'h24dc0;
                10'd890: recip_lut = 18'h24d16;
                10'd891: recip_lut = 18'h24c6d;
                10'd892: recip_lut = 18'h24bc4;
                10'd893: recip_lut = 18'h24b1c;
                10'd894: recip_lut = 18'h24a74;
                10'd895: recip_lut = 18'h249cc;
                10'd896: recip_lut = 18'h24925;
                10'd897: recip_lut = 18'h2487e;
                10'd898: recip_lut = 18'h247d7;
                10'd899: recip_lut = 18'h24731;
                10'd900: recip_lut = 18'h2468b;
                10'd901: recip_lut = 18'h245e5;
                10'd902: recip_lut = 18'h24540;
                10'd903: recip_lut = 18'h2449b;
                10'd904: recip_lut = 18'h243f7;
                10'd905: recip_lut = 18'h24353;
                10'd906: recip_lut = 18'h242af;
                10'd907: recip_lut = 18'h2420c;
                10'd908: recip_lut = 18'h24169;
                10'd909: recip_lut = 18'h240c6;
                10'd910: recip_lut = 18'h24024;
                10'd911: recip_lut = 18'h23f82;
                10'd912: recip_lut = 18'h23ee1;
                10'd913: recip_lut = 18'h23e3f;
                10'd914: recip_lut = 18'h23d9f;
                10'd915: recip_lut = 18'h23cfe;
                10'd916: recip_lut = 18'h23c5e;
                10'd917: recip_lut = 18'h23bbe;
                10'd918: recip_lut = 18'h23b1f;
                10'd919: recip_lut = 18'h23a80;
                10'd920: recip_lut = 18'h239e1;
                10'd921: recip_lut = 18'h23942;
                10'd922: recip_lut = 18'h238a4;
                10'd923: recip_lut = 18'h23807;
                10'd924: recip_lut = 18'h23769;
                10'd925: recip_lut = 18'h236cc;
                10'd926: recip_lut = 18'h23630;
                10'd927: recip_lut = 18'h23593;
                10'd928: recip_lut = 18'h234f7;
                10'd929: recip_lut = 18'h2345b;
                10'd930: recip_lut = 18'h233c0;
                10'd931: recip_lut = 18'h23325;
                10'd932: recip_lut = 18'h2328a;
                10'd933: recip_lut = 18'h231f0;
                10'd934: recip_lut = 18'h23156;
                10'd935: recip_lut = 18'h230bc;
                10'd936: recip_lut = 18'h23023;
                10'd937: recip_lut = 18'h22f8a;
                10'd938: recip_lut = 18'h22ef1;
                10'd939: recip_lut = 18'h22e59;
                10'd940: recip_lut = 18'h22dc1;
                10'd941: recip_lut = 18'h22d29;
                10'd942: recip_lut = 18'h22c92;
                10'd943: recip_lut = 18'h22bfb;
                10'd944: recip_lut = 18'h22b64;
                10'd945: recip_lut = 18'h22acd;
                10'd946: recip_lut = 18'h22a37;
                10'd947: recip_lut = 18'h229a1;
                10'd948: recip_lut = 18'h2290c;
                10'd949: recip_lut = 18'h22877;
                10'd950: recip_lut = 18'h227e2;
                10'd951: recip_lut = 18'h2274d;
                10'd952: recip_lut = 18'h226b9;
                10'd953: recip_lut = 18'h22625;
                10'd954: recip_lut = 18'h22591;
                10'd955: recip_lut = 18'h224fe;
                10'd956: recip_lut = 18'h2246b;
                10'd957: recip_lut = 18'h223d8;
                10'd958: recip_lut = 18'h22346;
                10'd959: recip_lut = 18'h222b4;
                10'd960: recip_lut = 18'h22222;
                10'd961: recip_lut = 18'h22191;
                10'd962: recip_lut = 18'h220ff;
                10'd963: recip_lut = 18'h2206f;
                10'd964: recip_lut = 18'h21fde;
                10'd965: recip_lut = 18'h21f4e;
                10'd966: recip_lut = 18'h21ebe;
                10'd967: recip_lut = 18'h21e2e;
                10'd968: recip_lut = 18'h21d9f;
                10'd969: recip_lut = 18'h21d10;
                10'd970: recip_lut = 18'h21c81;
                10'd971: recip_lut = 18'h21bf2;
                10'd972: recip_lut = 18'h21b64;
                10'd973: recip_lut = 18'h21ad6;
                10'd974: recip_lut = 18'h21a49;
                10'd975: recip_lut = 18'h219bb;
                10'd976: recip_lut = 18'h2192e;
                10'd977: recip_lut = 18'h218a1;
                10'd978: recip_lut = 18'h21815;
                10'd979: recip_lut = 18'h21789;
                10'd980: recip_lut = 18'h216fd;
                10'd981: recip_lut = 18'h21671;
                10'd982: recip_lut = 18'h215e6;
                10'd983: recip_lut = 18'h2155b;
                10'd984: recip_lut = 18'h214d0;
                10'd985: recip_lut = 18'h21446;
                10'd986: recip_lut = 18'h213bb;
                10'd987: recip_lut = 18'h21332;
                10'd988: recip_lut = 18'h212a8;
                10'd989: recip_lut = 18'h2121f;
                10'd990: recip_lut = 18'h21195;
                10'd991: recip_lut = 18'h2110d;
                10'd992: recip_lut = 18'h21084;
                10'd993: recip_lut = 18'h20ffc;
                10'd994: recip_lut = 18'h20f74;
                10'd995: recip_lut = 18'h20eec;
                10'd996: recip_lut = 18'h20e65;
                10'd997: recip_lut = 18'h20dde;
                10'd998: recip_lut = 18'h20d57;
                10'd999: recip_lut = 18'h20cd0;
                10'd1000: recip_lut = 18'h20c4a;
                10'd1001: recip_lut = 18'h20bc4;
                10'd1002: recip_lut = 18'h20b3e;
                10'd1003: recip_lut = 18'h20ab8;
                10'd1004: recip_lut = 18'h20a33;
                10'd1005: recip_lut = 18'h209ae;
                10'd1006: recip_lut = 18'h20929;
                10'd1007: recip_lut = 18'h208a5;
                10'd1008: recip_lut = 18'h20821;
                10'd1009: recip_lut = 18'h2079d;
                10'd1010: recip_lut = 18'h20719;
                10'd1011: recip_lut = 18'h20695;
                10'd1012: recip_lut = 18'h20612;
                10'd1013: recip_lut = 18'h2058f;
                10'd1014: recip_lut = 18'h2050d;
                10'd1015: recip_lut = 18'h2048a;
                10'd1016: recip_lut = 18'h20408;
                10'd1017: recip_lut = 18'h20386;
                10'd1018: recip_lut = 18'h20305;
                10'd1019: recip_lut = 18'h20283;
                10'd1020: recip_lut = 18'h20202;
                10'd1021: recip_lut = 18'h20181;
                10'd1022: recip_lut = 18'h20101;
                10'd1023: recip_lut = 18'h20080;
                default: recip_lut = 18'h00000;
            endcase
        end
    endfunction

endmodule
