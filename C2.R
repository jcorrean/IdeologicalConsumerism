# Linguistic Similarity for Candidate #1
C2c <- dfm(corpus_subset(tweets, Candidate == "CARLOS FERNANDO GALAN"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE) 
c2c <- textstat_simil(C2c, margin = "documents", method = "jaccard")
SC2 <- data.frame(jaccard = c2c[lower.tri(c2c, diag = FALSE)],  Candidate = "Carlos Fernando Galan")
C2$LinguisticSimilarity <- summary(SC2$jaccard)[4]