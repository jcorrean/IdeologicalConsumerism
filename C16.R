# Linguistic Similarity for Candidate #16
C16c <- dfm(corpus_subset(tweets, Candidate == "JONATAN NULL SANCHEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c16c <- textstat_simil(C16c, margin = "documents", method = "jaccard")
SC16 <- data.frame(jaccard = c16c[lower.tri(c16c, diag = FALSE)],  Candidate = "Jonatan Sanchez")
C16$LinguisticSimilarity <- summary(SC16$jaccard)[4]