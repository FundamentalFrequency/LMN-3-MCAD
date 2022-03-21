include <./KeyV2/includes.scad>

// row 0
for (x = [5:1:9]) {
    translate_u(x,0) dss_row(2) key();
} 

// row 1
for (x = [5:1:9]) {
    translate_u(x,-1) dss_row(2) key();
} 

// row 2
for (x = [5:1:15]) {
    translate_u(x,-2) dss_row(2) key();
} 

// row 3
for (x = [3:1:15]) {
    if (x != 6 && x != 9 && x != 13) {
        translate_u(x - .5,-3) dss_row(2) key();
    }
} 

// row 4
for (x = [2:1:15]) {
    translate_u(x,-4) dss_row(2) key();
} 



