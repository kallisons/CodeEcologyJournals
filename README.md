### Code in Ecology Journals

This analysis assesses the way ecology journals handle code and software written for scientific research.  The results of the analysis were used to create Figure 1 in Mislan et al. (2016).   

**Please cite the following paper if you use this data/code:**

Mislan, K. A. S., J. M. Heer, and E.P. White. (2016) Elevating the Status of Code in Ecology. Trends in Ecology and Evolution. [http://dx.doi.org/10.1016/j.tree.2015.11.006 ](http://dx.doi.org/10.1016/j.tree.2015.11.006)

----------------------
#### Software dependencies
The software used to create Figure 1 is open source:

R version 3.2.2: [http://www.r-project.org/](http://www.r-project.org/)

----------------------
#### Data

Journals were identified through a search of the Journal Citation Reports (JCR) using the following search terms: "Ecology" for category, "2013" for year, "SCIE" (Science Citation Index) and "SSCI" (Social Sciences Citation Index) editions checked, and "Web of Science" for the category schema.  Between March 1, 2015 and June 1, 2015, the author instructions for each journal were searched to determine if there was any mention of code or software in the context of scientific research.  We also determined whether journals had a section for documentation of scientific software releases, and if journals had a policy requiring the release of code and/or data for article publication.

**Original spreadsheet**

Archive/SoftwareInEcologyAnalysis2.csv

**Curated spreadsheet for Figure 1**

Data/SoftwareInEcologyAnalysis3.csv

----------------------
#### Graph
Figure 1 was made using R. To recreate the graph in Figure 1, paste the following commands into a unix shell.  The commands assume that the current directory is the CodeEcologyJournals folder.  The graph will be saved in the Graphs folder.

Change directory:  

    cd RCode

Command to plot graph:

    RScript AnalyzeJournalInfo.R

----------------------
#### Acknowledgements
K.A.S. was supported by the Washington Research Foundation Fund for Innovation in Data-Intensive Discovery and the Moore/Sloan Data Science Environments Project at the University of Washington.  This work was partially supported by the Gordon and Betty Moore Foundation's Data-Driven Discovery Initiative through grant GBMF4553 to J.M.H. and grant GBMF4563 to E.P.W.
