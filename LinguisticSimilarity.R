# Linguistic Similarity for Candidate #1
LS <- dfm(tweets, remove_numbers = TRUE, remove = stopwords("spanish"), stem = TRUE, remove_punct = TRUE)
LSc <- textstat_simil(LS, margin = "documents", method = "jaccard")
LSdata <- data.frame(jaccard = LS[lower.tri(LS, diag = FALSE)])
#C1$LinguisticSimilarity <- mean(SC1$jaccard)