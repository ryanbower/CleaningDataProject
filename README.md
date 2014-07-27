run_analyis.R ReadMe
========================================================

  This is the Readme file for the run_analysis.R program by Ryan Bower.

  This program is written to take input from the "Human Activity Recognition Using Smartphones Data Set", [located here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip].  The program ingests this data, processes it, and produces and tidy summary dataset.
  
  The first step of the process (Section A of the code) dowloads the file and inputs the specific datsets that are needed, in this case:
  <ul>
  <li>y_train.txt</li>
  <li>x_train.txt</li>
  <li>subject_train.txt</li>
  <li>y_test.txt</li>
  <li>x_test.txt</li>
  <li>subject_test.txt</li>
  <li>features.txt</li></ul>
  
  The next portion of the code addresses task 4 on the project list--adding appropriate names to the variable names. I thought that it was easiest to simply use the given features. I stepped through the features file, assigning the column names of both the test and the training datasets with these variable names.
  
  The next section merges the test and training datasets together, accomplishing task 1 of the project.  This is a simple set of merges.  I chose to cbind the subjects, activities, and variable files together first, creating one big test dataset and one big training dataset, before merging them all together with a simple rbind.
  
  After the merge, I used a grep to filter the column names for task 3. The grep searched for the columns that included the text "mean(" or "std(".  I chose to include the first parenthesis becuase I only wanted variables that include that as the description, as specified in the project assignment.  (There were colunms that included mean or std but did not meat this restriction.)

  With a filtered list of measurments I proceeded to task 5 (task 4 having been completed first), to calculate means and standard deviations of each variable for each subject and activity.  This was accomplished easily be first melting the dataset into a long data-file that included one measurement for each variable and each subject and activity.  Then, after the melt, I cast back to an average and standard deviation measure for each subject-activity pair.  Then, I renamed each column to include a prefix "av_" or "sd_" to indicate which type of measure each produced.
  
  Finally, I exported this file as a text file for future use.
  