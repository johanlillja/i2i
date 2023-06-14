# i2i executable
Install the program through the executable. The installer will automatically install all neccecary components needed to run the application.

# Manual

When running the application you will be prompted to load .mzML files. To open the file explorer click the load mzML files button and navigate to
the folder containing a set of .mzML data.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure1.png?raw=true)

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure2.png?raw=true)

When loading a data set for the first time it will take a short while for the parallel pool to initiate, this is normal.

Once the data set is loaded the number of files indicator will be updated and so will the available scan filters in the dropdown list be.

Start loading a target mass list by clicking the button and navigate to a folder with a speadsheet with accurate masses in the first column
and optionally putative annotations in the  second column.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure3.png?raw=true)

Define the ppm mass tolerance in the Tolerance box and select an appropriate scan filter before clicking on the Find Peaks button.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure4.png?raw=true)

The m/z values have now been loaded and you can change ion image by either clicking i the list on the left or using the buttons above the image.
Image adjustments, such as changing the color scale, colormap, aspect ratio, colormap, ROI, or normalization can now be done on the loaded data set.

If the user changes mass tolerance or scan filter the Find peaks button needs to be pressed again.
