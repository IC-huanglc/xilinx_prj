debImport "-f" "file.f"
debLoadSimResult /home/ICer/xilinx_prj/ahb_to_ahb/vcs/top.vf
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvSetCursor -win $_nWave2 428147639.307787 -snap {("G2" 13)}
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 15 )} 
wvSetCursor -win $_nWave2 2319685.352287 -snap {("G2" 15)}
srcActiveTrace "top.u_ahb2ahb.Uslave.T_LENG\[4:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 391000 -TraceValue 00001
srcDeselectAll -win $_nTrace1
srcSelect -word -line 108 -pos 8 -win $_nTrace1
srcAction -pos 108 8 6 -win $_nTrace1 -name "burst_leng" -ctrlKey off
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvSetCursor -win $_nWave2 429141790.173053 -snap {("G2" 13)}
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvZoom -win $_nWave2 412572609.085290 465593988.566131
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 461948768.726823 491773294.684796
wvZoom -win $_nWave2 469045457.536330 471589205.732993
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 428416848.088882 -snap {("G2" 13)}
wvZoom -win $_nWave2 422379769.550449 436063814.237564
wvZoom -win $_nWave2 427217392.270443 428629775.127519
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 427382373.951493 428031825.648443
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetMarker -win $_nWave2 -keepViewRange -name "begin burst, INCR" 391000.000000 \
           ID_GREEN5 long_dashed
wvZoom -win $_nWave2 427581865.603700 427992890.657888
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetMarker -win $_nWave2 -keepViewRange -name "begin burst, INCR" \
           427711000.000000 ID_GREEN5 long_dashed
wvZoom -win $_nWave2 427638616.528913 428133472.403795
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 427590354.318062 427979388.108451
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvGoToTime -win $_nWave2 469910000
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 469132894.183769 471787364.545879
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 470013889.600599 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 469997483.726914 -snap {("G2" 3)}
wvSetMarker -win $_nWave2 -keepViewRange -name "burst, INCR, 2 beat" \
           469991000.000000 ID_GREEN5 long_dashed
wvSetMarker -win $_nWave2 -keepViewRange -name "begin burst, INCR" \
           427711000.000000 ID_GREEN5 long_dashed -newname \
           "begin burst, INCR, 1 beat"
wvZoom -win $_nWave2 469876080.261651 470351850.598494
wvZoom -win $_nWave2 469974880.529325 470120728.543586
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 469981460.816709 470209697.635070
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 469966367.281721 470144950.601897
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 470109079.415797 -snap {("G2" 18)}
wvSetCursor -win $_nWave2 470123427.890224 -snap {("G2" 18)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvGoToTime -win $_nWave2 501030000
wvZoom -win $_nWave2 500097569.907991 503092648.385312
wvZoom -win $_nWave2 500997204.110606 501665450.915496
wvZoom -win $_nWave2 501067415.455984 501362716.114511
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 501091689.243098 501219446.017492
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 501112613.560281 -snap {("G2" 19)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 501089241.492765 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 500986278.060250 -snap {("G2" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 501099980.010267 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 -keepViewRange -name "begin burst, INCR4" \
           501091000.000000 ID_GREEN5 long_dashed
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 501084819.750264 501316645.392798
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 501010457.878464 501530847.701507
wvZoom -win $_nWave2 501093437.219775 501219192.733255
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 501118075.351841 -snap {("G2" 18)}
wvSetCursor -win $_nWave2 501173662.708611 -snap {("G2" 19)}
wvSetCursor -win $_nWave2 501196046.879119 -snap {("G2" 19)}
wvSetCursor -win $_nWave2 501210658.768201 -snap {("G2" 19)}
wvSetCursor -win $_nWave2 501227136.004825 -snap {("G2" 19)}
wvZoom -win $_nWave2 501139153.779078 501214700.354542
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 463982694.532323 476700666.356427
wvZoom -win $_nWave2 469367002.752023 470718975.034931
wvSetMarkerOption -win $_nWave2 -refmarker "1st write burst"
wvDeleteMarker -win $_nWave2 "begin burst, INCR4"
wvSetMarkerOption -win $_nWave2 -refmarker "1st write burst"
wvSetMarkerOption -win $_nWave2 -refmarker "1st write burst"
wvSetMarkerOption -win $_nWave2 -refmarker "burst, INCR, 2 beat"
wvSetMarker -win $_nWave2 -keepViewRange -name "burst, INCR4" 501030000.000000 \
           ID_GREEN5 long_dashed
wvSetMarkerOption -win $_nWave2 -refmarker "burst, INCR4"
wvDeleteMarker -win $_nWave2 "1st write burst"
wvZoom -win $_nWave2 469929349.690441 470427356.785999
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 469961667.826988 470158654.564416
wvSetCursor -win $_nWave2 470036542.266651 -snap {("G2" 16)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 470112999.418151 -snap {("G2" 18)}
wvSetCursor -win $_nWave2 470131261.476627 -snap {("G2" 19)}
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 470220015.080834 470314977.784909
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 470212796.037178 -snap {("G2" 7)}
wvSetCursor -win $_nWave2 470230403.460677 -snap {("G2" 18)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 470310411.593030 -snap {("G2" 18)}
wvSetCursor -win $_nWave2 470333418.626403 -snap {("G2" 19)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 493507696.062582 506489297.260431
wvZoom -win $_nWave2 500592216.370103 501394540.300748
wvZoom -win $_nWave2 501008254.551690 501185777.399138
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 465060721.302111 479385432.651205
wvZoom -win $_nWave2 469584780.325207 471089848.884753
wvZoom -win $_nWave2 469880584.899944 470264758.765885
wvZoom -win $_nWave2 469973422.960211 470148889.268573
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvSetPosition -win $_nWave2 {("G2" 10)}
wvExpandBus -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 55)}
wvScrollUp -win $_nWave2 20
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvSetPosition -win $_nWave2 {("G2" 10)}
wvCollapseBus -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 23)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 23)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 23)}
srcTraceConnectivity "top.u_ahb2ahb.Uslave.T_ADDR\[31:0\]" -win $_nTrace1
wvSetCursor -win $_nWave2 470231785.712325 -snap {("G2" 10)}
srcActiveTrace "top.u_ahb2ahb.Uslave.T_ADDR\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 470051000 -TraceValue \
           00000000000000000000000000000100
srcSearchString "T_DATA" -win $_nTrace1 -next -case
srcSearchString "T_DATA" -win $_nTrace1 -next -case
srcSearchString "T_DATA" -win $_nTrace1 -next -case
srcSearchString "HDATA" -win $_nTrace1 -next -case
srcSearchString "DATA" -win $_nTrace1 -next -case
srcSearchString "DATA" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "HWDATA" -line 187 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 2
wvZoom -win $_nWave2 470040052.440888 470146329.932974
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 469994664.463677 -snap {("G2" 24)}
srcActiveTrace "top.u_ahb2ahb.Uslave.HWDATA\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 469991000 -TraceValue \
           11001010010111000100101010010100
wvSelectSignal -win $_nWave2 {( "G2" 16 )} 
wvSetCursor -win $_nWave2 470053780.497594 -snap {("G2" 24)}
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_bfm_ahb.ahb_write" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Uslave" -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 496629285.095785 504027985.162888
wvZoom -win $_nWave2 500854500.708805 501705031.124430
wvSetCursor -win $_nWave2 501111026.569631 -snap {("G2" 16)}
wvZoom -win $_nWave2 501092102.530717 501238763.832299
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 501096906.640057 501220907.048317
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 465627525.813346 473004400.533635
wvZoom -win $_nWave2 469753651.661175 470246051.209872
wvZoom -win $_nWave2 469973375.069109 470071063.731119
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 22 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 456315247.156984 475535497.218789
wvZoom -win $_nWave2 469085190.801177 471508510.339254
wvZoom -win $_nWave2 469905944.266407 470235443.832771
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 469980275.132713 470071101.341982
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "T_LENG" -line 190 -pos 1 -win $_nTrace1
srcAction -pos 189 6 2 -win $_nTrace1 -name "T_LENG" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 108 -pos 8 -win $_nTrace1
srcAction -pos 108 8 6 -win $_nTrace1 -name "burst_leng" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Uslave.burst_leng" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Uslave" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Uslave" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Uslave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "HTRANS" -line 193 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 25 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 24)}
wvSetCursor -win $_nWave2 469972360.116870 -snap {("G2" 23)}
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "HTRANS" -line 193 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave2 469992231.858647 -snap {("G2" 16)}
srcActiveTrace "top.u_ahb2ahb.Uslave.HREADYout" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 469991000 -TraceValue 0
wvSetCursor -win $_nWave2 470010419.554446 -snap {("G2" 18)}
wvSetCursor -win $_nWave2 469991782.779738 -snap {("G2" 18)}
srcActiveTrace "top.u_ahb2ahb.Uslave.state\[2:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 469991000 -TraceValue 010
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwr_dat" -line 135 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwr_vld" -line 136 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 470011542.251718 -snap {("G2" 25)}
wvSelectSignal -win $_nWave2 {( "G2" 26 )} 
wvSelectSignal -win $_nWave2 {( "G2" 25 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 25)}
wvSelectSignal -win $_nWave2 {( "G2" 25 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 24)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwr_vld" -line 136 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 24)}
wvSetPosition -win $_nWave2 {("G2" 23)}
wvSetPosition -win $_nWave2 {("G2" 22)}
wvSetPosition -win $_nWave2 {("G2" 21)}
wvSetPosition -win $_nWave2 {("G2" 20)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvSetPosition -win $_nWave2 {("G2" 18)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 18)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvSelectSignal -win $_nWave2 {( "G2" 25 )} 
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G2" 25)}
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 469990884.621921 -snap {("G2" 16)}
wvSetCursor -win $_nWave2 470030852.644788 -snap {("G2" 16)}
wvSetCursor -win $_nWave2 469990884.621921 -snap {("G2" 15)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 419719964.783721 436734666.473750
wvZoom -win $_nWave2 427522751.343651 428164220.319604
wvZoom -win $_nWave2 427672215.993745 427909297.852595
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 427662691.691608 427866365.229187
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 427688497.053272 427806068.798698
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 427698452.139223 427815006.576591
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 465966990.990866 473417254.359473
wvZoom -win $_nWave2 469802633.380201 470470302.223494
wvZoom -win $_nWave2 469957377.395178 470181446.728867
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 469967763.798127 470094339.429148
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 469980045.858643 470090819.093207
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 10
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvAddSignal -win $_nWave2 "/top/u_ahb2ahb/HCLK"
wvSetPosition -win $_nWave2 {("G2" 25)}
wvSetPosition -win $_nWave2 {("G2" 26)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 469989151.445813 -snap {("G2" 26)}
wvSetCursor -win $_nWave2 469974911.128885 -snap {("G2" 24)}
wvScrollUp -win $_nWave2 10
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 6 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 6 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 6 7 8 9 )} 
wvAddSignal -win $_nWave2 "/top/u_ahb2ahb/Uslave/HADDR\[31:0\]" \
           "/top/u_ahb2ahb/Uslave/HWRITE" \
           "/top/u_ahb2ahb/Uslave/HTRANS\[1:0\]" \
           "/top/u_ahb2ahb/Uslave/HBURST\[2:0\]" \
           "/top/u_ahb2ahb/Uslave/HSIZE\[2:0\]"
wvSetPosition -win $_nWave2 {("G2" 26)}
wvSetPosition -win $_nWave2 {("G2" 31)}
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G2" 31 )} 
wvSelectSignal -win $_nWave2 {( "G2" 26 )} 
wvSetCursor -win $_nWave2 469986960.627824 -snap {("G2" 26)}
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvAddSignal -win $_nWave2 "/top/u_ahb2ahb/Uslave/HREADYin"
wvSetPosition -win $_nWave2 {("G2" 31)}
wvSetPosition -win $_nWave2 {("G2" 32)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 470031598.544348 -snap {("G2" 26)}
wvSetCursor -win $_nWave2 470052137.462994 -snap {("G2" 26)}
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvAddSignal -win $_nWave2 "/top/u_ahb2ahb/Uslave/HADDR\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 32)}
wvSetPosition -win $_nWave2 {("G2" 33)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 469945061.233815 470212888.732960
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 469969394.140060 -snap {("G2" 29)}
wvSetCursor -win $_nWave2 470032626.590415 -snap {("G2" 32)}
wvSetCursor -win $_nWave2 470032626.590415 -snap {("G2" 32)}
wvSetCursor -win $_nWave2 470049179.587890 -snap {("G2" 26)}
wvZoom -win $_nWave2 470038254.609556 470065401.525415
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 470053975.660321 -snap {("G2" 25)}
wvSetCursor -win $_nWave2 470047264.432667 -snap {("G2" 26)}
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 470112497.565460 -snap {("G2" 17)}
wvSelectSignal -win $_nWave2 {( "G2" 27 )} 
wvSaveSignal -win $_nWave2 "/home/ICer/xilinx_prj/ahb_to_ahb/vcs/signal.rc"
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 469970461.143383 470298505.951092
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "T_LENG" -line 190 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 33 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 499119774.083822 506282423.630643
wvZoom -win $_nWave2 500992333.266930 501474860.337761
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 501129516.488521 -snap {("G2" 21)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwr_dat" -line 187 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 19 )} 
wvSelectSignal -win $_nWave2 {( "G2" 19 20 )} 
wvSetCursor -win $_nWave2 501191547.162645 -snap {("G2" 19)}
wvSetCursor -win $_nWave2 501190056.040670 -snap {("G2" 20)}
wvSetCursor -win $_nWave2 501207949.504360 -snap {("G2" 20)}
wvSetCursor -win $_nWave2 501230316.333972 -snap {("G2" 20)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "T_LENG" -line 190 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 501212422.870282 -snap {("G2" 21)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 501153374.440107 -snap {("G2" 18)}
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 501215106.889836 -snap {("G2" 21)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 501229719.885182 -snap {("G2" 18)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "state" -line 196 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave2 501212721.094677 -snap {("G2" 20)}
wvSetCursor -win $_nWave2 501228228.763208 -snap {("G2" 20)}
wvSetCursor -win $_nWave2 501248806.246451 -snap {("G2" 18)}
wvSetCursor -win $_nWave2 501250595.592820 -snap {("G2" 19)}
wvSetCursor -win $_nWave2 501229421.660788 -snap {("G2" 20)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 501033070.719213 501373046.529316
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 503690891.499113 504941531.809207
wvZoom -win $_nWave2 504342492.105657 504636214.799004
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 504418191.959216 -snap {("G2" 19)}
wvZoom -win $_nWave2 504278773.523808 504673792.424131
wvSetCursor -win $_nWave2 504318324.241879 -snap {("G2" 18)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 503570034.421421 505882530.727889
wvSetMarker -win $_nWave2 -keepViewRange -name "burst, INCR4, read" \
           504311000.000000 ID_GREEN5 long_dashed
wvZoom -win $_nWave2 504241773.150720 504551916.351279
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 504390327.526719 504466234.020799
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 504411579.468411 -snap {("G2" 18)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 504387728.503359 504490938.816694
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 504373631.173765 504572652.297130
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 504429106.159243 -snap {("G2" 18)}
srcActiveTrace "top.u_ahb2ahb.Uslave.state\[2:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 504411000 -TraceValue 010
srcHBSelect "top.u_ahb2ahb.Ubwd_fifo" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Ufwd_fifo" -win $_nTrace1
srcSetScope -win $_nTrace1 "top.u_ahb2ahb.Ufwd_fifo" -delim "."
srcHBSelect "top.u_ahb2ahb.Ufwd_fifo" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Ufwd_fifo" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Uslave" -win $_nTrace1
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G3" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "brd_cnt" -line 153 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 504858883.541892 505201327.798658
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {86 86 4 5 1 1}
srcHBSelect "top.u_ahb2ahb" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Uslave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwr_rdy" -line 147 -pos 1 -win $_nTrace1
srcSelect -signal "fwr_vld" -line 148 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 504115792.203463 504633903.167965
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 17 )} 
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvAddSignal -win $_nWave2 "/top/u_ahb2ahb/Uslave/state\[2:0\]"
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 504368443.347453 504743737.568959
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 504404395.513295 504478619.339551
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 503694314.792243 503962951.829668
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 504288205.201873 504531273.571954
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 504404631.646100 504451502.679144
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 502340481.176656 503082074.777352
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 504071630.144391 504504302.801410
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 504229135.827261 504596025.126043
srcDeselectAll -win $_nTrace1
srcSelect -signal "brd_vld" -line 153 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwr_cnt" -line 125 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 504450131.074820 -snap {("G3" 5)}
srcActiveTrace "top.u_ahb2ahb.Uslave.fwr_cnt\[5:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 504390000 -TraceValue 010110
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_cnt" -line 122 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 500498248.071638 501579415.053465
wvSetCursor -win $_nWave2 501132381.239556 -snap {("G3" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_cnt" -line 122 -pos 1 -win $_nTrace1
srcAction -pos 121 9 3 -win $_nTrace1 -name "rd_cnt" -ctrlKey off
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_vld" -line 113 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 501613159.758390 -snap {("G3" 7)}
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 6)}
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Ufwd_fifo" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Ufwd_fifo" -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 505014358.730884 -snap {("G3" 4)}
srcActiveTrace "top.u_ahb2ahb.Uslave.brd_vld" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 504970000 -TraceValue 1
wvZoom -win $_nWave2 504458406.364457 505965892.588808
srcDeselectAll -win $_nTrace1
srcSelect -signal "empty" -line 123 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "empty" -line 123 -pos 1 -win $_nTrace1
srcAction -pos 122 8 2 -win $_nTrace1 -name "empty" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_head" -line 125 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "fifo_tail" -line 125 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {167 167 12 13 1 1}
srcHBSelect "top.u_ahb2ahb" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Ubwd_fifo" -win $_nTrace1
wvZoom -win $_nWave2 504373621.910472 504709032.936904
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 504417776.761238 -snap {("G3" 3)}
wvZoom -win $_nWave2 504379219.004182 504573251.588076
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 504432344.118279 -snap {("G3" 3)}
srcActiveTrace "top.u_ahb2ahb.Uslave.state\[2:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 504431000 -TraceValue 011
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {86 86 4 5 1 1}
srcHBSelect "top.u_ahb2ahb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwd_rd_rdy" -line 130 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwd_rd_rdy" -line 130 -pos 1 -win $_nTrace1
srcSelect -signal "fwd_rd_vld" -line 131 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwd_rd_rdy" -line 130 -pos 1 -win $_nTrace1
srcAction -pos 129 7 8 -win $_nTrace1 -name "fwd_rd_rdy" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "frd_rdy_gate" -line 73 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "frd_rdy_gate" -line 73 -pos 1 -win $_nTrace1
srcAction -pos 72 8 9 -win $_nTrace1 -name "frd_rdy_gate" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Umaster" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Umaster" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Umaster" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwd_rd_rdy" -line 130 -pos 1 -win $_nTrace1
srcAction -pos 129 7 5 -win $_nTrace1 -name "fwd_rd_rdy" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "frd_rdy_gate" -line 73 -pos 1 -win $_nTrace1
srcAction -pos 72 8 10 -win $_nTrace1 -name "frd_rdy_gate" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Umaster" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Umaster" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "frd_rdy_loc" -line 73 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "frd_rdy_loc" -line 73 -pos 1 -win $_nTrace1
srcAction -pos 72 17 5 -win $_nTrace1 -name "frd_rdy_loc" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Umaster" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Umaster" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_ahb2ahb.Umaster" -win $_nTrace1
srcHBSelect "top.u_ahb2ahb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "fwd_rd_vld" -line 131 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 12)}
debExit
