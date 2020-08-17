# Linguistic Similarity for Candidate #37
C37c <- dfm(corpus_subset(tweets, Candidate == "EVERTH JULIO HAWKINS"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c37c <- textstat_simil(C37c, margin = "documents", method = "jaccard")
SC37 <- data.frame(jaccard = c37c[lower.tri(c37c, diag = FALSE)], Candidate = "Everth Julio Hawkins")
C37$LinguisticSimilarity <- summary(SC37$jaccard)[4]