library(tidyverse)

prevalence_data<-read_csv("data/psychprevalence.csv")

class_data<-read_csv("data/classes.csv")

prevalence<-right_join(class_data,prevalence_data,by=c("DSMClassID"="Class"))

prevalence<-prevalence %>% filter(!is.na(Prevalence))

prevalence_plot<-ggplot(data=prevalence,mapping=aes(x=DiagnosisName,y=Prevalence,fill=ClassName))+
  geom_bar(stat="identity")+ # used identity because prevalence is already cumulative
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.3)) # rotates text to perpendicular
  

prevalence_plot

