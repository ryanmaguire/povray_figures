/******************************************************************************
 *                                  LICENSE                                   *
 ******************************************************************************
 *  This file is part of povray_figures.                                      *
 *                                                                            *
 *  povray_figures is free software: you can redistribute it and/or           *
 *  modify it under the terms of the GNU General Public License as published  *
 *  by the Free Software Foundation, either version 3 of the License, or      *
 *  (at your option) any later version.                                       *
 *                                                                            *
 *  povray_figures is distributed in the hope that it will be useful          *
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of            *
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             *
 *  GNU General Public License for more details.                              *
 *                                                                            *
 *  You should have received a copy of the GNU General Public License         *
 *  along with povray_figures.  If not, see <https://www.gnu.org/licenses/>.  *
 ******************************************************************************
 *  Purpose:                                                                  *
 *      This is a modification of Jim Belk's drawing, who graciously          *
 *      dedicated the image and code to the public domain. The modifications  *
 *      are just to learn how POV-Ray works, and not to improve the image.    *
 ******************************************************************************/

#include "colors.inc"

background {
    color White
}

global_settings {
    assumed_gamma 1.0
}

camera {
    location <0.0, 0.0, -25.0>
    right <1.0, 0.0, 0.0>
    up <0.0, 1.0, 0.0>
    look_at  <0.0, 0.0, 0.0>
    angle 5.0
}


light_source {

    <0.0, 20.0, -50.0>
    color White
  
    /*  Very slow, decrease 10 to 2 for experiments.                          */
    area_light <5.0, 0.0, 0.0>, <0.0, 5.0, 0.0>, 10, 10
    adaptive 3
}

/*  Radius of the tube used to represent the knot.                            */
#declare TUBE_THICKNESS = 0.08;

sphere_sweep {

    /*  Smooth cubic splining using 72 samples. These coordinates are found   *
     *  in Jim Belk's original program.                                       */
    cubic_spline 72,
    <-0.743926, -0.323044, -0.037454>, TUBE_THICKNESS
    <-0.712114, -0.435690, +0.029815>, TUBE_THICKNESS
    <-0.657593, -0.539064, +0.097343>, TUBE_THICKNESS
    <-0.580001, -0.628497, +0.162174>, TUBE_THICKNESS
    <-0.480129, -0.698632, +0.220002>, TUBE_THICKNESS
    <-0.361141, -0.743997, +0.265224>, TUBE_THICKNESS
    <-0.229443, -0.759909, +0.291525>, TUBE_THICKNESS
    <-0.094983, -0.743633, +0.292938>, TUBE_THICKNESS
    <+0.029011, -0.695571, +0.265328>, TUBE_THICKNESS
    <+0.127664, -0.620327, +0.208148>, TUBE_THICKNESS
    <+0.187943, -0.526887, +0.125706>, TUBE_THICKNESS
    <+0.202792, -0.426210, +0.027286>, TUBE_THICKNESS
    <+0.171110, -0.325910, -0.070978>, TUBE_THICKNESS
    <+0.097292, -0.227153, -0.144044>, TUBE_THICKNESS
    <-0.003035, -0.130199, -0.167725>, TUBE_THICKNESS
    <-0.105695, -0.039586, -0.134719>, TUBE_THICKNESS
    <-0.192521, +0.042688, -0.058424>, TUBE_THICKNESS
    <-0.258908, +0.125519, +0.036468>, TUBE_THICKNESS
    <-0.306283, +0.222655, +0.126588>, TUBE_THICKNESS
    <-0.332389, +0.339841, +0.196062>, TUBE_THICKNESS
    <-0.332078, +0.471357, +0.236057>, TUBE_THICKNESS
    <-0.302211, +0.604663, +0.243255>, TUBE_THICKNESS
    <-0.243592, +0.725428, +0.218848>, TUBE_THICKNESS
    <-0.160735, +0.820618, +0.167595>, TUBE_THICKNESS
    <-0.060940, +0.880171, +0.096838>, TUBE_THICKNESS
    <+0.046713, +0.897821, +0.015653>, TUBE_THICKNESS
    <+0.152292, +0.871534, -0.065868>, TUBE_THICKNESS
    <+0.245965, +0.803746, -0.137469>, TUBE_THICKNESS
    <+0.318940, +0.701332, -0.189551>, TUBE_THICKNESS
    <+0.364616, +0.575224, -0.214088>, TUBE_THICKNESS
    <+0.379764, +0.439493, -0.205788>, TUBE_THICKNESS
    <+0.365485, +0.309260, -0.163290>, TUBE_THICKNESS
    <+0.327266, +0.196744, -0.090340>, TUBE_THICKNESS
    <+0.271630, +0.105340, +0.002983>, TUBE_THICKNESS
    <+0.200056, +0.025478, +0.098420>, TUBE_THICKNESS
    <+0.110533, -0.058702, +0.170319>, TUBE_THICKNESS
    <+0.009636, -0.154385, +0.194440>, TUBE_THICKNESS
    <-0.082313, -0.256527, +0.160722>, TUBE_THICKNESS
    <-0.141554, -0.357878, +0.079511>, TUBE_THICKNESS
    <-0.154315, -0.455221, -0.024757>, TUBE_THICKNESS
    <-0.118171, -0.545017, -0.127820>, TUBE_THICKNESS
    <-0.037233, -0.619017, -0.213077>, TUBE_THICKNESS
    <+0.077787, -0.667792, -0.270360>, TUBE_THICKNESS
    <+0.211105, -0.685624, -0.295104>, TUBE_THICKNESS
    <+0.346655, -0.671631, -0.288075>, TUBE_THICKNESS
    <+0.471388, -0.628678, -0.253863>, TUBE_THICKNESS
    <+0.576552, -0.561812, -0.199031>, TUBE_THICKNESS
    <+0.657697, -0.476737, -0.130543>, TUBE_THICKNESS
    <+0.713605, -0.378719, -0.054650>, TUBE_THICKNESS
    <+0.744743, -0.271947, +0.023551>, TUBE_THICKNESS
    <+0.751811, -0.159612, +0.099833>, TUBE_THICKNESS
    <+0.734770, -0.044436, +0.170189>, TUBE_THICKNESS
    <+0.692907, +0.070506, +0.230027>, TUBE_THICKNESS
    <+0.625781, +0.180870, +0.273654>, TUBE_THICKNESS
    <+0.534857, +0.280625, +0.294572>, TUBE_THICKNESS
    <+0.425349, +0.362575, +0.286687>, TUBE_THICKNESS
    <+0.306944, +0.420442, +0.246406>, TUBE_THICKNESS
    <+0.191510, +0.452695, +0.174910>, TUBE_THICKNESS
    <+0.086657, +0.465806, +0.079460>, TUBE_THICKNESS
    <-0.010842, +0.470164, -0.026703>, TUBE_THICKNESS
    <-0.112128, +0.467972, -0.127405>, TUBE_THICKNESS
    <-0.224385, +0.450555, -0.208965>, TUBE_THICKNESS
    <-0.344022, +0.409211, -0.263201>, TUBE_THICKNESS
    <-0.460559, +0.342175, -0.287556>, TUBE_THICKNESS
    <-0.563557, +0.253287, -0.284262>, TUBE_THICKNESS
    <-0.646168, +0.148681, -0.258480>, TUBE_THICKNESS
    <-0.705409, +0.034362, -0.216228>, TUBE_THICKNESS
    <-0.740931, -0.084795, -0.162849>, TUBE_THICKNESS
    <-0.753536, -0.204989, -0.102349>, TUBE_THICKNESS
    <-0.743926, -0.323044, -0.037454>, TUBE_THICKNESS
    <-0.712114, -0.435690, +0.029815>, TUBE_THICKNESS
    <-0.657593, -0.539064, +0.097343>, TUBE_THICKNESS

    /*  Color for the knot (the tube created using sphere-sweep).             */
    pigment {
        /*  POV-Ray uses real-valued RGB. Inputs are 0 to 1. The following is *
         *  for blue-green (25% green, 100% blue).                            */
        color rgb <0.0, 0.25, 1.0>
    }

    finish {
        ambient 0.15
        diffuse 0.85
        brilliance 2.0
        phong 0.25
        phong_size 7
    }
}

plane {
    <0.0, 0.0, -1.0>, -0.38
    pigment {
        color White
    }

    finish {
        ambient 0.35
        diffuse 0.65
    }
}
