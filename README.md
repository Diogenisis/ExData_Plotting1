## Summary

This repository has been forked from 
    https://github.com/rdpeng/ExData_Plotting1
and updated as required by the course project.

The project uses data from the "Individual household electric power consumption Data Set" from the UC Irvine Machine Learning Repository.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

<ol>
<li>Date: Date in format dd/mm/yyyy</li>
<li>Time: time in format hh:mm:ss</li>
<li>Global_active_power: household global minute-averaged active power (in kilowatt)</li>
<li>Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
<li>Voltage: minute-averaged voltage (in volt)</li>
<li>Global_intensity: household global minute-averaged current intensity (in ampere)</li>
<li>Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).</li>
<li>Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.</li>
<li>Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values
are available.</li>
</ol>

*** Only data from the dates 2007-02-01 and 2007-02-02 is used. The original data is read and subsetted for the two days in qestion. Then it is cleaned and written to file 
"household_power_consumption_cleaned.txt". For details see "Cleaning_HPC.R". 
These two files are in addition to the file requested for the project.

