myfunction<-function(mydata){
  a<-data.frame(colMeans(mydata[2:((ncol(mydata) + 1)/2)]))
  b<-data.frame(colMeans(mydata[(((ncol(mydata) + 1)/2)+1):ncol(mydata)]))
  c<-data.frame(a,b)
  colnames(c) = c("life","child")
  re<-ggplot(c, mapping = aes(x = life,y = child))+
    geom_point(alpha = 0.5)+
    geom_smooth(method = 'lm', formula = 'y ~ x')+
    theme_classic()
  return(re)
}


