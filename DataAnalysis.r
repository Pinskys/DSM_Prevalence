library(tidyverse)

prevalence_data<-read_csv("data/psychprevalence.csv")

class_data<-read_csv("data/classes.csv")

data_table<-inner_join(class_data,prevalence_data,by=c("DSMClassID"="DiagnosisID"))
