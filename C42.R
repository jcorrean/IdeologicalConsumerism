# Linguistic Similarity for Candidate #42
C42c <- dfm(corpus_subset(tweets, Candidate == "DIANA MACIAS"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c42c <- textstat_simil(C42c, margin = "documents", method = "jaccard")
SC42 <- data.frame(jaccard = c42c[lower.tri(c42c, diag = FALSE)], Candidate = "Diana Macias")
C42$LinguisticSimilarity <- summary(SC42$jaccard)[4]