# Linguistic Similarity for Candidate #33
C33c <- dfm(corpus_subset(tweets, Candidate == "MONICA GAITAN"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c33c <- textstat_simil(C33c, margin = "documents", method = "jaccard")
SC33 <- data.frame(jaccard = C33c[lower.tri(C33c, diag = FALSE)])
C33$LinguisticSimilarity <- mean(SC33$jaccard)