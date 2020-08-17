# Linguistic Similarity for Candidate #33
C33c <- dfm(corpus_subset(tweets, Candidate == "MONICA GAITAN"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c33c <- textstat_simil(C33c, margin = "documents", method = "jaccard")
SC33 <- data.frame(jaccard = c33c[lower.tri(c33c, diag = FALSE)], Candidate = "Monica Gaitan")
C33$LinguisticSimilarity <- summary(SC33$jaccard)[4]