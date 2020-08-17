# Linguistic Similarity for Candidate #22
C22c <- dfm(corpus_subset(tweets, Candidate == "ALVARO LOPEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c22c <- textstat_simil(C22c, margin = "documents", method = "jaccard")
SC22 <- data.frame(jaccard = c22c[lower.tri(c22c, diag = FALSE)],  Candidate = "Alvaro Lopez")
C22$LinguisticSimilarity <- summary(SC22$jaccard)[4]