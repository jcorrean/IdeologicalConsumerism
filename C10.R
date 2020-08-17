# Linguistic Similarity for Candidate #10
C10c <- dfm(corpus_subset(tweets, Candidate == "NERTHINK AGUILAR"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c10c <- textstat_simil(C10c, margin = "documents", method = "jaccard")
SC10 <- data.frame(jaccard = c10c[lower.tri(c10c, diag = FALSE)],  Candidate = "Nerthink Aguilar")
C10$LinguisticSimilarity <- summary(SC10$jaccard)[4]