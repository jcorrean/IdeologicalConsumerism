# Linguistic Similarity for Candidate #46
C46c <- dfm(corpus_subset(tweets, Candidate == "JORGE PEREZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c46c <- textstat_simil(C46c, margin = "documents", method = "jaccard")
SC46 <- data.frame(jaccard = c46c[lower.tri(c46c, diag = FALSE)], Candidate = "Jorge Perez")
C46$LinguisticSimilarity <- summary(SC46$jaccard)[4]