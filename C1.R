# Linguistic Similarity for Candidate #1
C1c <- dfm(corpus_subset(tweets, Candidate == "CLAUDIA LOPEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE) 
c1c <- textstat_simil(C1c, margin = "documents", method = "jaccard")
SC1 <- data.frame(jaccard = C1c[lower.tri(C1c, diag = FALSE)])
C1$LinguisticSimilarity <- mean(SC1$jaccard)
