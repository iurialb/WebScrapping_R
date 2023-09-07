# WEB SCRAPPING

# EXTRAÇAO DOS DADOS DO IBGE

library("rvest")
library("httr")
library("jsonlite")
library("data.table")

#Mostra API de países do IBGE
#https://servicodados.ibge.gov.br/api/docs/paises

#Parâmetros
#country = "BR"

#1 - Listagem de Países - mostra na página web

url = "https://servicodados.ibge.gov.br/api/v1/paises/BR"

page_data <- GET(url)

result <- fromJSON(rawToChar(page_data$content))


#2 - Indicadores - mostra na página web

url2 = "https://servicodados.ibge.gov.br/api/v1/paises/BR|US"

page_data2 <- GET(url2)

#tipo de arquivo
http_type(page_data2)

jsonText <- content(page_data2, "text")
jsonParsed <- content(page_data2, "parsed")
