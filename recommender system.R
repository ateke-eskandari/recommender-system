meta=read.csv("C:/Users/emad/Desktop/ateke/datamining course/datas excel/movies_metadata.csv")
ratings=read.csv("C:/Users/emad/Desktop/ateke/datamining course/datas excel/ratings.csv")
head(ratings,1)
head(meta,1)
names(meta)
fix(meta)
meta= meta[c('id','vote_average','title','popularity','vote_count')]
ratings= ratings[c('userId','rating','movieId')]
head(meta,1)
head(ratings,1)
merged=merge.data.frame(ratings,meta,by.x="movieId",by.y="id")
head(merged)
merged["movieId"]==800
merged[merged["movieId"]==800,]
merged[merged["movieId"]==800,"rating"]
mean(merged[merged['movieId']==800,'rating'])
mean(merged[merged['movieId']==16,'rating'])
sd(merged[merged['movieId']==800,'rating'])
sd(merged[merged['movieId']==16,'rating'])
m800<-merged[merged['movieId']==800,]
head(m800)
max(m800['rating'])
m800['rating']==5
m800[m800['rating']==5,]
m800[m800['rating']==5, 'userId']
u817<-merged[merged['userId']==817,]
u1893<-merged[merged['userId']==1893,]
u817m=u817[c("movieId","rating")]
u1893m=u1893[c("movieId","rating")]
common=merge.data.frame(u817m,u1893m,"movieId")
head(common)
ra1893<-common$rating.y
ra817<-common$rating.x
cor(ra1893, ra817)
sqrt(sum((ra1893-ra817)^2))/dim(common)[1]
u817<-merged[merged['userId']==817,]
u7199<-merged[merged['userId']==7199,]
u817m=u817[c("movieId","rating")]
u7199m=u7199[c("movieId","rating")]
common=merge.data.frame(u817m,u7199m,"movieId")
ra7199<-common$rating.y
ra817<-common$rating.x
cor(ra7199, ra817)
sqrt(sum((ra7199-ra817)^2))/dim(common)[1]
suggestions=u817[u817["rating"]==5 & u817["vote_average"]>7.9 ,'movieId']
setdiff(suggestions,common$movieId)
u817[u817['movieId']==426,]

