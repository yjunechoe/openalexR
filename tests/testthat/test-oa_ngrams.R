test_that("oa_ngrams works", {
  skip(message = "Skipping") # TODO to remove

  skip_on_cran()

  # Single paper ngram search ####
  works_multi <- c("W2317271409")
  ngram_multi <- oa_ngrams(works_multi)

  expect_equal(nrow(ngram_multi), length(works_multi))

  first_ngram <- ngram_multi$ngrams[[1]]
  expect_s3_class(first_ngram, "data.frame")
  expect_true(ncol(first_ngram) >= 4)
})
