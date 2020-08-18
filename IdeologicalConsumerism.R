# Ideological consumerism falsification
# We begin by opening the raw data of the Colombian Regional Elections
# ERC
setwd("/home/juan/Documents/GitHub/IdeologicalConsumerism")
load("RawData.RData")
variable.names(ERC)

library(dplyr)
UniqueTweets <- ERC %>% filter(isRetweet == FALSE)
UniqueTweets <- filter(UniqueTweets, is.na(replyToSN))

UniqueTweets$text <- gsub("@\\S*", "", UniqueTweets$text)
UniqueTweets$text <- gsub("amp", "", UniqueTweets$text) 
UniqueTweets$text <- gsub("[[:punct:]]\\S*", "", UniqueTweets$text)


library(dplyr)
candidatosU <- data.frame(table(UniqueTweets$Candidate)) %>% arrange(desc(Freq))

# First Part: Pre-processing raw data
C1 <- UniqueTweets %>% filter(Candidate == "CLAUDIA LOPEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C2 <- UniqueTweets %>% filter(Candidate == "CARLOS FERNANDO GALAN") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C3 <- UniqueTweets %>% filter(Candidate == "MIGUEL URIBE TURBAY") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C4 <- UniqueTweets %>% filter(Candidate == "CLARA ROLDAN") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C5 <- UniqueTweets %>% filter(Candidate == "RAMIRO NULL BARRAGAN") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C6 <- UniqueTweets %>% filter(Candidate == "HOLLMAN MORRIS") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C7 <- UniqueTweets %>% filter(Candidate == "ELSA NOGUERA") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C8 <- UniqueTweets %>% filter(Candidate == "EMIRO ARIAS") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C9 <- UniqueTweets %>% filter(Candidate == "JUAN GUILLERMO ZULUAGA") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C10 <- UniqueTweets %>% filter(Candidate == "NERTHINK AGUILAR") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C11 <- UniqueTweets %>% filter(Candidate == "PEDRO GOMEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C12 <- UniqueTweets %>% filter(Candidate == "ANGELA HERNANDEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C13 <- UniqueTweets %>% filter(Candidate == "DUVALIER SANCHEZ") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C14 <- UniqueTweets %>% filter(Candidate == "DAVID SUAREZ") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C15 <- UniqueTweets %>% filter(Candidate == "CAMILO NULL GAVIRIA") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C16 <- UniqueTweets %>% filter(Candidate == "JONATAN NULL SANCHEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C17 <- UniqueTweets %>% filter(Candidate == "VICENTE ANTONIO BLEL") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C18 <- UniqueTweets %>% filter(Candidate == "ELKIN BUENO") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C19 <- UniqueTweets %>% filter(Candidate == "FRANCISCO LOURIDO") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C20 <- UniqueTweets %>% filter(Candidate == "JANETH RESTREPO") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C21 <- UniqueTweets %>% filter(Candidate == "JOSE GIOVANY PINZON") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C22 <- UniqueTweets %>% filter(Candidate == "ALVARO LOPEZ") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C23 <- UniqueTweets %>% filter(Candidate == "ANGELO NULL QUINTERO") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C24 <- UniqueTweets %>% filter(Candidate == "NOHORA STELLA TOVAR") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C25 <- UniqueTweets %>% filter(Candidate == "OSCAR GAMBOA") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C26 <- UniqueTweets %>% filter(Candidate == "RODNEY CASTRO") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C27 <- UniqueTweets %>% filter(Candidate == "SALOMON SANABRIA") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C28 <- UniqueTweets %>% filter(Candidate == "NICOLAS PETRO") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C29 <- UniqueTweets %>% filter(Candidate == "NEMESIO ROYS") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C30 <- UniqueTweets %>% filter(Candidate == "MARCO RUIZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C31 <- UniqueTweets %>% filter(Candidate == "HERNANDO JOSE PADAUI") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C32 <- UniqueTweets %>% filter(Candidate == "JORGE PALOMINO") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C33 <- UniqueTweets %>% filter(Candidate == "MONICA GAITAN") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C34 <- UniqueTweets %>% filter(Candidate == "CARLOS CLAVIJO") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C35 <- UniqueTweets %>% filter(Candidate == "NICOLAS IVAN GALLARDO") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C36 <- UniqueTweets %>% filter(Candidate == "ROSMERY MARTINEZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C37 <- UniqueTweets %>% filter(Candidate == "EVERTH JULIO HAWKINS") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C38 <- UniqueTweets %>% filter(Candidate == "HECTOR ESPINOSA") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C39 <- UniqueTweets %>% filter(Candidate == "DELAY MAGDANIEL") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C40 <- UniqueTweets %>% filter(Candidate == "JUAN DIEGO MUÑOZ") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C41 <- UniqueTweets %>% filter(Candidate == "SONIA BERNAL") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C42 <- UniqueTweets %>% filter(Candidate == "DIANA MACIAS") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C43 <- UniqueTweets %>% filter(Candidate == "AGUSTIN PINTO") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C44 <- UniqueTweets %>% filter(Candidate == "JUAN DIAZ") %>% mutate(ideology = "Alliance", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C45 <- UniqueTweets %>% filter(Candidate == "LUIS TOVAR") %>% mutate(ideology = "Traditional Party", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))
C46 <- UniqueTweets %>% filter(Candidate == "JORGE PEREZ") %>% mutate(ideology = "Independent", AveRetweet = mean(retweetCount), MaxReach = max(retweetCount))

validsample <- list(C1, C2, C3, C4, C5, C6, C7, C8,
                    C9, C10, C11, C12, C13, C14, C15,
                    C16, C17, C18, C19, C20, C21, C22,
                    C23, C24, C25, C26, C27, C28, C29,
                    C30, C31, C32, C33, C34, C35, C36,
                    C37, C38, C39, C40, C41, C42, C43, 
                    C44, C45, C46)
validsample <- do.call(rbind.data.frame, validsample)
validsample[c(1,3:4,6:15,17:21)] <- NULL

library(quanteda)
tweets <- corpus(validsample$text)
docvars(tweets, "ideology") <- validsample$ideology
docvars(tweets, "Candidate") <- validsample$Candidate
summary(tweets)

source("C1.R")
source("C2.R")
source("C3.R")
source("C4.R")
source("C5.R")
source("C6.R")
source("C7.R")
source("C8.R")
source("C9.R")
source("C10.R")
source("C11.R")
source("C12.R")
source("C13.R")
source("C14.R")
source("C15.R")
source("C16.R")
source("C17.R")
source("C18.R")
source("C19.R")
source("C20.R")
source("C21.R")
source("C22.R")
source("C23.R")
source("C24.R")
source("C25.R")
source("C26.R")
source("C27.R")
source("C28.R")
source("C29.R")
source("C30.R")
source("C31.R")
source("C32.R")
source("C33.R")
source("C34.R")
source("C35.R")
source("C36.R")
source("C37.R")
source("C38.R")
source("C39.R")
source("C40.R")
source("C41.R")
source("C42.R")
source("C43.R")
source("C44.R")
source("C45.R")
source("C46.R")

validsample <- list(C1, C2, C3, C4, C5, C6, C7, C8,
                    C9, C10, C11, C12, C13, C14, C15,
                    C16, C17, C18, C19, C20, C21, C22,
                    C23, C24, C25, C26, C27, C28, C29,
                    C30, C31, C32, C33, C34, C35, C36,
                    C37, C38, C39, C40, C41, C42, C43, 
                    C44, C45, C46)
validsample <- do.call(rbind.data.frame, validsample)
variable.names(validsample)
validsample[c(1,3:4,6:15,17:20)] <- NULL

library(ggplot2)
ggplot(validsample, aes(x=validsample$`Received votes`, fill=validsample$ideology)) + geom_density(alpha=0.3) + xlab("Received votes") + labs(fill="Ideology")

IdeologiesComparison <- list(SC1, SC2, SC3, SC4, SC5, SC6,
                             SC7, SC8, SC9, SC10, SC11, SC12,
                             SC13, SC14, SC15, SC16, SC17, SC18,
                             SC19, SC20, SC21, SC22, SC23, SC24,
                             SC25, SC26, SC27, SC28, SC29, SC30,
                             SC31, SC32, SC33, SC34, SC35, SC36,
                             SC37, SC38, SC39, SC40, SC41, SC42,
                             SC43, SC44, SC45, SC46)

IdeologiesComparison <- do.call(rbind.data.frame, IdeologiesComparison)
library(psych)
IdeologyComparison <- describeBy(IdeologiesComparison$jaccard, group = IdeologiesComparison$Candidate, mat = TRUE)
