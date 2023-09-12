set term pngcairo fontscale 2.5 size 1500, 1000



# set size ratio 0.75
set xlabel 'Time'
set ylabel 'Angle (degrees)'

set output 'extracted_angles_right_c1_0.5_c2_0.2_shift0_ANGLE1.png'

plot for [i=6:9:1] 'angles_right_c1_0.5_c2_0.2_shift0_ANGLE1_LEVEL'.i.'' u 1:(180*$4/pi) w l lw 3 notitle,\
    'angles_right_c1_0.5_c2_0.2_shift0_ANGLE0_LEVEL9' u 1:(180*$5/pi) w l lw 3 lt rgb 'black' notitle


set output 'extracted_angles_right_c1_0.5_c2_0.2_shift0_ANGLE0.png'
plot for [i=6:9:1] 'angles_right_c1_0.5_c2_0.2_shift0_ANGLE0_LEVEL'.i.'' u 1:(180*$4/pi) w l lw 3 notitle,\
    'angles_right_c1_0.5_c2_0.2_shift0_ANGLE0_LEVEL9' u 1:(180*$5/pi) w l lw 3 lt rgb 'black' notitle


set output 'extrapolated_angles_right_c1_0.5_c2_0.2_shift0_ANGLE1.png'
plot for [i=6:9:1] 'angles_right_c1_0.5_c2_0.2_shift0_ANGLE1_LEVEL'.i.'' u 1:(180*$3/pi) w l lw 3 notitle,\
    'angles_right_c1_0.5_c2_0.2_shift0_ANGLE1_LEVEL9' u 1:(180*$5/pi) w l lw 3 lt rgb 'black' notitle

set ylabel 'Curvature'
set yr [2:7]
set output 'curvature_c1_0.5_c2_0_shift0_ANGLE1.png'
plot for [i=6:9:1] 'curvatures_c1_0.5_c2_0_shift0_ANGLE1_LEVEL'.i.'' u 1:4 w l lw 3 notitle,\
    'curvatures_c1_0.5_c2_0_shift0_ANGLE1_LEVEL9' u 1:3 w l lw 3 lt rgb 'black' notitle