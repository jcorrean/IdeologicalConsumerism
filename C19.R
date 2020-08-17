# Linguistic Similarity for Candidate #19
C19c <- dfm(corpus_subset(tweets, Candidate == "FRANCISCO LOURIDO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c19c <- textstat_simil(C19c, margin = "documents", method = "jaccard")
SC19 <- data.frame(jaccard = c19c[lower.tri(c19c, diag = FALSE)],  Candidate = "Francisco Lourido")
C19$LinguisticSimilarity <- summary(SC19$jaccard)[4]