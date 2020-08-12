# Linguistic Similarity for Candidate #5
C5c <- dfm(corpus_subset(tweets, Candidate == "RAMIRO NULL BARRAGAN"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c5c <- textstat_simil(C5c, margin = "documents", method = "jaccard")
SC5 <- data.frame(jaccard = C5c[lower.tri(C5c, diag = FALSE)])
C5$LinguisticSimilarity <- mean(SC5$jaccard)