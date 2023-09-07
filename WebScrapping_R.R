### WEB SCRAPPING NO R

# o presente projeto possui o intuito de realizar as filtragens iniciais de uma página web

#Pacotes necessários
library("httr")
library("rvest")

#Função de leitura
wikipedia <- read_html("https://en.wikipedia.org/wiki/Web_scraping")

wikipedia %>% html_elements("title")

#Busca nó de heading, mas tira parte do código HTML
wikipedia %>% html_elements("h1") %>% html_text()

#Busca nó de parágrafo, mas tira parte do código HTML
data <- wikipedia %>% html_elements("p") %>% html_text()

length(data)

#Visualizar os parágrafos solicitados
data[2]
data[5]
