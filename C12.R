# Linguistic Similarity for Candidate #12
C12c <- dfm(corpus_subset(tweets, Candidate == "ANGELA HERNANDEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c12c <- textstat_simil(C12c, margin = "documents", method = "jaccard")
SC12 <- data.frame(jaccard = c12c[lower.tri(c12c, diag = FALSE)],  Candidate = "Angela Hernandez")
C12$LinguisticSimilarity <- summary(SC12$jaccard)[4]