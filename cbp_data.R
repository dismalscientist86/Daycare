library(censusapi)
apis <- listCensusApis()
View(apis)

cbp.varlist <- c("ESTAB", #Establishments
                 "LFO", # Legal Form of Organization 
                 "NAICS2017_LABEL", # NAICS 2017
                 "NAME", # Name
                 "EMP", # Employees
                 "YEAR" # Year
)

all.states<-paste0("state:",paste(sprintf("%02d",c(1,2,4:6,8:13,15:42,44:51,53:56)),collapse=","))


cbp <- getCensus(name = "cbp", 
                      vintage = 2019, 
                      NAICS2017="624410", 
                      region = all.states,
                      vars = cbp.varlist,
                      key = "6065733bac154874a4545105f1e53134719f5680")

View(cbp)
