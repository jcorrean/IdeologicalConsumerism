# Linguistic Similarity for Candidate #32
C32c <- dfm(corpus_subset(tweets, Candidate == "JORGE PALOMINO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c32c <- textstat_simil(C32c, margin = "documents", method = "jaccard")
SC32 <- data.frame(jaccard = c32c[lower.tri(c32c, diag = FALSE)], Candidate = "Jorge Palomino")
C32$LinguisticSimilarity <- summary(SC32$jaccard)[4]