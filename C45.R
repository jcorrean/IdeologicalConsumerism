# Linguistic Similarity for Candidate #45
C45c <- dfm(corpus_subset(tweets, Candidate == "LUIS TOVAR"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c45c <- textstat_simil(C45c, margin = "documents", method = "jaccard")
SC45 <- data.frame(jaccard = c45c[lower.tri(c45c, diag = FALSE)], Candidate = "Luis Tovar")
C45$LinguisticSimilarity <- summary(SC45$jaccard)[4]