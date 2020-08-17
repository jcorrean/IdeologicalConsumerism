# Linguistic Similarity for Candidate #7
C7c <- dfm(corpus_subset(tweets, Candidate == "ELSA NOGUERA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c7c <- textstat_simil(C7c, margin = "documents", method = "jaccard")
SC7 <- data.frame(jaccard = c7c[lower.tri(c7c, diag = FALSE)],  Candidate = "Elsa Noguera")
C7$LinguisticSimilarity <- summary(SC7$jaccard)[4]