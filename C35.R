# Linguistic Similarity for Candidate #35
C35c <- dfm(corpus_subset(tweets, Candidate == "NICOLAS IVAN GALLARDO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c35c <- textstat_simil(C35c, margin = "documents", method = "jaccard")
SC35 <- data.frame(jaccard = c35c[lower.tri(c35c, diag = FALSE)], Candidate = "Nicolas Ivan Gallardo")
C35$LinguisticSimilarity <- summary(SC35$jaccard)[4]