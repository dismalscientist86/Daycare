/****************************
*Program name ReadIn_CBP.do
*Purpose: To download County Business Pattern data on Childcare establishments and number of employees by county and year
*Created by: Dani Sandler
*Created on: July 27, 2022
*Modificiations:
*****************************/

forvalues year=2017/2020{
censusapi, url("https://api.census.gov/data/`year'/cbp?get=ESTAB,LFO,NAICS2017_LABEL,NAME,EMP,YEAR&for=county:*&in=state:*&NAICS2017=624410")

sort state county

save C:\Users\sandl305\Documents\GitHub\Daycare\analysis\data\cbp_`year'.dta, replace
}

forvalues year=2012/2016{
censusapi, url("https://api.census.gov/data/`year'/cbp?get=ESTAB,LFO,NAICS2012_LABEL,NAME,EMP,YEAR&for=county:*&in=state:*&NAICS2012=624410")

sort state county

save C:\Users\sandl305\Documents\GitHub\Daycare\analysis\data\cbp_`year'.dta, replace
}

forvalues year=2008/2011{
censusapi, url("https://api.census.gov/data/`year'/cbp?get=ESTAB,LFO,NAICS2007_TTL,EMP,YEAR&for=county:*&NAICS2007=624410")

sort state county

save C:\Users\sandl305\Documents\GitHub\Daycare\analysis\data\cbp_`year'.dta, replace
}

forvalues year=2003/2007{
censusapi, url("https://api.census.gov/data/`year'/cbp?get=ESTAB,NAICS2002_TTL,EMP,YEAR&for=county:*&NAICS2002=624410")

sort state county

save C:\Users\sandl305\Documents\GitHub\Daycare\analysis\data\cbp_`year'.dta, replace
}

forvalues year=1998/2002{
censusapi, url("https://api.census.gov/data/`year'/cbp?get=ESTAB,NAICS1997_TTL,EMP,YEAR&for=county:*&NAICS1997=624410")

sort state county

save C:\Users\sandl305\Documents\GitHub\Daycare\analysis\data\cbp_`year'.dta, replace
}

