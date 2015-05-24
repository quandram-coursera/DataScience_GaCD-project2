---
title: 'Getting & Cleaning Data project: Readme'
author: "James Longman"
date: "Wednesday, May 13, 2015"
output: html_document
---

# CodeBook.md
This file articulates the logic of how the variable names are constructed along with a description of how the data was captured and what it means.

There is then a list of all variables which are in the dataset.

# run_analysis.R

This file performs the data reading and cleaning.
Initially loading all relevant data in to variables and then using grep to rename some of the variables to be more friendly and interpretable.

The variable names and activity labels are then applied to the main dataset before the dataset is reduced to retain just those variables that relate to mean and standard deviation, agian using grep.

Finally using the dplyr package the remaining data is grouped and summarised to producet the clean data set required giving the averages for each variable by acticity & subject combination.