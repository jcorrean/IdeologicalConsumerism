# Linguistic Similarity for Candidate #38
C38c <- dfm(corpus_subset(tweets, Candidate == "HECTOR ESPINOSA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c38c <- textstat_simil(C38c, margin = "documents", method = "jaccard")
SC38 <- data.frame(jaccard = c38c[lower.tri(c38c, diag = FALSE)], Candidate = "Hector Espinosa")
C38$LinguisticSimilarity <- summary(SC38$jaccard)[4]