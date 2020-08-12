# Linguistic Similarity for Candidate #16
C16c <- dfm(corpus_subset(tweets, Candidate == "JONATAN NULL SANCHEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c16c <- textstat_simil(C16c, margin = "documents", method = "jaccard")
SC16 <- data.frame(jaccard = C16c[lower.tri(C16c, diag = FALSE)])
C16$LinguisticSimilarity <- mean(SC16$jaccard)