# Linguistic Similarity for Candidate #3
C3c <- dfm(corpus_subset(tweets, Candidate == "MIGUEL URIBE TURBAY"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c3c <- textstat_simil(C3c, margin = "documents", method = "jaccard")
SC3 <- data.frame(jaccard = C3c[lower.tri(C3c, diag = FALSE)])
C3$LinguisticSimilarity <- mean(SC3$jaccard)