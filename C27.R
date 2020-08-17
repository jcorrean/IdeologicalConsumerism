# Linguistic Similarity for Candidate #27
C27c <- dfm(corpus_subset(tweets, Candidate == "SALOMON SANABRIA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c27c <- textstat_simil(C27c, margin = "documents", method = "jaccard")
SC27 <- data.frame(jaccard = c27c[lower.tri(c27c, diag = FALSE)], Candidate = "Salomon Sanabria")
C27$LinguisticSimilarity <- summary(SC27$jaccard)[4]