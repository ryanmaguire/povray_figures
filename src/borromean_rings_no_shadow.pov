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
 *      Render options:                                                       *
 *          povray Antialias=True Height=512 Width=512                        *
 ******************************************************************************/
#include "colors.inc"

background {
    color White
}

global_settings {
    assumed_gamma 1.0
}

camera {
    location <0.0, 0.0, -2.5E5>
    right <1.0, 0.0, 0.0>
    up <0.0, 1.0, 0.0>
    look_at <0.0, 0.0, 0.0>
    angle 5.0E-04
}

light_source {
    <0.0, 2.0E5, -5.0E5>
    color White
    area_light <5.0E4, 0.0, 0.0>, <0.0, 5.0E4, 0.0>, 10, 10
    adaptive 3
}

/*  Thickness of the three tubes representing the links.                      */
#declare MINOR_RADIUS = 0.07;

/*  Azimuthal radius of the tubes.                                            */
#declare MAJOR_RADIUS = 0.6;

/*  Precomputed values of sine and cosine.                                    */
#declare SIN_PI_BY_6 = 0.5;
#declare COS_PI_BY_6 = 0.8660254037844387;

/*  Separation factor for the components of the link. The "gap" size.         */
#declare sep = 0.2;

/*  Finish used for each of the link components of the Borromean rings.       */
#declare SHINY_FINISH = finish {
    ambient 0.15
    diffuse 0.85
    brilliance 2
    phong 0.25
    phong_size 7.5
}

#declare GREEN_TORUS = torus {
    MAJOR_RADIUS, MINOR_RADIUS
    rotate -90.0 * x
    translate 0.3*<COS_PI_BY_6, SIN_PI_BY_6, 0.0> + <0.0, 0.1, 0.0>

    pigment {
        color rgb <0.0, 1.00, 0.0>
    }

    finish {
        SHINY_FINISH
    }
}

#declare RED_TORUS = torus {
    MAJOR_RADIUS, MINOR_RADIUS
    rotate -90.0 * x
    translate 0.3*<-COS_PI_BY_6, SIN_PI_BY_6, 0.0> + <0.0, 0.1, 0.0>

    pigment {
      color rgb <1.0, 0.0, 0.0>
    }

    finish {
        SHINY_FINISH
    }
}

#declare BLUE_TORUS = torus {
    MAJOR_RADIUS, MINOR_RADIUS
    rotate -90.0 * x
    translate 0.3 * <0.0, -1.0, 0.0> + <0.0, 0.1, 0.0>

    pigment {
        color rgb <0.0, 0.25, 1.0>
    }

    finish {
        SHINY_FINISH
    }
}

object {
    RED_TORUS
}

object {
    GREEN_TORUS
}

object {
    BLUE_TORUS
}

intersection {
    object {
        RED_TORUS translate <0.0, 0.0, -100.0 -sep>
    }

    cylinder {
        <0.0, -0.3, 0.0>, <0.0, -0.3, -105.0>, 0.25
    }
}

intersection {
    object {
        GREEN_TORUS translate <0.0, 0.0, -100.0>
    }

    cylinder {
        <0.0, -0.3, 0.0>, <0.0, -0.3, -105.0>, 0.25
    }
}

intersection {
    object {
        BLUE_TORUS translate <0.0, 0.0, -100.0 - sep>
    }

    cylinder {
        <-0.58, -0.24, -95>, <-0.58, -0.24, -105.0>, 0.25
    }
}

intersection {
    object {
        RED_TORUS translate <0.0, 0.0, -100.0>
    }

    cylinder {
        <-0.58, -0.24, -95.0>, <-0.58, -0.24, -105.0>, 0.25
    }
}

intersection {
    object {
        GREEN_TORUS translate <0.0, 0.0, -100.0 - sep>
    }

    cylinder {
        <0.58, -0.24, -95.0>, <0.58, -0.24, -105.0>, 0.25
    }
}

intersection {
    object {
        BLUE_TORUS translate <0.0, 0.0, -100.0>
    }

    cylinder {
        <0.58, -0.24, -95.0>, <0.58, -0.24, -105.0>, 0.25
    }
}

intersection {
    object {
        GREEN_TORUS translate <0.0, 0.0, -100.0 - sep>
    }

    cylinder {
        <-0.29, 0.35, -95.0>, <-0.29, 0.35, -105.0>, 0.25
    }
}

intersection {
    object {
        BLUE_TORUS translate <0,0,-100>
    }

    cylinder {
        <-0.29, 0.35, -95.0>, <-0.29, 0.35, -105.0>, 0.25
    }
}

intersection {
    object {
        BLUE_TORUS translate <0.0, 0.0, -100.0 - sep>
    }

    cylinder {
        <0.29, 0.35, -95.0>, <0.29, 0.35, -105.0>, 0.25
    }
}

intersection {
    object {
        RED_TORUS translate <0.0, 0.0, -100.0>
    }

    cylinder {
        <0.29, 0.35, -95.0>, <0.29, 0.35, -105.0>, 0.25
    }
}

intersection {
    object {
        RED_TORUS translate <0.0, 0.0, -100.0 - sep>
    }

    cylinder {
        <0.0, 0.85, -95.0>, <0.0, 0.85, -105.0>, 0.25
    }
}

intersection {
    object {
        GREEN_TORUS translate <0.0, 0.0, -100.0>
    }

    cylinder {
        <0.0, 0.85, -95.0>, <0.0, 0.85, -105.0>, 0.25
    }
}
