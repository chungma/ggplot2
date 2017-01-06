myfunction<-function(values,group){
  df<-data.frame(values,group)
  ggplot(df,aes(x=df$group,y=df$values,group=group))+geom_boxplot()
  grpPoss<-levels(as.factor(df$group))
  if(length(grpPoss==2){
    k<-ks.test(x=df$group[df$group==grpPoss[1]],y=df$group[df$group==grpPoss[2]])$p.value
  }