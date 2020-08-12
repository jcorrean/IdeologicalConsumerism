# Linguistic Similarity for Candidate #4
C4c <- dfm(corpus_subset(tweets, Candidate == "CLARA ROLDAN"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c4c <- textstat_simil(C4c, margin = "documents", method = "jaccard")
SC4 <- data.frame(jaccard = C4c[lower.tri(C4c, diag = FALSE)])
C4$LinguisticSimilarity <- mean(SC4$jaccard)