# Linguistic Similarity for Candidate #4
C4c <- dfm(corpus_subset(tweets, Candidate == "CLARA ROLDAN"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c4c <- textstat_simil(C4c, margin = "documents", method = "jaccard")
SC4 <- data.frame(jaccard = c4c[lower.tri(c4c, diag = FALSE)],  Candidate = "Clara Roldan")
C4$LinguisticSimilarity <- summary(SC4$jaccard)[4]