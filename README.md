<!-- README.md is generated from README.Rmd. Please edit that file -->
Dni wolne
=========

[![Build Status](https://travis-ci.org/Nowosad/wolnedni.png?branch=master)](https://travis-ci.org/Nowosad/wolnedni)

Instalacja
----------

``` r
devtools::install_github("nowosad/wolnedni")
```

Używanie
--------

``` r
library('wolnedni')

# zbiór danych zawierający dni wolne w latach 2001-2025
data('dni_wolne')
knitr::kable(dni_wolne[c(1, 50, 60, 90, 120,150, 180, 210, 240, 270, 300), ])
```

|     | data       | nazwa                                  |
|-----|:-----------|:---------------------------------------|
| 1   | 2001-01-01 | Nowy Rok                               |
| 50  | 2025-01-06 | Święto Trzech Króli                    |
| 60  | 2010-04-05 | Poniedziałek Wielkanocny               |
| 90  | 2015-05-01 | Święto Państwowe                       |
| 120 | 2020-05-03 | Święto Narodowe Trzeciego Maja         |
| 150 | 2025-06-08 | Pierwszy dzień Zielonych Świątek       |
| 180 | 2005-08-15 | Wniebowzięcie Najświętszej Marii Panny |
| 210 | 2010-11-01 | Uroczystość Wszystkich Świętych        |
| 240 | 2015-11-11 | Narodowe Święto Niepodległości         |
| 270 | 2020-12-25 | pierwszy dzień Bożego Narodzenia       |
| 300 | 2025-12-26 | drugi dzień Bożego Narodzenia          |

``` r

# określanie daty świąt w kolejnych latach
wielkanoc(2010)
#> [1] "2010-04-04"

poniedzialek_wielkanocny(2012)
#> [1] "2012-04-09"

zielone_swiatki(c(2016, 2010))
#> [1] "2016-05-15" "2010-05-23"

boze_cialo(2017)
#> [1] "2017-06-15"
```
