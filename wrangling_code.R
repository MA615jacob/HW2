life<-read.csv("life_expectancy_years.csv",header = TRUE) # read file
newlife<-na.omit(life) # remove NA
mort<-read.csv("child_mortality_0_5_year_olds_dying_per_1000_born.csv",header = TRUE) # read file
newmort<-na.omit(mort) # remove NA
colnames(newmort)[1]='country' #  Make sure to change the name of first column in country.
ci<-inner_join(newlife,newmort,by='country')$country  # Get the common country name
finallife<-newlife%>%filter(country %in% ci) # Put the common country name into life_expectation data
finaldata<-inner_join(finallife,newmort,by='country') # Get the finaldata.



