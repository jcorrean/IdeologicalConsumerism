# Linguistic Similarity for Candidate #41
C41c <- dfm(corpus_subset(tweets, Candidate == "SONIA BERNAL"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c41c <- textstat_simil(C41c, margin = "documents", method = "jaccard")
SC41 <- data.frame(jaccard = c41c[lower.tri(c41c, diag = FALSE)], Candidate = "Sonia Bernal")
C41$LinguisticSimilarity <- summary(SC41$jaccard)[4]