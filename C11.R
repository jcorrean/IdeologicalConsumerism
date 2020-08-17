# Linguistic Similarity for Candidate #11
C11c <- dfm(corpus_subset(tweets, Candidate == "PEDRO GOMEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c11c <- textstat_simil(C11c, margin = "documents", method = "jaccard")
SC11 <- data.frame(jaccard = c11c[lower.tri(c11c, diag = FALSE)],  Candidate = "Pedro Gomez")
C11$LinguisticSimilarity <- summary(SC11$jaccard)[4]