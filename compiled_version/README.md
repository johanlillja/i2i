# i2i executable
Install the program through the executable. The installer will automatically install all neccecary components needed to run the application.

# Manual
The .raw files first needs to be converted to .mzML and put in a folder with only .mzML files for the specified experiment because i2i will load all .mzML
files in the specified folder. Suggested settings for .mzML conversion is outlined in the figure below.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/msconvert.png?raw=true)

When running the application you will be prompted to load .mzML files. To open the file explorer click the load mzML files button and navigate to
the folder containing a set of .mzML data.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure1.png?raw=true)

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure2.png?raw=true)

When loading a data set for the first time it will take a short while for the parallel pool to initiate, this is normal.
After the files are loaded the Load mzML files button will be greyed out and not work unless the user hits the reset all button.
The green light indicates that the files have been loaded properly.

Once the data set is loaded the number of files indicator will be updated and so will the available scan filters in the dropdown list be.

Start loading a target mass list by clicking the button and navigate to a folder with a speadsheet with m/z in the first column
and optionally putative annotations in the  second column.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure3.png?raw=true)

Define the ppm mass tolerance in the Tolerance box and select an appropriate scan filter before clicking on the Find Peaks button.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure4.png?raw=true)

The m/z values have now been loaded and you can change ion image by either clicking i the list on the left or using the buttons above the image.

Image adjustments, such as changing the color scale, colormap, color scale adjustment to a specified percentile, percentage or value, aspect ratio, colormap,
 ROI, or normalization can now be done on the loaded data set.

Ion images can be exported as .esp, .png, and .tiff images; a .csv of all pixel values; or as a .mat file.

Normalization can be performed on an internal standard (as specified in the analyte list), if the concentration and response factor is specified the
pixel intensity values reflect the concentration detected.

ROI analysis is done by first specifying a region to studeid using the Get ROI button and drawing on the displayed ion image. The mean, median, and
standard deviation of the pixel values will be updated in the boxes on the right. The same roi mask drawn on one image can be applied to any other ion image
in the same data set, either within the same session or saved and loaded in another session of the program. 


If the user changes mass tolerance or scan filter the Find peaks button needs to be pressed again.

# Non targeted analysis

The non-targeted analysis is accessed through the tab in the left hand corner of the GUI

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure6.png?raw=true)

The user defines the search space for the non targeted algorithm

* Scan filter
* Mass accuracy tolerance
* Min and Max detection frequency within the defined region
* Min and Max intenisty cutoff for the features
* If comparing two regions, fold change

The min and max detection frequency is a measure of how many spectra within the defined region contains a specific feature.

Either load saved ROI masks from the targeted analysis (saved as the 'timestamps' file for ROI analysis) or slide the toggle to Draw ROI mode and define
a reference ion. Then hit find peaks to start the search with the defined search parameters.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure7.png?raw=true)

After the search has completed the data can be explored in a similar fashion to the targeted analysis with the list on the left of the image
 and buttons above. The same image exportation capabilities, image color adjustment, and normalization as in the targeted workflow is available here as well.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure8.png?raw=true)

Features of interest can be saved to the greyed out list by clicking on the save feature to list button and exported as a .csv.

Metadata from the non-targeted calculations for all detected features can also be exported. Including, Feature group,
Average m/z,	Standard deviation of m/z,	max - min of m/z,	Average Intensity,	Max intensity,	Standard deviation of intensity,
	Number of spectra,	Fold change (region 1 over region 2),	t-value
