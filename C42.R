# Linguistic Similarity for Candidate #42
C42c <- dfm(corpus_subset(tweets, Candidate == "DIANA MACIAS"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c42c <- textstat_simil(C42c, margin = "documents", method = "jaccard")
SC42 <- data.frame(jaccard = C42c[lower.tri(C42c, diag = FALSE)])
C42$LinguisticSimilarity <- mean(SC42$jaccard)