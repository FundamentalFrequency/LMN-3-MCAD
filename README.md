# LMN-3-MCAD

![screenshot of Assembly](https://github.com/stonepreston/LMN-3-MCAD/blob/main/.github/images/assembly.png)

This repository contains the [FreeCAD](https://www.freecadweb.org/) project files for the LMN-3 Case.

It is a part of the larger LMN-3 project, composed of the following
repositories:
- [LMN-3-Build-Guide](https://github.com/stonepreston/LMN-3-Build-Guide)
- [LMN-3-DAW](https://github.com/stonepreston/LMN-3-DAW)
- [LMN-3-MCAD](https://github.com/stonepreston/LMN-3-MCAD)
- [LMN-3-ECAD](https://github.com/stonepreston/LMN-3-ECAD)
- [LMN-3-Firmware](https://github.com/stonepreston/LMN-3-Firmware)
- [LMN-3-Emulator](https://github.com/stonepreston/LMN-3-Emulator)
- [LMN-3-Keycaps](https://github.com/stonepreston/LMN-3-Keycaps)

If you would like to support the project, please consider becoming a [sponsor](https://github.com/sponsors/stonepreston).

## Releases
Releases containing DXF and STL files are available [here](https://github.com/stonepreston/LMN-3-MCAD/releases). 

## Manufacturing

### Layers
The case is designed to be assembled from multiple laser-cut acrylic or wood layers. DXF files are available in the releases [here](https://github.com/stonepreston/LMN-3-MCAD/releases). 3-D printing these layers is also possible. 

| Layer Name   | Layer Thickness (mm) | Quantity |
|--------------|----------------------|----------|
| Bottom Layer | 3                    | 1        |
| Lower Layer  | 3                    | 6        |
| Top Layer    | 3                    | 2        |
| Switch Layer | 3                    | 1        |

Note that although 6 lower layers are recommended, you may end up only needing 5. Manufacturing an extra lower layer is helpful in case the thickness of your acrylic is a bit less than 3 mm. With so many layers, the difference adds up, and your case can end up being a bit thinner than intended. Having an extra lower layer to throw in can help with that issue. 

### Fasteners

| Fastener     | Quantity |
|--------------|----------|
| M2.5x30 Bolt | 8        |
| M2.5x12 Bolt | 4        |
| M2.5 Nut     | 8        |

The M2.5x30 bolts are for fastening the layers together. The M2.5x12 bolts are for fastening the Raspberry Pi to the bottom of the case (they screw into the standoffs that come with the screen.)

It is also advisable to purchase some adhesive rubber feet for the bottom of the case. 

### 3-D Printing
You can also 3-D print all the layers using the STL files provided in the [releases](https://github.com/stonepreston/LMN-3-MCAD/releases). However, depending on the size of your print bed you may need to post-process the files a bit in order to fit them on your printer bed. You can cut them in half (maybe use a stair-step-shaped cut to provide some surface area for gluing) and then print parts in 2 pieces. Post-processed STL files are not provided, as everyone's printer is different, and it would be too much work to provide enough sizes to keep everyone happy. Feel free to modify the FreeCAD part files yourself and re-export modified STLs, or manipulate the released STL meshes. 

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

#### Teensy 4.1
- [3-D Model](https://www.snapeda.com/parts/DEV-16771/SparkFun%20Electronics/view-part/?t=teensy)

#### Thumbstick (SparkFun COM-09032)
- [3-D Model](https://www.snapeda.com/parts/COM-09032/SparkFun%20Electronics/view-part/?t=joystick)

#### Keyboard Switches (Keyswitch Kicad Library)
- [3-D Models](https://github.com/perigoso/keyswitch-kicad-library)

## License
Licensed under the [CC-by-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) license. 
