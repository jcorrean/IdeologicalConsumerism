# Linguistic Similarity for Candidate #1
C1c <- dfm(corpus_subset(tweets, Candidate == "CLAUDIA LOPEZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE) 
c1c <- textstat_simil(C1c, margin = "documents", method = "jaccard")
SC1 <- data.frame(jaccard = c1c[lower.tri(c1c, diag = FALSE)], Candidate = "Claudia Lopez")
C1$LinguisticSimilarity <- summary(SC1$jaccard)[4]

