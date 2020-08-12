# Linguistic Similarity for Candidate #40
C40c <- dfm(corpus_subset(tweets, Candidate == "JUAN DIEGO MUÑOZ"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c40c <- textstat_simil(C40c, margin = "documents", method = "jaccard")
SC40 <- data.frame(jaccard = C40c[lower.tri(C40c, diag = FALSE)])
C40$LinguisticSimilarity <- mean(SC40$jaccard)