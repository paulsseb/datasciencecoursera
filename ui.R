library(shiny)
library(shinydashboard)
library(ggplot2)
theme_set(theme_classic())








#
dashboardPage(skin = "red",
              dashboardHeader(title = "MALARIA STATISTICAL ANALYSIS SYSTEM",
                              dropdownMenu(type = "messages",messageItem("management","system proposed",time = "01:00pm"),messageItem("hospital","delivered well",time = "01:00pm")),
                              dropdownMenu(type = "notifications"),
                              dropdownMenuOutput("messageMenu")),
              
              dashboardSidebar(sidebarMenu(
                menuItem("Upload file",tabName = "upload",icon = icon("upload")),
                menuItem("Maps", tabName = "current", icon = icon("dashboard")),
                menuItem("Plots", tabName = "plot", icon = icon("info-circle")),
                menuItem("Age Ranges", tabName = "age", icon = icon("info-circle")),
                menuItem("Summary", tabName = "sum", icon = icon("info-circle")),
                menuItem("About", tabName = "about", icon = icon("info-circle")),
                menuItem("Help", tabName = "help", icon = icon("info-circle"))
                
              )),
              
              dashboardBody(
                # tableOutput("contents"),
                tabItems(
                  tabItem(tabName = "upload",
                          fluidRow(
                            box(background = "black",
                                width = 12,
                                
                                fileInput('file','Choose a . csv file to upload',
                                          accept = '.csv'  ),
                                tags$hr(),
                                checkboxInput('header', 'Header', TRUE),
                                radioButtons('sep', 'Separator',c(Comma=',',Semicolon=';',Tab='\t'),','))
                            
                            
                          )
                          
                  ),
                  
                  tabItem(tabName = "age",
                          fluidRow(
                            
                      box(width=15,tabsetPanel(type="tab",
                      tabPanel(  title = "(0--9)YEARS",box(plotOutput("infantm"),width = 15),
                         box( plotOutput("infantf"),width = 15)),
                                     
                  ####10-19####
                 # tabItem(tabName ="child", 
                          #fluidRow(
                 tabPanel(  title = "(10--19)YEARS",box(plotOutput("childm"),width = 15),
                           box(plotOutput("childf"),width = 15)),
                  ####20--39###
                  #tabItem(tabName = "teen",
                    #      fluidRow(
                 tabPanel(  title = "(20--39)YEARS",box(plotOutput("teenm"),width = 15),
                            box(plotOutput("teenf"),width = 15)),
                  ####40--59###
                 # tabItem(tabName = "Adults",
                         #fluidRow(
                            
                              tabPanel(  title = "(40--59)YEARS",box(plotOutput("Adultm"),width = 15),
                                 box(plotOutput("Adultf"),width = 15)),
                 
                            tabPanel(title = "(60+)YEARS ",box(plotOutput("Agedm"),width = 15),
                 
                             box(plotOutput("Agedf"),width = 15))
                          )
                 
                 
                 )
                  )),
                  
                  tabItem(tabName = "plot",
                          fluidRow(
                            box(background = "red",
                              width = 12,
                             # tabsetPanel(
                                #type="tab",
                                          
                                navbarPage(inverse=T,collapsable=T,  
                                          
                                          #tabPanel("ANALYSIS",verbatimTextOutput("bix")),
                                          #tabPanel("PLOT1",plotOutput("plotx")),
                                          # tabPanel("PLOT2",plotOutput("ballo")),
                                         
                                          #tabPanel(
                                            "TOTAL AFFECTED POPULATION FOR VARIOUS SUB-COUNTIES PER DISTRICT ",
                                            navbarMenu("districts", 
                                                   #tabsetPanel(type="tab",
                                                               tabPanel("Abim",
                                                                         box(plotOutput("Abim"),width = "250px")
                                                                        # box( h6("it has a population of 333344"))
                                                                              
                                                                        
                                                                        ),
                                                               tabPanel("Adjumani",
                                                                        box(plotOutput("Adjumani"),width = "250px")
                                                                        #box( h6("it has a population of 333344") )
                                                                            
                                                                        
                                                               ),tabPanel("Agago",
                                                                          box(plotOutput("Agago"),width = "250px")
                                                                          #box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Alebtong",
                                                                          box(plotOutput("Alebtong"),width = "250px")
                                                                          #box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Amolatar",
                                                                          box(plotOutput("Amolatar"),width = "250px")
                                                                          #box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Amudat",
                                                                          box(plotOutput("Amudat"),width = "250px")
                                                                          #box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Amuru",
                                                                          box(plotOutput("Amuru"),width = "250px")
                                                                          #box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Apac",
                                                                          box(plotOutput("Apac"),width = "250px")
                                                                         # box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Arua",
                                                                          box(plotOutput("Arua"),width = "250px")
                                                                          #box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Dokolo",
                                                                          box(plotOutput("Dokolo"),width = "250px")
                                                                         # box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Gulu",
                                                                          box(plotOutput("Gulu"),width = "250px")
                                                                         # box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Kaabong",
                                                                          box(plotOutput("Kaabong"),width = "250px")
                                                                         # box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Kitgum",
                                                                          box(plotOutput("Kitgum"),width = "250px")
                                                                         # box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Koboko",
                                                                          box(plotOutput("Koboko"),width = "250px")
                                                                         # box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Kole",
                                                                          box(plotOutput("Kole"),width = "250px")
                                                                         # box( h6("it has a population of 333344"))
                                                                          
                                                               ),tabPanel("Kotido",
                                                                          box(plotOutput("Kotido"),width = "250px")
                                                                         # box( h6("it has a population of 333344"))
                                                                          
                                                                ),tabPanel("Lamwo",
                                                                           box(plotOutput("Lamwo"),width = "250px")
                                                                          # box( h6("it has a population of 333344"))
                                                                           
                                                                ),tabPanel("Lira",
                                                                           box(plotOutput("Lira"),width = "250px")
                                                                          # box( h6("it has a population of 333344"))
                                                                                             
                                                                 ),tabPanel("Maracha",
                                                                           box(plotOutput("Maracha"),width = "250px")
                                                                           #box( h6("it has a population of 333344"))
                                                                                              
                                                                 ),tabPanel("Moyo",
                                                                           box(plotOutput("Moyo"),width = "250px")
                                                                          # box( h6("it has a population of 333344"))
                                                                                               
                                                                  ),tabPanel("Nakapiripirit",
                                                                           box(plotOutput("Nakapiripirit"),width = "250px")
                                                                          # box( h6("it has a population of 333344"))
                                                                                               
                                                                  ),tabPanel("Napak",
                                                                           box(plotOutput("Napak"),width = "250px")
                                                                          # box( h6("it has a population of 333344"))
                                                                                               
                                                                  ),tabPanel("Nebbi",
                                                                             box(plotOutput("Nebbi"),width = "250px")
                                                                            # box( h6("it has a population of 333344"))
                                                                             
                                                                  ),tabPanel("Nwoya",
                                                                             box(plotOutput("Nwoya"),width = "250px")
                                                                            # box( h6("it has a population of 333344"))
                                                                             
                                                                  ),tabPanel("Otuke",
                                                                             box(plotOutput("Otuke"),width = "250px")
                                                                             #box( h6("it has a population of 333344"))
                                                                             
                                                                  ),tabPanel("Oyam",
                                                                             box(plotOutput("Oyam"),width = "250px")
                                                                             #box( h6("it has a population of 333344"))
                                                                             
                                                                  ),tabPanel("Padder",
                                                                             box(plotOutput("Padder"),width = "250px")
                                                                             #box( h6("it has a population of 333344"))
                                                                             
                                                                  ),tabPanel("Yumbe",
                                                                             box(plotOutput("Yumbe"),width = "250px")
                                                                            # box( h6("it has a population of 333344"))
                                                                             
                                                                  ),tabPanel("Zombo",
                                                                             box(plotOutput("Zombo"),width = "250px")
                                                                            # box( h6("it has a population of 333344"))
                                                                             
                                                                  )
                                                   
                                          ),
                                          navbarMenu("Gender",
                                                              tabPanel("Abim",box(plotOutput("abim"),width = "250px")),
                                                              tabPanel("Adjumani",box(plotOutput("adjumani"),width = "250px")),
                                                                       
                                                              tabPanel("Agago",box(plotOutput("agago"),width = "250px")),
                                                              tabPanel("Alebtong",box(plotOutput("alebtong"),width = "250px")),
                                                        
                                                              tabPanel("Amolator",box(plotOutput("amolator"),width = "250px")),
                                                                                         
                                                              tabPanel("Amudat",box(plotOutput("amudat"),width = "250px")),
                                                              tabPanel("Amuru",box(plotOutput("amuru"),width = "250px")),
                                                              tabPanel("Apac",box(plotOutput("apac"),width = "250px")),
                                                               
                                                               tabPanel("Arua",box(plotOutput("arua"),width = "250px")),
                                                             tabPanel("Dokolo",box(plotOutput("dokolo"),width = "250px")),
                                                                                 
                                                            tabPanel("Gulu",box(plotOutput("gulu"),width = "250px")),
                                                                                          
                                                            tabPanel("Kaabong",box(plotOutput("kaabong"),width = "250px")),
                                                                                                  
                                                           tabPanel("Kitgum",box(plotOutput("kitgum"),width = "250px")),
                                                           tabPanel("Koboko",box(plotOutput("koboko"),width = "250px")),
                                                                      
                                                                 tabPanel("Kole",box(plotOutput("kole"),width = "250px")),
                                                             tabPanel("Kotido",box(plotOutput("kotido"),width = "250px")),
                                                                                        
                                                            tabPanel("Lamwo",box(plotOutput("lamwo"),width = "250px")),
                                                                                                 
                                                             tabPanel("Lira",box(plotOutput("lira"),width = "250px")),
                                                             tabPanel("Maracha",box(plotOutput("maracha"),width = "250px")),
                                                               tabPanel("moyo",box(plotOutput("moyo"),width = "250px")),
                                                                      
                                                           tabPanel("Nakapiripirit",box(plotOutput("nakapiripirit"),width = "250px")),
                                                          tabPanel("Napak",box(plotOutput("napak"),width = "250px")),
                                                                                        
                                                        tabPanel("Nebi",box(plotOutput("nebi"),width = "250px")),
                                                                                                 
                                                       tabPanel("Nwoya",box(plotOutput("nwoya"),width = "250px")), 
                                                         tabPanel("Otuke",box(plotOutput("otuke"),width = "250px")),
                                                           tabPanel("Oyam",box(plotOutput("oyam"),width = "250px")),
                                                                   
                                                         tabPanel("Yumbe",box(plotOutput("yumbe"),width = "250px")),
                                                          tabPanel("Zombo",box(plotOutput("zombo"),width = "250px"))
                                                                                     
                                            
                                          )
                                          
                              ))
                              
                              
                              
                              ) 
                              ),#******#
                  
                  tabItem(tabName = "current",
                          fluidRow(
                            box(
                              width = 20,
                              box(
                                width = 18,tabPanel("ss",tableOutput("ff"))
                                
                                
                              )
                              
                              
                              
                            )  )
                  ),#******#
                 tabItem(tabName = "sum",
                         fluidRow(
                           box(background = "red",
                               width = 12,
                        
                         navbarPage(inverse=T,collapsable=T,
                           
                                    navbarMenu("summary",
                              tabPanel("Abim",
                             plotOutput("Abim")  
                            ) ))))),
                 
                  
                  
                  tabItem(tabName = "help",
                          fluidRow(
                            box(background = "blue",
                              width = 12,
                              
                                
                             tags$ul(
                              tags$hr(),
                              tags$b(h2("Malaria Statistical Analysis System is using R and Shiny",style = "font-weight: 150;")),
                              
                              tags$p("This is a platform-independent browser-based interface for malaria statistical analysis for Northern Uganda in R, based on the Shiny package. Developed by Turyahiirwa Happiness, Weere Aminah, Masinde Hope and Kiyimba Stephen.",style = "font-weight: 200;font-size:15px"),
                              tags$hr(),
                              tags$b("Key features",style = "font-weight: 150;"),
                              tags$hr(),
                              tags$li("Explore: Quickly and easily summarize, visualize, and analyze your data",style = "font-weight: 200;font-size:15px"), 
                              tags$br(),
                              tags$li("Cross-platform: It runs in a browser on Windows, Mac, and Linux",style = "font-weight: 200;font-size:15px"),
                              tags$h5("Uploading Files: You just choose any . csv file to analyze"),
                              
                              tags$h5("Analysis: You just choose any button choice on the sidebar Menu and then click the  button")
                            )
                          ))  
                  ),#***********#
                 tabItem(tabName = "about",
                         fluidRow(
                           box(background = "blue",
                               width = 12,
                               
                               tags$ul(
                                 tags$hr(),
                                 tags$h1("How to use the System",style = "font-weight: 200; color: white;"),
                                 
                                 tags$li("Before using the system , first navigate to the Upload menu to upload the malaria data which is inform of csv(comma separated values) file.",style = "font-weight: 200; color: white;font-size:15px"), 
                                 tags$br(),
                                 tags$li("After uploading, you can navigate to other menus ",style = "font-weight: 200; color: white;font-size:15px"),
                                 tags$br(),
                                 tags$li("The datatable menu helps one to filter the exports data like searching ",style = "font-weight: 200; color: white;font-size:15px"),
                                 tags$br(),
                                 tags$li("Visualize menu has two sub menus; the Multiplot which shows piecharts of the proportions exported by different countries  and Category which shows the visualizations for the different categories of exports",style = "font-weight: 200; color: white;font-size:15px"),
                                 tags$br(),
                                 tags$li("Analysis menu shows the summary, conclusions and findings of the exports",style = "font-weight: 200; color: white;font-size:15px"),
                                 tags$hr(),
                                 
                                 tags$a(href = "www.findhs.codes", "Click Here to find more description of the  product for which you want to learn more about",style = "font-weight: 200; color: black;")
                                 
                               )
                               
                           ))  )#*********#
                 
                 )
                
              ))