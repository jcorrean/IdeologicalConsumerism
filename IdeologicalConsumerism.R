# Ideological consumerism falsification
# We begin by opening the raw data of the Colombian Regional Elections
# ERC
library(readr)
ERC <- read_csv("~/Downloads/Base final datos cruzados FINAL.csv")
library(dplyr)
UniqueTweets <- ERC %>% filter(isRetweet == FALSE)
UniqueTweets <- filter(UniqueTweets, is.na(replyToSN))

UniqueTweets$text <- gsub("@\\S*", "", UniqueTweets$text)
UniqueTweets$text <- gsub("amp", "", UniqueTweets$text) 
UniqueTweets$text <- gsub("[[:punct:]]\\S*", "", UniqueTweets$text)


library(dplyr)
candidatosU <- data.frame(table(UniqueTweets$Candidato)) %>% arrange(desc(Freq))

# First Part: Pre-processing raw data
C1 <- UniqueTweets %>% filter(Candidato == "CLAUDIA LOPEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C2 <- UniqueTweets %>% filter(Candidato == "CARLOS FERNANDO GALAN") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C3 <- UniqueTweets %>% filter(Candidato == "MIGUEL URIBE TURBAY") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C4 <- UniqueTweets %>% filter(Candidato == "CLARA ROLDAN") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C5 <- UniqueTweets %>% filter(Candidato == "RAMIRO NULL BARRAGAN") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C6 <- UniqueTweets %>% filter(Candidato == "HOLLMAN MORRIS") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C7 <- UniqueTweets %>% filter(Candidato == "ELSA NOGUERA") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C8 <- UniqueTweets %>% filter(Candidato == "EMIRO ARIAS") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C9 <- UniqueTweets %>% filter(Candidato == "JUAN GUILLERMO ZULUAGA") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C10 <- UniqueTweets %>% filter(Candidato == "NERTHINK AGUILAR") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C11 <- UniqueTweets %>% filter(Candidato == "PEDRO GOMEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C12 <- UniqueTweets %>% filter(Candidato == "ANGELA HERNANDEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C13 <- UniqueTweets %>% filter(Candidato == "DUVALIER SANCHEZ") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C14 <- UniqueTweets %>% filter(Candidato == "DAVID SUAREZ") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C15 <- UniqueTweets %>% filter(Candidato == "CAMILO NULL GAVIRIA") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C16 <- UniqueTweets %>% filter(Candidato == "JONATAN NULL SANCHEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C17 <- UniqueTweets %>% filter(Candidato == "VICENTE ANTONIO BLEL") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C18 <- UniqueTweets %>% filter(Candidato == "ELKIN BUENO") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C19 <- UniqueTweets %>% filter(Candidato == "FRANCISCO LOURIDO") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C20 <- UniqueTweets %>% filter(Candidato == "JANETH RESTREPO") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C21 <- UniqueTweets %>% filter(Candidato == "JOSE GIOVANY PINZON") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C22 <- UniqueTweets %>% filter(Candidato == "ALVARO LOPEZ") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C23 <- UniqueTweets %>% filter(Candidato == "ANGELO NULL QUINTERO") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C24 <- UniqueTweets %>% filter(Candidato == "NOHORA STELLA TOVAR") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C25 <- UniqueTweets %>% filter(Candidato == "OSCAR GAMBOA") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C26 <- UniqueTweets %>% filter(Candidato == "RODNEY CASTRO") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C27 <- UniqueTweets %>% filter(Candidato == "SALOMON SANABRIA") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C28 <- UniqueTweets %>% filter(Candidato == "NICOLAS PETRO") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C29 <- UniqueTweets %>% filter(Candidato == "NEMESIO ROYS") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C30 <- UniqueTweets %>% filter(Candidato == "MARCO RUIZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C31 <- UniqueTweets %>% filter(Candidato == "HERNANDO JOSE PADAUI") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C32 <- UniqueTweets %>% filter(Candidato == "JORGE PALOMINO") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C33 <- UniqueTweets %>% filter(Candidato == "MONICA GAITAN") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C34 <- UniqueTweets %>% filter(Candidato == "CARLOS CLAVIJO") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C35 <- UniqueTweets %>% filter(Candidato == "NICOLAS IVAN GALLARDO") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C36 <- UniqueTweets %>% filter(Candidato == "ROSMERY MARTINEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C37 <- UniqueTweets %>% filter(Candidato == "EVERTH JULIO HAWKINS") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C38 <- UniqueTweets %>% filter(Candidato == "HECTOR ESPINOSA") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C39 <- UniqueTweets %>% filter(Candidato == "DELAY MAGDANIEL") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C40 <- UniqueTweets %>% filter(Candidato == "JUAN DIEGO MUÑOZ") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C41 <- UniqueTweets %>% filter(Candidato == "SONIA BERNAL") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C42 <- UniqueTweets %>% filter(Candidato == "DIANA MACIAS") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C43 <- UniqueTweets %>% filter(Candidato == "AGUSTIN PINTO") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C44 <- UniqueTweets %>% filter(Candidato == "JUAN DIAZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C45 <- UniqueTweets %>% filter(Candidato == "LUIS TOVAR") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C46 <- UniqueTweets %>% filter(Candidato == "JORGE PEREZ") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))

validsample <- list(C1, C2, C3, C4, C5, C6, C7, C8,
                    C9, C10, C11, C12, C13, C14, C15,
                    C16, C17, C18, C19, C20, C21, C22,
                    C23, C24, C25, C26, C27, C28, C29,
                    C30, C31, C32, C33, C34, C35, C36,
                    C37, C38, C39, C40, C41, C42, C43, 
                    C44, C45, C46)
validsample <- do.call(rbind.data.frame, validsample)
validsample[c(1,3:4,6:15,17:21)] <- NULL
colnames(validsample)[4] <- "Received Votes"
colnames(validsample)[1] <- "Candidate"

library(quanteda)
tweets <- corpus(validsample$text)
docvars(tweets, "ideology") <- validsample$ideology
docvars(tweets, "Candidate") <- validsample$Candidate
summary(tweets)