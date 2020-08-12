# Linguistic Similarity for Candidate #10
C10c <- dfm(corpus_subset(tweets, Candidate == "NERTHINK AGUILAR"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c10c <- textstat_simil(C10c, margin = "documents", method = "jaccard")
SC10 <- data.frame(jaccard = C10c[lower.tri(C10c, diag = FALSE)])
C10$LinguisticSimilarity <- mean(SC10$jaccard)