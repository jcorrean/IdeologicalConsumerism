# Linguistic Similarity for Candidate #28
C28c <- dfm(corpus_subset(tweets, Candidate == "NICOLAS PETRO"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c28c <- textstat_simil(C28c, margin = "documents", method = "jaccard")
SC28 <- data.frame(jaccard = C28c[lower.tri(C28c, diag = FALSE)])
C28$LinguisticSimilarity <- mean(SC28$jaccard)