# LMN-3-MCAD

![screenshot of Assembly](https://github.com/stonepreston/LMN-3-MCAD/blob/main/.github/images/assembly.png)

This repository contains the [FreeCAD](https://www.freecadweb.org/) project files for the LMN-3 Case.

It is a part of the larger LMN-3 project, composed of the following
repositories:
- [LMN-3-DAW](https://github.com/stonepreston/LMN-3-DAW)
- [LMN-3-MCAD](https://github.com/stonepreston/LMN-3-MCAD)
- [LMN-3-ECAD](https://github.com/stonepreston/LMN-3-ECAD)
- [LMN-3-Firmware](https://github.com/stonepreston/LMN-3-Firmware)
- [LMN-3-Emulator](https://github.com/stonepreston/LMN-3-Emulator)
- [LMN-3-Keycaps](https://github.com/stonepreston/LMN-3-Keycaps)

## Manufacturing

### Layers
The case is designed to be assembled from multiple laser-cut acrylic layers. 3-D printing these layers is also possible. 

| Layer Name   | Layer Thickness (mm) | Quantity |
|--------------|----------------------|----------|
| Bottom Layer | 3                    | 1        |
| Lower Layer  | 3                    | 5        |
| Top Layer    | 3                    | 2        |
| Switch Layer | 3                    | 1        |

### Fasteners

| Fastener     | Quantity |
|--------------|----------|
| M2.5x30 Bolt | 8        |
| M2.5x3 Bolt  | 4        |
| M2.5 Nut     | 12       |

### 3-D Printing
You can also 3-D print all the parts if you wish, however depending on the size of your print bed you may need to post-process the part files a bit in order to fit them on your printer bed. You can cut them in half (maybe use a stair-step-shaped cut to provide some surface area for gluing) and then print parts in 2 pieces. Post-processed STL files are not provided, as everyone's printer is different, and it would be too much work to provide enough sizes to keep everyone happy. You are welcome to modify the FreeCAD part files yourself :)

If you would like to process the parts using FreeCAD, you may find [this video](https://www.youtube.com/watch?v=tzHkQaHgrfQ) helpful. 

## Contributing
### FreeCAD
The files in this repository compose a FreeCAD 19 project. A full assembly is provided in `assemblies/` and individual part files can be found in their respective folders. Additional STEP files are also included for the PCB and other objects. 

#### Some Design Rules
##### The Topological Naming Problem
FreeCAD suffers from something known as the topological naming problem. What that is is outside the scope of this document, but remember this: DO NOT SKETCH DIRECTLY ON PART FACES. If you draw directly on part faces, you will face this problem at some point. It is therefore best to not sketch on faces ever. Sketch on translated datum planes or origin planes, but never a face of a part. 

##### The Master Spreadsheet
FreeCAD includes a spreadsheet concept. Part parameters are all enumerated in the master spreadsheet, located within the `master.FCStd` file. All parts should use the values provided in this spreadsheet when dimensioning, in order to keep the design as parametric as possible. 

## Thanks
This project would not be possible without the following free and open source projects:
- [FreeCAD](https://www.freecadweb.org/)

### Sources for 3-D Models
#### Raspberry Pi 4
- [3-D Model](https://grabcad.com/library/raspberry-pi-4-model-b-1)

#### Encoders (Alps EC11E09244AQ)
- [3-D Model](https://www.snapeda.com/parts/EC11E09244AQ/ALPS/view-part/?welcome=home&t=EC11E)

### Teensy 4.1
- [3-D Model](https://www.snapeda.com/parts/DEV-16771/SparkFun%20Electronics/view-part/?t=teensy)

#### Thumbstick (SparkFun COM-09032)
- [3-D Model](https://www.snapeda.com/parts/COM-09032/SparkFun%20Electronics/view-part/?t=joystick)

#### Keyboard Switches (Keyswitch Kicad Library)
- [3-D Models](https://github.com/perigoso/keyswitch-kicad-library)

## License
Licensed under the [CERN Open Hardware Licence Version 2 - Strongly Reciprocal](https://ohwr.org/cern_ohl_s_v2.txt) with the following exceptions:

The 3-D models for the encoders, thumbstick, and Teensy 4.1 that are present in the PCB files are licensed under the [CC-by-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) license and were obtained from [SnapEDA](https://www.snapeda.com). 

The 3-D models of the key switches are from the [keyswitch-kicad-library](https://github.com/perigoso/keyswitch-kicad-library) which requires the following notice be included:
```
The MIT License (MIT)

Copyright (c) 2019-2022 keyswitch-kicad-library contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software. with the exception that
to the extent that the creation of electronic designs that use "Licensed Material"
can be considered to be 'Adapted Material', the copyright holder waives
this condition of the license with respect to these designs and any generated files
which use data provided as part of the "Licensed Material".

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
