# Linguistic Similarity for Candidate #27
C27c <- dfm(corpus_subset(tweets, Candidate == "SALOMON SANABRIA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c27c <- textstat_simil(C27c, margin = "documents", method = "jaccard")
SC27 <- data.frame(jaccard = C27c[lower.tri(C27c, diag = FALSE)])
C27$LinguisticSimilarity <- mean(SC27$jaccard)