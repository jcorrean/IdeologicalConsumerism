# Linguistic Similarity for Candidate #17
C17c <- dfm(corpus_subset(tweets, Candidate == "VICENTE ANTONIO BLEL"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c17c <- textstat_simil(C17c, margin = "documents", method = "jaccard")
SC17 <- data.frame(jaccard = C17c[lower.tri(C17c, diag = FALSE)])
C17$LinguisticSimilarity <- mean(SC17$jaccard)