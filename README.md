# Matlab---PredictionToolforProfessionalDota2Matches
A script for training and testing a tool for predicting the outcomes in profressional Dota 2 matches using Machine Learning Gradient Descent Algorithm 

The following are two Machine Learning Scripts I made in 2015 using Matlab.

They use the Gradient Descent Algorithm with Supervised Learning.

They are based on the Machine Learning Course imparted by Andrew Ng, but they have been redesigned to fit my goals, which is to create a tool using ML for predicting the outcome of a Professional Match that will be played by any two Professinal Dota 2 Teams.

The first Script Dota2WinProbability-TrainGradientDescent.txt is the Training script algorithm in which the data fed consistes of two text files:
	
	1.- DataTrain-Teams.txt contains the teams that have already played against each other, the teams names have been swapped by numbers in order for the script to read the data easily (You can find the numbers for all the teams in TeamsListNames&Numbers.txt), the nomenclature used in the file is:
			
			(First team number),(Second team number)
	
	2.- DataTrain-Result.txt contains the result for all the matches that were played, the nomclature is: 
			
			1 = Win, 0 = Lose

The equation use for training the ML Algorithm Gradient Descent is:
		
		f(x) = 1 + x + y + sqrt(xy) + x^2 + y^2 + xy + ysqrt(x)

With the current data it has a 65% accuracy

The second Script Dota2WinProbability-TestGradientDescent.txt is used for testing wether the training was succesful to our own terms of course, it has the theta values defined in the variable theta, it performs the accuracy test with the current values and plots the result for better visual inspection and it then prints the Train accuracy in the command line.

You may reconfigure and change the code to fit your needs.
