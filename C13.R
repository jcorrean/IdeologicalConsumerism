# Linguistic Similarity for Candidate #13
C13c <- dfm(corpus_subset(tweets, Candidate == "DUVALIER SANCHEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c13c <- textstat_simil(C13c, margin = "documents", method = "jaccard")
SC13 <- data.frame(jaccard = c13c[lower.tri(c13c, diag = FALSE)],  Candidate = "Duvalier Sanchez")
C13$LinguisticSimilarity <- summary(SC13$jaccard)[4]