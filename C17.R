# Linguistic Similarity for Candidate #17
C17c <- dfm(corpus_subset(tweets, Candidate == "VICENTE ANTONIO BLEL"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c17c <- textstat_simil(C17c, margin = "documents", method = "jaccard")
SC17 <- data.frame(jaccard = c17c[lower.tri(c17c, diag = FALSE)],  Candidate = "Vicente Antonio Blel")
C17$LinguisticSimilarity <- summary(SC17$jaccard)[4]