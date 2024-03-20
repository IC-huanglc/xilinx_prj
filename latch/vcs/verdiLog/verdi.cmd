debImport "-f" "file.f"
debLoadSimResult /home/ICer/xilinx_prj/latch/vcs/tb_latch.vf
wvCreateWindow
srcHBSelect "tb_latch.u_dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_latch.u_dut" -delim "."
srcHBSelect "tb_latch.u_dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem\[0\]" -line 45 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem\[1\]" -line 46 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[2\]" -line 47 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[3\]" -line 48 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[5\]" -line 50 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[4\]" -line 49 -pos 1 -win $_nTrace1
srcSelect -toggle -signal "mem\[5\]" -line 50 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[5\]" -line 50 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[6\]" -line 51 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[7\]" -line 52 -pos 1 -win $_nTrace1
srcSelect -signal "mem\[8\]" -line 53 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "keywe_b" -line 24 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 9747204.366283 11256018.192844
wvSetCursor -win $_nWave2 10124179.076132 -snap {("G1" 2)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 10218880.247175 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 10088952.070479 -snap {("G1" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "keyrd_data" -line 60 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoom -win $_nWave2 20602652.516677 21777657.974530
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "keyrd" -line 59 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 21010445.289624 -snap {("G1" 3)}
wvZoom -win $_nWave2 20953440.779843 21070300.024894
wvZoom -win $_nWave2 20997449.021912 21009354.633293
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 21790659.859801 -snap {("G1" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem\[8\]" -line 68 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 21735211.045118 -snap {("G1" 3)}
srcDeselectAll -win $_nTrace1
debExit
