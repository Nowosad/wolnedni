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
```

``` r
knitr::kable(dni_wolne[c(1, 50, 60, 90, 120, 150, 160, 180, 210, 240, 270, 300, 320), ], row.names = FALSE)
```

| data       | nazwa                                  |
|:-----------|:---------------------------------------|
| 2001-01-01 | Nowy Rok                               |
| 2025-01-06 | Święto Trzech Króli                    |
| 2010-04-04 | Niedziela Wielkanocna                  |
| 2015-04-06 | Poniedziałek Wielkanocny               |
| 2020-05-01 | Święto Państwowe                       |
| 2025-05-03 | Święto Narodowe Trzeciego Maja         |
| 2010-05-23 | Pierwszy dzień Zielonych Świątek       |
| 2005-05-15 | Dzień Bożego Ciała                     |
| 2010-08-15 | Wniebowzięcie Najświętszej Marii Panny |
| 2015-11-01 | Uroczystość Wszystkich Świętych        |
| 2020-11-11 | Narodowe Święto Niepodległości         |
| 2025-12-25 | pierwszy dzień Bożego Narodzenia       |
| 2020-12-26 | drugi dzień Bożego Narodzenia          |

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
