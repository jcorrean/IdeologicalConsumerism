# Linguistic Similarity for Candidate #9
C9c <- dfm(corpus_subset(tweets, Candidate == "JUAN GUILLERMO ZULUAGA"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c9c <- textstat_simil(C9c, margin = "documents", method = "jaccard")
SC9 <- data.frame(jaccard = C9c[lower.tri(C9c, diag = FALSE)])
C9$LinguisticSimilarity <- mean(SC9$jaccard)