# GettingAndCleaningDataProject
This repo contains scripts and documentation for the final project for the "Getting and Cleaning Data" course.

## run_analysis.R
Contains code that reads in raw data and creates two data sets according to the projct guidelines
1. WearableData1_GD.txt: Tidy data set containing means and standard deviations for each movement type, identified by a participant ID and an activity.
2. WearableData2_GD.txt: Tidy data set containing averages of data for each participant/activity combination. Each participant has 6 observations of averages on the mean/st.devs data - one for each activity.

## Codebook.md
Contains data names and variables and step by step instructions for creating each data set in run_analysis.R

## WearableData1_GD.txt
Contains data per requirements 1-4 of the project guidelines (may not be necessary to look at according to forum). Contains tidy data set with all means/standard deviations in the raw data - merged training and test day participants (30 participants in total). 

## WearableData2_GD.txt
Contains data per requirement 5 of the project guildelines. For each participant, there are six observations (one per activity). Each row has an average for each mean/standard deviation variable saved in WearableData1_GD.txt. 
