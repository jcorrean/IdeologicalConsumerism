# Linguistic Similarity for Candidate #25
C25c <- dfm(corpus_subset(tweets, Candidate == "OSCAR GAMBOA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c25c <- textstat_simil(C25c, margin = "documents", method = "jaccard")
SC25 <- data.frame(jaccard = c25c[lower.tri(c25c, diag = FALSE)], Candidate = "Oscar Gamboa")
C25$LinguisticSimilarity <- summary(SC25$jaccard)[4]