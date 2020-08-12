# Linguistic Similarity for Candidate #23
C23c <- dfm(corpus_subset(tweets, Candidate == "ANGELO NULL QUINTERO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c23c <- textstat_simil(C23c, margin = "documents", method = "jaccard")
SC23 <- data.frame(jaccard = C23c[lower.tri(C23c, diag = FALSE)])
C23$LinguisticSimilarity <- mean(SC23$jaccard)