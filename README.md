# Generate Swedish Name

Generates a Swedish name using data on the one hundred most common female
first names, male first names, and last names in Sweden in 2020, according to
[Statistics Sweden](http://www.scb.se/be0001). The names are weighted by
frequency in the population. The package can be used to generate dummy names
for statistical examples and exercises.

## How To Get Started

After having installed the package, using it is as simple as calling the
function `generate_swedish_name()`.

```r
swedish_sounding_name <- generate_swedish_name()
```
