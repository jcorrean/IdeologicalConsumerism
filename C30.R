# Linguistic Similarity for Candidate #30
C30c <- dfm(corpus_subset(tweets, Candidate == "MARCO RUIZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c30c <- textstat_simil(C30c, margin = "documents", method = "jaccard")
SC30 <- data.frame(jaccard = C30c[lower.tri(C30c, diag = FALSE)])
C30$LinguisticSimilarity <- mean(SC30$jaccard)