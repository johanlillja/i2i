# i2i executable
Install the program through the executable. The installer will automatically install all necessary components needed to run the application. Or run the app from within a MATLAB environment with the appropriate add-ons and source code specified in the path.

# Manual
The .raw files first need to be converted to .mzML and put in a folder with only .mzML files for the specified experiment. This is necessary because i2i will load all .mzML files in the specified folder. Suggested settings for .mzML conversion are outlined in the figure below.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/msconvert.png?raw=true)

When running the application you will be prompted to load .mzML files. To open the file explorer click the 'load mzML files' button and navigate to the folder containing a set of .mzML data.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure1.png?raw=true)

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure2.png?raw=true)

When loading a data set for the first time it will take a short while for the parallel pool to initiate, this is normal.
After the files are loaded the ‘load mzML files’ button will be greyed out and not work unless the user hits the reset all button.
The green light indicates that the files have been loaded properly.

Once the data set is loaded the number of files indicator will be updated and so will the available scan filters in the dropdown list.

Start loading a target mass list by clicking the button and navigate to a folder with a spreadsheet with m/z in the first column and optionally putative annotations in the second column. To load a new analyte list hit the ‘reset data’ data button which enables a new analyte list spreadsheet can be loaded. 

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure3.png?raw=true)

Define the ppm mass tolerance in the ‘Tolerance’ box and select an appropriate scan filter before clicking on the Find Peaks button.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure4.png?raw=true)

If the user changes mass tolerance or scan filter the Find peaks button needs to be pressed again.

The m/z values have now been loaded and you can change ion image by either clicking on the list on the left or using the buttons above the image.

Image adjustments, such as changing the color scale, colormap, color scale adjustment to a specified percentile, percentage or value, aspect ratio, or normalization can now be done on the loaded data set.

Ion images can be exported as .esp, .png, and .tiff images; a .csv of all pixel values; or as a .mat file.

Normalization can be performed on an internal standard (as specified in the analyte spreadsheet), if the concentration and response factor is specified the
pixel intensity values be the detected concentration.

ROI analysis is done by first specifying a region to be studied using the Get ROI button and drawing on the displayed ion image. The mean, median, and
standard deviation of the pixel values will be updated in the boxes on the right. The ROI mask drawn on one image can be applied to any other ion image
in the same data set, either within the same session by ticking the ‘apply to all’ checkbox, or saved (‘Save ROI mask’ button) and loaded (‘Load ROI mask’ button) in another session of the program. 


# Non-targeted analysis

The non-targeted analysis is accessed through the tab in the left-hand corner of the GUI

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure6.png?raw=true)

The user defines the search space for the non-targeted algorithm

* Scan filter
* Mass accuracy tolerance
* Min and Max detection frequency within the defined region
* Min and Max intensity cutoff for the features
* Fold change, if comparing two regions

The min and max detection frequency is a measure of how many spectra within the defined region contain a specific feature.

Either load saved ROI masks from the targeted analysis (saved as the 'timestamps' file for ROI analysis) or slide the toggle to ‘Draw ROI’ and define
a reference ion and draw the ROI using the mouse. Then hit find peaks to start the search with the defined search parameters.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure7.png?raw=true)

After the search has been completed the data can be explored similarly to how it is done within the targeted analysis part, with the list on the left of the image
 and buttons above. The same image exportation capabilities, image color adjustment, and normalization as in the targeted workflow are available here as well.

![alt text](https://github.com/johanlillja/i2i/blob/main/compiled_version/figures_manual/figure8.png?raw=true)

Features of interest can be saved to the greyed-out list by clicking on the save feature to list button and exported as a .csv.

Metadata from the non-targeted calculations for all detected features can also be exported. Including, Feature group,
Average m/z,	Standard deviation of m/z,	max - min of m/z,	Average Intensity,	Max intensity,	Standard deviation of intensity,
	Number of spectra,	Fold change (region 1 over region 2),	t-value


