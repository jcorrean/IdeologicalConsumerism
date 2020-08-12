# Linguistic Similarity for Candidate #1
C2c <- dfm(corpus_subset(tweets, Candidate == "CARLOS FERNANDO GALAN"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE) 
c2c <- textstat_simil(C2c, margin = "documents", method = "jaccard")
SC2 <- data.frame(jaccard = C1c[lower.tri(C2c, diag = FALSE)])
C2$LinguisticSimilarity <- mean(SC2$jaccard)