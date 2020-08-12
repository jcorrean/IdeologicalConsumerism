# Linguistic Similarity for Candidate #15
C15c <- dfm(corpus_subset(tweets, Candidate == "CAMILO NULL GAVIRIA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c15c <- textstat_simil(C15c, margin = "documents", method = "jaccard")
SC15 <- data.frame(jaccard = C15c[lower.tri(C15c, diag = FALSE)])
C15$LinguisticSimilarity <- mean(SC15$jaccard)