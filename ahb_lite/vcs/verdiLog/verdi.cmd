debImport "-f" "file.f"
debLoadSimResult /home/ICer/xilinx_prj/ahb_lite/vcs/top.vf
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcHBSelect "top.u_bfm_ahb" -win $_nTrace1
srcSetScope -win $_nTrace1 "top.u_bfm_ahb" -delim "."
srcHBSelect "top.u_bfm_ahb" -win $_nTrace1
srcHBSelect "top" -win $_nTrace1
srcSetScope -win $_nTrace1 "top" -delim "."
srcHBSelect "top" -win $_nTrace1
srcHBSelect "top.u_bfm_ahb" -win $_nTrace1
srcHBSelect "top.u_bfm_ahb" -win $_nTrace1
srcSetScope -win $_nTrace1 "top.u_bfm_ahb" -delim "."
srcHBSelect "top.u_bfm_ahb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "START_ADDR" -line 60 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 60 -pos 1 -win $_nTrace1
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
wvZoom -win $_nWave2 57790124.749833 71534803.068712
wvZoom -win $_nWave2 61320278.954479 61962125.173506
wvSetCursor -win $_nWave2 366096.409118 -snap {("G1" 5)}
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 1561895.263509
wvZoom -win $_nWave2 327174.858400 449083.961689
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
wvZoom -win $_nWave2 210543481.521014 220851990.260173
wvZoom -win $_nWave2 213885666.475791 215708051.276243
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 214063771.461227 214562222.273892
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 214342923.867624 -snap {("G1" 9)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 227573421.935023 232595837.595127
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 224223990.132493 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 241236.776202 -snap {("G1" 7)}
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 1072163.449789
wvZoom -win $_nWave2 337599.164977 426290.471030
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 647523.451265 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 795204.238396 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 954245.086075 -snap {("G1" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 59132901.841861 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 62525773.259017 -snap {("G1" 5)}
wvZoom -win $_nWave2 56103552.362258 77430172.698666
wvZoom -win $_nWave2 60257904.022178 64582982.462650
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 122452588.659106 -snap {("G1" 9)}
wvZoom -win $_nWave2 113237406.604403 133229665.977318
wvZoom -win $_nWave2 122226587.936852 124000417.487617
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 123015285.332103 -snap {("G1" 4)}
srcActiveTrace "top.M_HADDR\[31:0\]" -win $_nTrace1 -TraceByDConWave -TraceTime \
           122771000 -TraceValue 00000000000000000000000000000000
srcDeselectAll -win $_nTrace1
srcSelect -signal "address" -line 258 -pos 1 -win $_nTrace1
srcAction -pos 257 8 2 -win $_nTrace1 -name "address" -ctrlKey off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {106 106 2 3 1 1}
srcHBSelect "top.u_bfm_ahb.memory_test" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 105 -pos 6 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 104 -pos 1 -win $_nTrace1
srcAction -pos 104 1 3 -win $_nTrace1 -name "ahb_write" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "top.u_bfm_ahb.memory_test" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 104 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 100 -pos 24 -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 213042513.942628 215697735.890594
wvZoom -win $_nWave2 213981318.233742 214448949.050462
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 214053225.440634 214290316.448444
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
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
wvZoom -win $_nWave2 219133905.470314 229910982.788526
wvSetCursor -win $_nWave2 224101857.723058 -snap {("G1" 3)}
wvZoom -win $_nWave2 223677676.561101 226697271.273341
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetCursor -win $_nWave2 223957779.726280 -snap {("G1" 10)}
wvZoom -win $_nWave2 223877203.483125 224765556.563911
wvSetCursor -win $_nWave2 224009952.709315 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224046103.168239 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224089365.192854 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224133812.478417 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224168777.676393 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224210261.809585 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224248782.790407 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224298563.750237 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224327010.012998 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224365530.993819 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224411756.170804 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224446128.738307 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224482871.827705 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224524355.960897 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 224571173.768357 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 224613843.162498 -snap {("G1" 11)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debExit
