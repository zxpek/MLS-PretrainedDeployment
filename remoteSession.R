remoteLogin("http://localhost:12800", 
            username = "admin", 
            password = "Pass@word1",
            diff = TRUE,
            session = TRUE,
            commandline = TRUE)

pause()

newAPI<-getService("classImage", "v1.0.1")

img<-"https://bab-assets3.babapi.ooo/img/othe/7273534/e4/a1/piscescentablglasstopwshelfwalnut1fictpscesctwgs1wlt.jpg.de60cce4a1.989x1000x951.jpg"
response<-newAPI$classImage(img)
print(response$output("type"))

mnistAPI<-getService("classMnist", "v1.0.0")
mnistData <- read.csv("data/MNIST/train.csv")
print(mnistData[1,])
response<-mnistAPI$classMnist(mnistData[1,])
print(response$output("label"))