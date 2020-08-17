# Linguistic Similarity for Candidate #20
C20c <- dfm(corpus_subset(tweets, Candidate == "JANETH RESTREPO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c20c <- textstat_simil(C20c, margin = "documents", method = "jaccard")
SC20 <- data.frame(jaccard = c20c[lower.tri(c20c, diag = FALSE)],  Candidate = "Janeth Restrepo")
C20$LinguisticSimilarity <- summary(SC20$jaccard)[4]