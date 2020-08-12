# Linguistic Similarity for Candidate #46
C46c <- dfm(corpus_subset(tweets, Candidate == "JORGE PEREZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c46c <- textstat_simil(C46c, margin = "documents", method = "jaccard")
SC46 <- data.frame(jaccard = C46c[lower.tri(C46c, diag = FALSE)])
C46$LinguisticSimilarity <- mean(SC46$jaccard)