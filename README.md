## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, which has been copied from the following link:

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a>

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following is the descriptions of the 9 variables in the dataset:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data





When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. I have loaded the entire
data in directory in directory <b>"~/Documents/data"</b>.
Kindly make sure your computer has enough memory to work with the entire data.

* We will only be using data from the dates 2007-02-01 and
2007-02-02.

## Plot the grapg and save as PNG file.





* The code reads the entire data as "character", susets the data containing the dates
"1/2/2007" and "2/2/2007", removes the rows containg "?" if any, converts the classes
to required parameters and joins the "Date" and "Time" variables (when necessary).

* After cleaning/transforming the data, the code calls the function png() with
required parameters, plots the grah, saves the device into your working directory.
