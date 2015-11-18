jdata<-read.table("~/Dropbox/Manuscripts/SoftwareInEcology/JournalAnalysis/SoftwareInEcologyAnalysis3.csv", header=TRUE, sep=",")

codement<-as.matrix(table(jdata$CreationSoftware))
sumhigh<-sum(codement[4:nrow(codement),])
codement2<-matrix(NA, 4, 1)
codement2[1:3,1]<-codement[1:3,1]
codement2[4,1]<-sumhigh
rownames(codement2)<-c("0", "1", "2", "3+")
percents<-(codement2/sum(codement2))*100

sumnot0<-sum(codement[2:nrow(codement),])
codement3<-matrix(NA, 2, 1)
codement3[1,1]<-codement[1,1]
codement3[2,1]<-sumnot0
rownames(codement3)<-c("No", "Yes")
percents3<-(codement3/sum(codement3))*100

softsect<-table(jdata$TitleSoftwareSection)
notnone<-subset(softsect, names(softsect)!="None")
sumnotnone<-sum(notnone)
softsect2<-matrix(NA, 2, 1)
softsect2[1,1]<-softsect["None"]
softsect2[2,1]<-sumnotnone
rownames(softsect2)<-c("No", "Yes")
softsectpercent<-(softsect2/sum(softsect2))*100

coderel<-as.matrix(table(jdata$RequireCodeRelease))
coderelpercent<-(coderel/sum(coderel))*100

datarel<-as.matrix(table(jdata$RequireDataRelease))
datarelpercent<-(datarel/sum(datarel))*100

All<-cbind(datarelpercent, coderelpercent, softsectpercent, percents3)

OutFilename<-paste("~/Dropbox/Manuscripts/SoftwareInEcology/JournalAnalysis/Graphs/JournalResults2.ps")
postscript(OutFilename, family="Helvetica", width=4.5, height=5)

#quartz(width=4.5, height=5)
barplot(All, horiz=TRUE, space=1, col=c("#1f78b4","#b2df8a"), lwd=1.5)

#quartz(width=4.5, height=5)
#barplot(All, horiz=TRUE, space=1, col=c("black","grey"), lwd=1.5)

dev.off()