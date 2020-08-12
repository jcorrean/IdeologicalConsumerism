# Linguistic Similarity for Candidate #36
C36c <- dfm(corpus_subset(tweets, Candidate == "ROSMERY MARTINEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c36c <- textstat_simil(C36c, margin = "documents", method = "jaccard")
SC36 <- data.frame(jaccard = C36c[lower.tri(C36c, diag = FALSE)])
C36$LinguisticSimilarity <- mean(SC36$jaccard)