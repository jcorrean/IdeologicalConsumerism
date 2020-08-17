# Linguistic Similarity for Candidate #14
C14c <- dfm(corpus_subset(tweets, Candidate == "DAVID SUAREZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c14c <- textstat_simil(C14c, margin = "documents", method = "jaccard")
SC14 <- data.frame(jaccard = c14c[lower.tri(c14c, diag = FALSE)],  Candidate = "David Suarez")
C14$LinguisticSimilarity <- summary(SC14$jaccard)[4]