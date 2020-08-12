# Linguistic Similarity for Candidate #32
C32c <- dfm(corpus_subset(tweets, Candidate == "JORGE PALOMINO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c32c <- textstat_simil(C32c, margin = "documents", method = "jaccard")
SC32 <- data.frame(jaccard = C32c[lower.tri(C32c, diag = FALSE)])
C32$LinguisticSimilarity <- mean(SC32$jaccard)