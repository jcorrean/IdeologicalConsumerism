# Linguistic Similarity for Candidate #24
C24c <- dfm(corpus_subset(tweets, Candidate == "NOHORA STELLA TOVAR"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c24c <- textstat_simil(C24c, margin = "documents", method = "jaccard")
SC24 <- data.frame(jaccard = C24c[lower.tri(C24c, diag = FALSE)])
C24$LinguisticSimilarity <- mean(SC24$jaccard)