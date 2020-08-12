# Linguistic Similarity for Candidate #7
C7c <- dfm(corpus_subset(tweets, Candidate == "ELSA NOGUERA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c7c <- textstat_simil(C7c, margin = "documents", method = "jaccard")
SC7 <- data.frame(jaccard = C7c[lower.tri(C7c, diag = FALSE)])
C7$LinguisticSimilarity <- mean(SC7$jaccard)