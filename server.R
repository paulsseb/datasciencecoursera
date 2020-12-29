
#ran<- read.csv("ByeAge.csv")
t <-read.csv("ByAge.csv")
t
library(shiny)
library(shinydashboard)
library(ggplot2)
library(reshape2)
library(plyr)
theme_set(theme_classic())

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
 
  output$infantm <- renderPlot({
   ###(o--9) age bracket for male in all districts###
    age1<-as.data.frame(subset(t,Age.group=="0--9"))
    
    Total_Male<-age1$Male
    
    District<-age1$District
    
    #barplot(b,names.arg = c,col = rainbow(6))
    
    ggplot(age1,aes(District,Total_Male))+ geom_bar(stat="identity", width = 0.5,fill="green") + 
      labs(title="Degree of Malaria infection in age btn (0--9) in Males for all districts ", 
           subtitle=" ") +
      theme(axis.text.x = element_text(angle=65, vjust=0.6))
  })
   ###(0--9) age bracket for female in all districts###
  output$infantf<-renderPlot({
  age1<-as.data.frame(subset(t,Age.group=="0--9"))
  
  Total_Female<-age1$Female
  
  District<-age1$District
  
  #barplot(b,names.arg = c,col = rainbow(6))
  
  ggplot(age1,aes(District,Total_Female))+ geom_bar(stat="identity", width = 0.5,fill="red") + 
    labs(title="Degree of Malaria infection in age btn (0--9) in Females for all districts ", 
         subtitle=" ") +
    theme(axis.text.x = element_text(angle=65, vjust=0.6))
  })
    ###(10--19) age bracket for male in all districts###
    output$childm <- renderPlot({ 
      age1<-as.data.frame(subset(t,Age.group=="10--19"))
      
      Total_Male<-age1$Male
      
      District<-age1$District
      
      #barplot(b,names.arg = c,col = rainbow(6))
      
      ggplot(age1,aes(District,Total_Male))+ geom_bar(stat="identity", width = 0.5,fill="green") + 
        labs(title="Degree of Malaria infection in age btn (10--19) in Males for all districts ", 
             subtitle=" ") +
        theme(axis.text.x = element_text(angle=65, vjust=0.6))
      
    })
    ###(10--19) age bracket for female in all districts###
    output$childf <- renderPlot({ 
      age1<-as.data.frame(subset(t,Age.group=="10--19"))
      
      Total_Female<-age1$Total
      
      District<-age1$District
      
      #barplot(b,names.arg = c,col = rainbow(6))
      
      ggplot(age1,aes(District,Total_Female))+ geom_bar(stat="identity", width = 0.5,fill="red") + 
        labs(title="Degree of Malaria infection in age btn (10--19) in Females for all districts ", 
             subtitle=" ") +
        theme(axis.text.x = element_text(angle=65, vjust=0.6))
      
    })
    ###(20--39) age bracket for male in all districts###
    output$teenm <- renderPlot({ 
      age1<-as.data.frame(subset(t,Age.group=="20--39"))
      
      Total_Male<-age1$Male
      
      District<-age1$District
      
      #barplot(b,names.arg = c,col = rainbow(6))
      
      ggplot(age1,aes(District,Total_Male))+ geom_bar(stat="identity", width = 0.5,fill="tomato3") + 
        labs(title=" Degree of Malaria infection in age btn (20--39) in Males for all districts", 
             subtitle=" ") +
        theme(axis.text.x = element_text(angle=65, vjust=0.6))
      
    })
    ###(20--39) age bracket for female in all districts###
    output$teenf <- renderPlot({ 
      age1<-as.data.frame(subset(t,Age.group=="20--39"))
      
      Total_Female<-age1$Female
      
      District<-age1$District
      
      #barplot(b,names.arg = c,col = rainbow(6))
      
      ggplot(age1,aes(District,Total_Female))+ geom_bar(stat="identity", width = 0.5,fill="green") + 
        labs(title="Degree of Malaria infection in age btn (20--39) in Females for all districts ", 
             subtitle=" ") +
        theme(axis.text.x = element_text(angle=65, vjust=0.6))
      
    })
    ###(40--59) age bracket for male in all districts###
    output$Adultm <- renderPlot({ 
      age1<-as.data.frame(subset(t,Age.group=="40--59"))
      
      Total_Male<-age1$Male
      
      District<-age1$District
      
      #barplot(b,names.arg = c,col = rainbow(6))
      
      ggplot(age1,aes(District,Total_Male))+ geom_bar(stat="identity", width = 0.5,fill="blue") + 
        labs(title="Degree of Malaria infection in age btn (40--59) in Males for all districts ", 
             subtitle=" ") +
        theme(axis.text.x = element_text(angle=65, vjust=0.6))
      
    })
    ###(40--59) age bracket for female in all districts###
    output$Adultf <- renderPlot({ 
      age1<-as.data.frame(subset(t,Age.group=="40--59"))
      
      Total_Female<-age1$Female
      
      District<-age1$District
      
      #barplot(b,names.arg = c,col = rainbow(6))
      
      ggplot(age1,aes(District,Total_Female))+ geom_bar(stat="identity", width = 0.5,fill="tomato3") + 
        labs(title="Degree of Malaria infection in age btn (40--59) in Females for all districts ", 
             subtitle=" ") +
        theme(axis.text.x = element_text(angle=65, vjust=0.6))
      
    })
    
    ###(60+) age bracket for male in all districts###
    output$Agedm <- renderPlot({ 
      age1<-as.data.frame(subset(t,Age.group=="60+"))
      
      Total_Male<-age1$Male
      
      District<-age1$District
      
      #barplot(b,names.arg = c,col = rainbow(6))
      
      ggplot(age1,aes(District,Total_Male))+ geom_bar(stat="identity", width = 0.5,fill="red") + 
        labs(title=" Degree of Malaria infection in age btn (60+) in Males for all districts", 
             subtitle=" ") +
        theme(axis.text.x = element_text(angle=65, vjust=0.6))
      
    })
    
    ###(60+) age bracket for female in all districts###
    output$Agedf <- renderPlot({ 
      age1<-as.data.frame(subset(t,Age.group=="60+"))
      
      Total_Female<-age1$Female
      
      District<-age1$District
      
      #barplot(b,names.arg = c,col = rainbow(6))
      
      ggplot(age1,aes(District,Total_Female))+ geom_bar(stat="identity", width = 0.5,fill="green") + 
        labs(title="Degree of Malaria infection in age btn (60+) in Females for all districts ", 
             subtitle=" ") +
        theme(axis.text.x = element_text(angle=65, vjust=0.6))
      
    })
    ##################################################################################
   output$Abim<-renderPlot({
     size<-read.csv("PopulationSize.csv")
     size
     r<-subset(size,District=="Abim")
     r
     z<-r$Sub.county
     z
     pie(r$Total,z,main = "chart for sub counties in Abim",col = rainbow(3))
     
   })
   output$Adjumani<-renderPlot({
     size<-read.csv("PopulationSize.csv")
     size
     r<-subset(size,District=="Adjumani")
     r
     z<-r$Sub.county
     z
     pie(r$Total,z,main = "chart for sub counties in Adjumani",col = rainbow(3))
    
     
   })
    output$Agago<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Agago")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Agago",col = rainbow(6))
      
    })
    output$Alebtong<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Alebtong")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Alebtong",col = rainbow(6))
      
    })
    output$Amolatar<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Amolatar")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Amolatar",col = rainbow(6))
    })
    output$Amudat<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Amudat")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Amudat",col = rainbow(6))
    })
    output$Amuru<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Amuru")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Amuru",col = rainbow(6))
    })
    output$Apac<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Apac")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Apac",col = rainbow(6))
    })
    output$Arua<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Arua")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Arua",col = rainbow(6))
    })
    output$Dokolo<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Dokolo")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Dokolo",col = rainbow(6))
    })
    output$Gulu<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Gulu")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Gulu",col = rainbow(6))
    })
    output$Kaabong<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Kaabong")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Kaabong",col = rainbow(6))
    })
    output$Kitgum<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Kitgum")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Kitgum",col = rainbow(6))
    })
    output$Koboko<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Koboko")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Koboko",col = rainbow(6))
    })
    output$Kole<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Kole")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Kole",col = rainbow(6))
    })
    output$Kotido<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Kotido")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Kotido",col = rainbow(6))
    })
    output$Lamwo<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Lamwo")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Lamwo",col = rainbow(6))
    })
    output$Lira<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Lira")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Lira",col = rainbow(6))
    })
    output$Maracha<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Maracha")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Maracha",col = rainbow(6))
    })
    output$Moyo<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Moyo")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Moyo",col = rainbow(6))
    })
    output$Nakapiripirit<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Nakapiripirit")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Nakapiripirit",col = rainbow(6))
    })
    output$Napak<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Napak")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Napak",col = rainbow(6))
    })
    output$Nebbi<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Nebbi")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Nebbi",col = rainbow(6))
    })
    output$Nwoya<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Nwoya")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Nwoya",col = rainbow(3))
    })
    output$Otuke<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Otuke")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Otuke",col = rainbow(3))
    })
    output$Oyam<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Oyam")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Oyam",col = rainbow(3))
    })
    output$Padder<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Padder")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Padder",col = rainbow())
    })
    output$Yumbe<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Yumbe")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Yumbe",col = rainbow(3))
    })
    output$Zombo<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Zombo")
      r
      z<-r$Sub.county
      z
      pie(r$Total,z,main = "chart for sub counties in Zombo",col = rainbow(3))
    })
    ##help and about##
    output$adjumani<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Abim")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 10,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      # mycolors <- brewer.pal(9,"RdYlGn")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Adjumani subcounties",col =rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
      
    })
    
    output$adjumani<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Adjumani")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 10,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
     # mycolors <- brewer.pal(9,"RdYlGn")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Adjumani subcounties",col =rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$agago<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Agago")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 16,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Agago subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$alebtong<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Alebotong")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 9,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Alebotong subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
      
    })
    output$ amolatar<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Amolator")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 11,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Amolator subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$ amudat<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Amudat")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 4,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main ="Malaria infection with gender in Amudat subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
      
    })
    output$amuru<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Amuru")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 5,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Amuru subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
      
    })
    output$apac<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Apac")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 11,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Apac subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$arua<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Arua")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 28,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Arua subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$dokolo<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Dokolo")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 11,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Dokolo subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
      
    })
    output$gulu<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Gulu")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 16,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Gulu subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$kaabong<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Kaabong")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 13,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Kaabong subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$kitgum<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Kitgum")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 10,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Kitgum subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$koboko<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Koboko")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 9,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Koboko subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$kole<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Kole")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 7,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Kole subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$kotido<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Kotido")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 6,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Kotido subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$lamwo<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Lamwo")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 11,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Lamwo subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$lira<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Lira")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 13,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Lira subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$maracha<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Abim")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 8,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Maracha subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$moyo<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Moyo")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 9,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Moyo subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$nakapiripirit<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Nakapiripirit")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 8,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Nakapiripirit subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
    
    })
    output$napak<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Nebi")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 8,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Napak subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
    
    })
    output$nebi<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Nwoya")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 15,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main ="Malaria infection with gender in Nebi subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$nwoya<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Nwoya")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 5,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Nwoya subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$otuke<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Otuke")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 8,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Otoke subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$oyam<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Oyam")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 12,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Oyam subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$yumbe<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      r<-subset(size,District=="Yumbe")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 12,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Yumbe subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })
    output$zombo<-renderPlot({
      size<-read.csv("PopulationSize.csv")
      size
      r<-subset(size,District=="Zombo")
      m<- matrix(c(r$Male,r$Female),nrow = 2,ncol = 10,byrow = TRUE)
      k<-r$Sub.county
      reg<-c("Female","Male")
      barplot(m,names.arg =k ,xlab = "sub-county",ylab = "Gender",main = "Malaria infection with gender in Zombo subcounties",col = rainbow(2))
      legend("topleft",reg,cex = 1.3,fill = m)
     
    })############
    
})
    