life<-read.csv("life_expectancy_years.csv",header = TRUE)
newlife<-na.omit(life)
mort<-read.csv("child_mortality_0_5_year_olds_dying_per_1000_born.csv",header = TRUE)
newmort<-na.omit(mort)
colnames(newmort)[1]='country'
ci<-inner_join(newlife,newmort,by='country')$country
finallife<-newlife%>%filter(country %in% ci)
finaldata<-inner_join(finallife,newmort,by='country')



