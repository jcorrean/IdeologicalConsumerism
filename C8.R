# Linguistic Similarity for Candidate #8
C8c <- dfm(corpus_subset(tweets, Candidate == "EMIRO ARIAS"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c8c <- textstat_simil(C8c, margin = "documents", method = "jaccard")
SC8 <- data.frame(jaccard = C8c[lower.tri(C8c, diag = FALSE)])
C8$LinguisticSimilarity <- mean(SC8$jaccard)