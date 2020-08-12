# Linguistic Similarity for Candidate #34
C34c <- dfm(corpus_subset(tweets, Candidate == "CARLOS CLAVIJO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c34c <- textstat_simil(C34c, margin = "documents", method = "jaccard")
SC34 <- data.frame(jaccard = C34c[lower.tri(C34c, diag = FALSE)])
C34$LinguisticSimilarity <- mean(SC34$jaccard)