# Linguistic Similarity for Candidate #44
C44c <- dfm(corpus_subset(tweets, Candidate == "JUAN DIAZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c44c <- textstat_simil(C44c, margin = "documents", method = "jaccard")
SC44 <- data.frame(jaccard = c44c[lower.tri(c44c, diag = FALSE)], Candidate = "Juan Diaz")
C44$LinguisticSimilarity <- summary(SC44$jaccard)[4]