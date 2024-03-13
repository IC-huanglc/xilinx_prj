debImport "-f" "file.f"
debLoadSimResult /home/ICer/xilinx_prj/ahb_lite/vcs/top.vf
wvCreateWindow
srcHBSelect "top.u_bfm_ahb" -win $_nTrace1
srcSetScope -win $_nTrace1 "top.u_bfm_ahb" -delim "."
srcHBSelect "top.u_bfm_ahb" -win $_nTrace1
srcHBSelect "top.u_ahb_lite" -win $_nTrace1
srcSetScope -win $_nTrace1 "top.u_ahb_lite" -delim "."
srcHBSelect "top.u_ahb_lite" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "M_HBURST" -line 30 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "M_HSIZE" -line 29 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debExit
