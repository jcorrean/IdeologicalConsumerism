# Linguistic Similarity for Candidate #14
C14c <- dfm(corpus_subset(tweets, Candidate == "DAVID SUAREZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c14c <- textstat_simil(C14c, margin = "documents", method = "jaccard")
SC14 <- data.frame(jaccard = C14c[lower.tri(C14c, diag = FALSE)])
C14$LinguisticSimilarity <- mean(SC14$jaccard)