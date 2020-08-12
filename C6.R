# Linguistic Similarity for Candidate #6
C6c <- dfm(corpus_subset(tweets, Candidate == "MIGUEL URIBE TURBAY"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c6c <- textstat_simil(C6c, margin = "documents", method = "jaccard")
SC6 <- data.frame(jaccard = C6c[lower.tri(C6c, diag = FALSE)])
C6$LinguisticSimilarity <- mean(SC6$jaccard)