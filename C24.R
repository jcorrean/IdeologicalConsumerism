# Linguistic Similarity for Candidate #24
C24c <- dfm(corpus_subset(tweets, Candidate == "NOHORA STELLA TOVAR"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c24c <- textstat_simil(C24c, margin = "documents", method = "jaccard")
SC24 <- data.frame(jaccard = c24c[lower.tri(c24c, diag = FALSE)], Candidate = "Nohora Stella Tovar")
C24$LinguisticSimilarity <- summary(SC24$jaccard)[4]