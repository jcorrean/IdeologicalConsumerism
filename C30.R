# Linguistic Similarity for Candidate #30
C30c <- dfm(corpus_subset(tweets, Candidate == "MARCO RUIZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c30c <- textstat_simil(C30c, margin = "documents", method = "jaccard")
SC30 <- data.frame(jaccard = c30c[lower.tri(c30c, diag = FALSE)], Candidate = "Marco Ruiz")
C30$LinguisticSimilarity <- summary(SC30$jaccard)[4]