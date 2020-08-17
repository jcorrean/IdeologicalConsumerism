# Linguistic Similarity for Candidate #40
C40c <- dfm(corpus_subset(tweets, Candidate == "JUAN DIEGO MUÑOZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c40c <- textstat_simil(C40c, margin = "documents", method = "jaccard")
SC40 <- data.frame(jaccard = c40c[lower.tri(c40c, diag = FALSE)], Candidate = "Juan Diego Muñoz")
C40$LinguisticSimilarity <- summary(SC40$jaccard)[4]