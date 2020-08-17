# Linguistic Similarity for Candidate #31
C31c <- dfm(corpus_subset(tweets, Candidate == "HERNANDO JOSE PADAUI"), remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
c31c <- textstat_simil(C31c, margin = "documents", method = "jaccard")
SC31 <- data.frame(jaccard = c31c[lower.tri(c31c, diag = FALSE)], Candidate = "Hernando Jose Padaui")
C31$LinguisticSimilarity <- summary(SC31$jaccard)[4]