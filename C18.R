# Linguistic Similarity for Candidate #18
C18c <- dfm(corpus_subset(tweets, Candidate == "ELKIN BUENO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c18c <- textstat_simil(C18c, margin = "documents", method = "jaccard")
SC18 <- data.frame(jaccard = c18c[lower.tri(c18c, diag = FALSE)],  Candidate = "Elkin Bueno")
C18$LinguisticSimilarity <- summary(SC18$jaccard)[4]