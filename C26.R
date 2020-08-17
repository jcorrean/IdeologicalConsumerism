# Linguistic Similarity for Candidate #26
C26c <- dfm(corpus_subset(tweets, Candidate == "RODNEY CASTRO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c26c <- textstat_simil(C26c, margin = "documents", method = "jaccard")
SC26 <- data.frame(jaccard = c26c[lower.tri(c26c, diag = FALSE)], Candidate = "Rodney Castro")
C26$LinguisticSimilarity <- summary(SC26$jaccard)[4]