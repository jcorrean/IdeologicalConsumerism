# Linguistic Similarity for Candidate #5
C5c <- dfm(corpus_subset(tweets, Candidate == "RAMIRO NULL BARRAGAN"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c5c <- textstat_simil(C5c, margin = "documents", method = "jaccard")
SC5 <- data.frame(jaccard = c5c[lower.tri(c5c, diag = FALSE)],  Candidate = "Ramiro Barragan")
C5$LinguisticSimilarity <- summary(SC5$jaccard)[4]