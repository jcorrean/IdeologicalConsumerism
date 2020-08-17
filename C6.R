# Linguistic Similarity for Candidate #6
C6c <- dfm(corpus_subset(tweets, Candidate == "MIGUEL URIBE TURBAY"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c6c <- textstat_simil(C6c, margin = "documents", method = "jaccard")
SC6 <- data.frame(jaccard = c6c[lower.tri(c6c, diag = FALSE)],  Candidate = "Miguel Uribe Turbay")
C6$LinguisticSimilarity <- summary(SC6$jaccard)[4]