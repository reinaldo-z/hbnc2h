set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"


# set xtics 0.25 nomirror
set ytics nomirror

## 1 bohr = 0.529177249 angs; 1 angs = 1.889725989
## la = z lenght of the structure in amgstroms
la=2.944749766
## Conversion to meters
lm=la*1E-10

set zeroaxis lw 1 lt 2 lc 0
#set label "{\\Large C$_{16}$H$_{8}$-alt}"   at  graph 0.8, graph 0.9 


#######   THREE IN ONE PLOT 
set xrange [2:4.8]
set yrange [-0.2 :0.35]

set key title "Direction"
set key top right

set ylabel "{\\Large $\\eta^{axy}(\\omega)$ [mC$^{3}$/J$^{2}$s$^{2}$]}"
set output "eta-hbnc2h.mp"
p   "res/eta2.sm_0.15_xxy_yxy_zxy_3202_50-spin_scissor_0_Nc_32" u 1:($2*lm) title "x"  w l ls 1 lw 2,\
    "res/eta2.sm_0.15_xxy_yxy_zxy_3202_50-spin_scissor_0_Nc_32" u 1:($3*lm) title "y"  w l ls 2 lw 2 dt 2,\
    # "res/eta2.sm_0.15_xxy_yxy_zxy_3202_50-spin_scissor_0_Nc_32" u 1:($4*lm) title "z"  w l ls 3 lw 2 dt 2,\  ##Equal to zero
