# WEB SCRAPPING - FUNÇOES RVEST E HTTR

# Buscar dados específicos em uma web page - rvest

#Vamos olhar a página: https://en.wikipedia.org/wiki/Web_scraping

library("rvest")

#função de leitura
wikipedia <- read_html("https://en.wikipedia.org/wiki/Web_scraping")

#Busca específico 
# "FAQ about linking – Are website terms of use binding contracts?".
body_text <- wikipedia %>% html_elements("#cite_note-5") %>% html_text()

substr(body_text, start = 1, stop = 20)

substr(body_text, start = 21, stop = nchar(body_text))


#Busca item listado
techniques <- wikipedia %>% html_elements("#Techniques") %>% html_text()
techniques

### UTILIZANDO O HTTR COM A FUNÇAO GET PARA RETORNAR O CÓDIGO HTML DA PÁGINA SOLICITADA

#Vamos olhar a página http://www.r-datacollection.com/materials/html/OurFirstHTML.html

library("httr")

#Usa método GET()
website <- GET("http://www.r-datacollection.com/materials/html/OurFirstHTML.html")

#Visualiza como texto
content(website, "text")
