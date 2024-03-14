debImport "-f" "file.f"
debLoadSimResult /home/ICer/xilinx_prj/amba_ahb/vcs/top.vf
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcHBSelect "top.u_amba_ahb" -win $_nTrace1
srcSetScope -win $_nTrace1 "top.u_amba_ahb" -delim "."
srcHBSelect "top.u_amba_ahb" -win $_nTrace1
srcHBSelect "top.u_amba_ahb.Uahb_arbiter" -win $_nTrace1
srcHBSelect "top.u_amba_ahb.Uahb_arbiter" -win $_nTrace1
srcSetScope -win $_nTrace1 "top.u_amba_ahb.Uahb_arbiter" -delim "."
srcHBSelect "top.u_amba_ahb.Uahb_arbiter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "HBUSREQ_0" -line 20 -pos 1 -win $_nTrace1
srcSelect -signal "HBUSREQ_1" -line 21 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoom -win $_nWave2 179963.062500 3707239.087500
wvSetCursor -win $_nWave2 358531.411266 -snap {("G1" 2)}
wvZoom -win $_nWave2 299008.628344 728895.393891
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
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 280922340.562500 287580973.875000
wvSetCursor -win $_nWave2 284813479.404492 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 284717761.550625 -snap {("G1" 2)}
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
wvPrevView -win $_nWave2
wvZoom -win $_nWave2 0.000000 1259741.437500
wvSetCursor -win $_nWave2 354302.279297 -snap {("G1" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "HGRANT_0" -line 22 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "HGRANT_1" -line 23 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "HCLK" -line 18 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetCursor -win $_nWave2 366899.693672 -snap {("G1" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "hbusreq" -line 35 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "HBUSREQ_0" -line 27 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "HBUSREQ_1" -line 27 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "HGRANT_0" -line 29 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "HGRANT_1" -line 29 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {34 39 2 1 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {31 38 1 11 4 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {39 51 2 1 1 1}
srcDeselectAll -win $_nTrace1
debExit
