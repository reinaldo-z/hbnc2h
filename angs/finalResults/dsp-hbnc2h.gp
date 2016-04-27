   set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

# set lmargin 10
# set rmargin 2

# set xtics nomirror
set ytics 0.3 nomirror
set zeroaxis lw 1 lt 2 lc 0
# set label 1 "{\\Large C$_{16}$H$_{8}$-alt}"   at graph 0.75, graph 0.15 

set output "dsp-hbnc2h.mp"
set xrange [0.5:2.5]
set yrange [-1.23:0.83]
set key top right title "Direction"
set ylabel "{\\Large $D^{a}(\\omega)[ \\times10^{-2} ] $}"


p   "res-hbnc2h/dsp.kk_x_5002_40-scissor_0_Nc_18" u 1:(2*100*$4/($2+$3+1.e-10)) title "x" w l lw 2.0 lt 1 dt 1,\
    "res-hbnc2h/dsp.kk_y_5002_40-scissor_0_Nc_18" u 1:(2*100*$4/($2+$3+1.e-10)) title "y" w l lw 2.0 lt 2 dt 2,\
    "res-hbnc2h/dsp.kk_z_5002_40-scissor_0_Nc_18" u 1:(2*100*$4/($2+$3+1.e-10)) title "z" w l lw 2.0 lt 6 dt 3,\

