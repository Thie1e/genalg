I played around with this fork of the genalg package to modify the rbga.bin.R function:

- works with zeroToOneRatio < 1
- can set the zeroToOneRatio in later generations to the zeroToOneRatio of the best chromosome of previous generations automatically
- can plot the above mentioned process while the function is running
- can save the population to disk periodically
- can stop the algorithm if a specified time limit is reached
