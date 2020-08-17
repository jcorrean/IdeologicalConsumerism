# Linguistic Similarity for Candidate #21
C21c <- dfm(corpus_subset(tweets, Candidate == "JOSE GIOVANY PINZON"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c21c <- textstat_simil(C21c, margin = "documents", method = "jaccard")
SC21 <- data.frame(jaccard = c21c[lower.tri(c21c, diag = FALSE)],  Candidate = "Jose Giovany Pinzon")
C21$LinguisticSimilarity <- summary(SC21$jaccard)[4]