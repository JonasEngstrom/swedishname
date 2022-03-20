# Tests for generate_swedish_name()
test_that('generate_swedish_name() returns a character string.', {
  expect_type(generate_swedish_name(), 'character')
  expect_type(generate_swedish_name(sex = 'f'), 'character')
  expect_type(generate_swedish_name(sex = 'm'), 'character')
})

test_that('generate_swedish_name() returns a full name, when set to do so.', {
  expect_length(generate_swedish_name(), 1)
  expect_length(generate_swedish_name(sex = 'f'), 1)
  expect_length(generate_swedish_name(sex = 'm'), 1)
})

test_that('generate_swedish_name() returns separate first and last names, when set to do so.', {
  expect_length(generate_swedish_name(return_separate_names = TRUE), 2)
  expect_length(generate_swedish_name(sex = 'f', return_separate_names = TRUE), 2)
  expect_length(generate_swedish_name(sex = 'm', return_separate_names = TRUE), 2)
})

test_that('generate_swedish_name() returns an error message when an invalid value for sex is passed to the function.', {
  expect_error(generate_swedish_name(sex = 'x'), "Please set 'sex' to 'f' for female, 'm' for male, or 'b' for both.")
})
