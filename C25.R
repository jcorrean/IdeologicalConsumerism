# Linguistic Similarity for Candidate #25
C25c <- dfm(corpus_subset(tweets, Candidate == "OSCAR GAMBOA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c25c <- textstat_simil(C25c, margin = "documents", method = "jaccard")
SC25 <- data.frame(jaccard = C25c[lower.tri(C25c, diag = FALSE)])
C25$LinguisticSimilarity <- mean(SC25$jaccard)