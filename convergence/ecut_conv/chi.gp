set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"


# set xtics 0.25 nomirror
# set ytics nomirror

#z lenght of layer [Angstroms (la) & meters (lm)]
# lb=5.564770163
# la=2.944749766
# lm=la*1E-10

# set zeroaxis lw 1 lt 2 lc 0
#set label "{\\Large C$_{16}$H$_{8}$-alt}"   at  graph 0.8, graph 0.9 


#######   THREE IN ONE PLOT 
# set xrange [0.25:2]
# set yrange [-6:5]

set key title "ecut [Ha]"

#### Real components

set ylabel "{\\Large Re[$\\chi{xx}(\\omega)$]"
# set key left bottom
set output "chi-re-xx.mp"
p   "chi-res/chi1.sm_0.15_xx_yy_zz_452_8-spin_scissor_0_Nc_22"  u 1:2 w l title "8",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_10-spin_scissor_0_Nc_22" u 1:2 w l title "10",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_12-spin_scissor_0_Nc_22" u 1:2 w l title "12",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_15-spin_scissor_0_Nc_22" u 1:2 w l title "15",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_18-spin_scissor_0_Nc_22" u 1:2 w l title "18",\

set ylabel "{\\Large Re[$\\chi{yy}(\\omega)$]"
# set key bottom right
set output "chi-re-yy.mp"
p   "chi-res/chi1.sm_0.15_xx_yy_zz_452_8-spin_scissor_0_Nc_22"  u 1:4 w l title "8",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_10-spin_scissor_0_Nc_22" u 1:4 w l title "10",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_12-spin_scissor_0_Nc_22" u 1:4 w l title "12",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_15-spin_scissor_0_Nc_22" u 1:4 w l title "15",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_18-spin_scissor_0_Nc_22" u 1:4 w l title "18",\

unset label
set ylabel "{\\Large Re[$\\chi{zz}(\\omega)$]"
# set key bottom right
set output "chi-re-zz.mp"
p   "chi-res/chi1.sm_0.15_xx_yy_zz_452_8-spin_scissor_0_Nc_22"  u 1:6 w l title "8",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_10-spin_scissor_0_Nc_22" u 1:6 w l title "10",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_12-spin_scissor_0_Nc_22" u 1:6 w l title "12",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_15-spin_scissor_0_Nc_22" u 1:6 w l title "15",\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_18-spin_scissor_0_Nc_22" u 1:6 w l title "18",\

#### Imaginary components
