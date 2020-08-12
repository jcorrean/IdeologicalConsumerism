# Linguistic Similarity for Candidate #29
C29c <- dfm(corpus_subset(tweets, Candidate == "NEMESIO ROYS"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c29c <- textstat_simil(C29c, margin = "documents", method = "jaccard")
SC29 <- data.frame(jaccard = C29c[lower.tri(C29c, diag = FALSE)])
C29$LinguisticSimilarity <- mean(SC29$jaccard)