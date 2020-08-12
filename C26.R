# Linguistic Similarity for Candidate #26
C26c <- dfm(corpus_subset(tweets, Candidate == "RODNEY CASTRO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c26c <- textstat_simil(C26c, margin = "documents", method = "jaccard")
SC26 <- data.frame(jaccard = C26c[lower.tri(C26c, diag = FALSE)])
C26$LinguisticSimilarity <- mean(SC26$jaccard)