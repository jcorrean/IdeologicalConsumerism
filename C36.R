# Linguistic Similarity for Candidate #36
C36c <- dfm(corpus_subset(tweets, Candidate == "ROSMERY MARTINEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c36c <- textstat_simil(C36c, margin = "documents", method = "jaccard")
SC36 <- data.frame(jaccard = c36c[lower.tri(c36c, diag = FALSE)], Candidate = "Rosmery Martinez")
C36$LinguisticSimilarity <- summary(SC36$jaccard)[4]