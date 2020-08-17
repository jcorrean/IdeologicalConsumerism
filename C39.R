# Linguistic Similarity for Candidate #39
C39c <- dfm(corpus_subset(tweets, Candidate == "DELAY MAGDANIEL"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c39c <- textstat_simil(C39c, margin = "documents", method = "jaccard")
SC39 <- data.frame(jaccard = c39c[lower.tri(c39c, diag = FALSE)], Candidate = "Delay Magdaniel")
C39$LinguisticSimilarity <- summary(SC39$jaccard)[4]