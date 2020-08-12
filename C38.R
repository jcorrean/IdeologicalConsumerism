# Linguistic Similarity for Candidate #38
C38c <- dfm(corpus_subset(tweets, Candidate == "HECTOR ESPINOSA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c38c <- textstat_simil(C38c, margin = "documents", method = "jaccard")
SC38 <- data.frame(jaccard = C38c[lower.tri(C38c, diag = FALSE)])
C38$LinguisticSimilarity <- mean(SC38$jaccard)