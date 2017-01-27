myfunction<-function(values,group){
  #Combine 2 Vectors into a dataframe
  df<-data.frame(values,group)
  #Make a boxplot
  gg<-ggplot(df,aes(x=df$group,y=df$values,group=group))+geom_boxplot()
  #Perform t-test for all possible groups to get significance 
  grpPoss<-levels(as.factor(df$group))
  if(length(grpPoss==2))
  #Kolmogorov-Smiunov (2 groups)
    p<-ks.test(x=df$group[df$group==grpPoss[1]],y=df$group[df$group==grpPoss[2]])$p.value |
  if(length(grpPoss==3))
  #Kruskal-wallis (3 groups)
    x<-df$group[df$group==grpPoss[1]]
    y<-df$group[df$group==grpPoss[2]]
    z<-df$group[df$group==grpPoss[3]]
    p<-kruskal.test(list(x,y,z))$p.value
  #Add significance bars  
gg+geom_line(data=df,aes(x=df$group,y=df$values))+annotate("text",x=6,y=30,label="**",size=8)
}
