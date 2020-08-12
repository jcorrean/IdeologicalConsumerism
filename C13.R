# Linguistic Similarity for Candidate #13
C13c <- dfm(corpus_subset(tweets, Candidate == "DUVALIER SANCHEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c13c <- textstat_simil(C13c, margin = "documents", method = "jaccard")
SC13 <- data.frame(jaccard = C13c[lower.tri(C13c, diag = FALSE)])
C13$LinguisticSimilarity <- mean(SC13$jaccard)