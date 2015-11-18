#Change working directory to CodeEcologyJournals/RCode using the setwd() command or using the Misc menu.  
#getwd() #shows the current working directory for the R gui.

#------------------------
# Read in the Data Table
#------------------------
jdata<-read.table("../Data/SoftwareInEcologyAnalysis3.csv", header=TRUE, sep=",")

#---------------------------------------------------------------------
# Creation of code mentioned at least once in ‘Author Instructions’? 
#---------------------------------------------------------------------
sumnot0<-sum(codement[2:nrow(codement),])
codement3<-matrix(NA, 2, 1)
codement3[1,1]<-codement[1,1]
codement3[2,1]<-sumnot0
rownames(codement3)<-c("No", "Yes")
percents3<-(codement3/sum(codement3))*100

#---------------------------------------------------------------------
# Journal has a section for documentation of software releases?
#---------------------------------------------------------------------
softsect<-table(jdata$TitleSoftwareSection)
notnone<-subset(softsect, names(softsect)!="None")
sumnotnone<-sum(notnone)
softsect2<-matrix(NA, 2, 1)
softsect2[1,1]<-softsect["None"]
softsect2[2,1]<-sumnotnone
rownames(softsect2)<-c("No", "Yes")
softsectpercent<-(softsect2/sum(softsect2))*100

#---------------------------------------------------------------------
# Code release required by journal for article publication?
#---------------------------------------------------------------------
coderel<-as.matrix(table(jdata$RequireCodeRelease))
coderelpercent<-(coderel/sum(coderel))*100

#---------------------------------------------------------------------
# Data release required by journal for article publication?
#---------------------------------------------------------------------
datarel<-as.matrix(table(jdata$RequireDataRelease))
datarelpercent<-(datarel/sum(datarel))*100

#---------------------------------------------------------------------
# Combine results into a matrix
#---------------------------------------------------------------------
All<-cbind(datarelpercent, coderelpercent, softsectpercent, percents3)

#------------------------
# Create and Save Graph
#------------------------
OutFilename<-paste("../Graphs/JournalResults.ps")
postscript(OutFilename, family="Helvetica", width=4.5, height=5)
barplot(All, horiz=TRUE, space=1, col=c("#1f78b4","#b2df8a"), lwd=1.5)
dev.off()