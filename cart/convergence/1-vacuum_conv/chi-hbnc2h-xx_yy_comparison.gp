set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"


# set xtics 0.25 nomirror
set ytics nomirror 0.2

#z lenght of layer [Angstroms (la) & meters (lm)]
# lb=5.564770163
# la=2.944749766
# lm=la*1E-10

set zeroaxis lw 1 lt 2 lc 0
#set label "{\\Large C$_{16}$H$_{8}$-alt}"   at  graph 0.8, graph 0.9 


#######   THREE IN ONE PLOT 

set key title ""

set xrange [0:3.4]
set ylabel "{\\Large Im$[\\chi^{aa}](\\omega)$}"
set key right top
set output "chi-hbnc2h_im.mp"
p   "chi-res/chi1.sm_0.15_xx_yy_zz_452_5-spin_scissor_0_Nc_22-35z" u 1:3 title "xx"  w l ls 1 lw 2,\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_5-spin_scissor_0_Nc_22-35z" u 1:5 title "yy"  w l ls 2 lw 2 dt 2,\


set xrange [0:4]
set ylabel "{\\Large Re$[\\chi^{aa}](\\omega)$}"
set key right top
set output "chi-hbnc2h_re.mp"
p   "chi-res/chi1.sm_0.15_xx_yy_zz_452_5-spin_scissor_0_Nc_22-35z" u 1:2 title "xx"  w l ls 1 lw 2,\
    "chi-res/chi1.sm_0.15_xx_yy_zz_452_5-spin_scissor_0_Nc_22-35z" u 1:4 title "yy"  w l ls 2 lw 2 dt 2,\

