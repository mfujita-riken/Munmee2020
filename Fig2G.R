######################
# Load the dataFrame
#####################

> df <- read.csv("input_file.csv", header=T)

> df
   

#############################
##  Change the order of the bars, from largest to smallest
## To reorder the bars according to "MutationCounts", assign new levels to the "Sample" factors using transform.
################################

> df2 <- transform(df, Sample = reorder(Sample, -MutationCounts))
> df2


####################
## Load the ggplot2 package
############
require(ggplot2)




#################################
## To generate customized Barplot
################################


 ggplot(df2, aes(x=Sample, y= MutationCounts)) + geom_bar(stat="identity", position = position_stack(reverse = TRUE), aes(fill=Signature)) + ylab("Signature Activities") + ggtitle("Signature Activities in ESCC") + scale_fill_brewer(palette = "Set1") + theme(axis.text.x = element_text(angle=90, vjust=1, hjust=1)) + theme(axis.text = element_text(face = "bold", colour = "black"))  + theme(title = element_text(face = "bold", size = 12))




