library(censusapi)
apis <- listCensusApis()


cbp.varlist <- c("ESTAB", #Establishments
                 "LFO", # Legal Form of Organization 
                 "NAICS2017_LABEL", # NAICS 2017
                 "NAME", # Name
                 "EMP", # Employees
                 "YEAR" # Year
)

all.states<-paste0("state:",paste(sprintf("%02d",c(1,2,4:6,8:13,15:42,44:51,53:56)),collapse=","))

cbp18.19<-lapply(2017:last.year,FUN = function(year) 
          getCensus(name = "cbp", 
                      vintage = year, 
                      NAICS2017="624410", 
                      region = all.states,
                      vars = cbp.varlist,
                      key = "6065733bac154874a4545105f1e53134719f5680")
)

cbp18.19.2<-do.call(rbind,cbp18.19)

