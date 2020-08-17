# Linguistic Similarity for Candidate #43
C43c <- dfm(corpus_subset(tweets, Candidate == "AGUSTIN PINTO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c43c <- textstat_simil(C43c, margin = "documents", method = "jaccard")
SC43 <- data.frame(jaccard = c43c[lower.tri(c43c, diag = FALSE)], Candidate = "Agustin Pinto")
C43$LinguisticSimilarity <- summary(SC43$jaccard)[4]