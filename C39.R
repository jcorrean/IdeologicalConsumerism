# Linguistic Similarity for Candidate #39
C39c <- dfm(corpus_subset(tweets, Candidate == "DELAY MAGDANIEL"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c39c <- textstat_simil(C39c, margin = "documents", method = "jaccard")
SC39 <- data.frame(jaccard = C39c[lower.tri(C39c, diag = FALSE)])
C39$LinguisticSimilarity <- mean(SC39$jaccard)