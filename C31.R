# Linguistic Similarity for Candidate #31
C31c <- dfm(corpus_subset(tweets, Candidate == "HERNANDO JOSE PADAUI"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c31c <- textstat_simil(C31c, margin = "documents", method = "jaccard")
SC31 <- data.frame(jaccard = C31c[lower.tri(C31c, diag = FALSE)])
C31$LinguisticSimilarity <- mean(SC31$jaccard)