# Bouncy-Curtain
ImageJ/FIJI macro to generate an animated, curtain-style comparison of two images:

<img src="https://github.com/JoachimGoedhart/Bouncy-Curtain/blob/main/Cheek_Segmented_Curtain.gif" width="400"/>



---------------

There are several platforms for the 'curtain-style' comparison of two images. Some examples are listed here:

* [Napari curtain](https://github.com/haesleinhuepf/napari-curtain)
* [Curtain tool for ImageJ](https://gist.github.com/mutterer/0c2a8692a3bedf7775fa79e28ce93598)
* [WebbCompare](https://www.webbcompare.com/)

This repo holds an ImageJ/FIJI macro that generates an animated version of a curtain that bounces back-and-forth between two images. This may be useful in presentations or for posting GIFs on social media.

### Input
The input for the macro is a stack of two images. The first image is shown at the start of the animation and the second image is revealed.
To generate a stack from two images, use `Image > Stack > Images to Stack`

### Output

By default, the output is a stack of 84 images. In ImageJ/FIJI this can be saved as a GIF and used in powerpoint or for posting on X.

#### Examples

Comparing a plot on a light and a dark background, generated with [EzReverse](https://github.com/Morwey/ezreverse):

img src="https://github.com/JoachimGoedhart/Bouncy-Curtain/blob/main/Plot_EzReverse_Curtain.gif" width="400"/>

-------------

Comparing images from the Hubble and Webb telescope, inspired by [WebbCompare](https://www.webbcompare.com/):

img src="https://github.com/JoachimGoedhart/Bouncy-Curtain/blob/main/Tarantula_Curtain.gif" width="400"/>



