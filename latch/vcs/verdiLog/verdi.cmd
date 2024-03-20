debImport "-f" "file.f"
debLoadSimResult /home/ICer/xilinx_prj/latch/vcs/tb_latch.vf
wvCreateWindow
srcHBSelect "tb_latch.u_dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_latch.u_dut" -delim "."
srcHBSelect "tb_latch.u_dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem" -line 31 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem\[0\]" -line 45 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[1\]" -line 46 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[2\]" -line 47 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[3\]" -line 48 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[4\]" -line 49 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[5\]" -line 50 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[6\]" -line 51 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[7\]" -line 52 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[8\]" -line 53 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
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
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 171706.132362 -snap {("G1" 2)}
wvZoom -win $_nWave2 49058.894961 1974620.522162
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "keywe_b" -line 24 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoom -win $_nWave2 79720.704311 496721.311475
wvZoom -win $_nWave2 101748.058788 216189.026874
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "keydin" -line 25 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "keywe_b" -line 24 -pos 1 -win $_nTrace1
srcAction -pos 23 10 6 -win $_nTrace1 -name "keywe_b" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "keywe_bn" -line 74 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 513629.408677 -snap {("G1" 3)}
wvZoom -win $_nWave2 375772.164790 856049.014462
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetCursor -win $_nWave2 505245.705321 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 513993.917519 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 508744.990200 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 515160.345812 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 524200.165083 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 535281.233867 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 545487.481432 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 555985.336070 -snap {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 556276.943143 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 594769.076814 -snap {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetCursor -win $_nWave2 593602.648521 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 587770.507056 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 594769.076814 -snap {("G1" 2)}
srcHBSelect "tb_latch.u_dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_latch.u_dut" -delim "."
srcHBSelect "tb_latch.u_dut" -win $_nTrace1
wvSetCursor -win $_nWave2 504370.884101 -snap {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSetCursor -win $_nWave2 506995.347760 -snap {("G1" 11)}
srcDeselectAll -win $_nTrace1
srcCopyFilePath -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcHBSelect "tb_latch.u_dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_latch.u_dut" -delim "."
srcHBSelect "tb_latch.u_dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "keyrd" -line 26 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "keyrd_data" -line 28 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 606542.712397 -snap {("G1" 15)}
wvZoom -win $_nWave2 531891.301640 895816.929079
srcDeselectAll -win $_nTrace1
srcSelect -signal "keyrd_data" -line 28 -pos 1 -win $_nTrace1
srcAction -pos 27 12 4 -win $_nTrace1 -name "keyrd_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "keyrd" -line 69 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "keyrd" -line 69 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 698607.686523 -snap {("G1" 16)}
wvZoom -win $_nWave2 679604.891162 799808.619958
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 703069.067730 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 698106.193682 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 705988.405406 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 715038.352201 -snap {("G1" 15)}
wvSetCursor -win $_nWave2 723504.431460 -snap {("G1" 16)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 503532.337598 -snap {("G1" 11)}
wvZoom -win $_nWave2 485432.444009 599870.480895
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 515275.271479 -snap {("G1" 11)}
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 319778.695532 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 317833.179422 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 325615.243861 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 335064.893538 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 446237.242668 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 462079.302419 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 473196.537333 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 637481.476261 -snap {("G1" 11)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 337963.941358 1045020.081829
wvZoom -win $_nWave2 586957.603454 700721.949068
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debExit
