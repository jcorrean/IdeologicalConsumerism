# Linguistic Similarity for Candidate #43
C43c <- dfm(corpus_subset(tweets, Candidate == "AGUSTIN PINTO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c43c <- textstat_simil(C43c, margin = "documents", method = "jaccard")
SC43 <- data.frame(jaccard = C43c[lower.tri(C43c, diag = FALSE)])
C43$LinguisticSimilarity <- mean(SC43$jaccard)