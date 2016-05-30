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
```

### Określanie daty świąt w kolejnych latach

``` r
wielkanoc(2010)
#> [1] "2010-04-04"
poniedzialek_wielkanocny(2012)
#> [1] "2012-04-09"
zielone_swiatki(c(2016, 2010))
#> [1] "2016-05-15" "2010-05-23"
boze_cialo(2017)
#> [1] "2017-06-15"
```

### Sprawdzanie czy data jest świętem ruchomym

``` r
data <- as.Date("2016-03-27")

is_wielkanoc(data)
#> [1] TRUE
is_poniedzialek_wielkanocny(data)
#> [1] FALSE
is_zielone_swiatki(data)
#> [1] FALSE
is_boze_cialo(data)
#> [1] FALSE
```

### Sprawdzenie czy data jest sobotą lub niedzielą

``` r
is_sobota(data)
#> [1] FALSE
is_niedziela(data)
#> [1] TRUE
```

### Sprawdzenie czy data jest dniem wolnym od pracy

``` r
is_wolne(data)
#> [1] TRUE
```

### Sprawdzenie nazwy dnia wolnego

``` r
is_wolne(data, nazwa = TRUE)
#> [1] "Wielkanoc"
is_wolne(data, dzientygodnia = TRUE)
#> [1] "Wielkanoc"
```

### Zbiór danych zawierający dni wolne w latach 2001-2025

``` r
data('dni_wolne')
```

| data       | nazwa                                  |
|:-----------|:---------------------------------------|
| 2016-01-01 | Nowy Rok                               |
| 2016-01-06 | Święto Trzech Króli                    |
| 2016-03-27 | Niedziela Wielkanocna                  |
| 2016-03-28 | Poniedziałek Wielkanocny               |
| 2016-05-01 | Święto Państwowe                       |
| 2016-05-03 | Święto Narodowe Trzeciego Maja         |
| 2016-05-15 | Pierwszy dzień Zielonych Świątek       |
| 2016-05-26 | Dzień Bożego Ciała                     |
| 2016-08-15 | Wniebowzięcie Najświętszej Marii Panny |
| 2016-11-01 | Uroczystość Wszystkich Świętych        |
| 2016-11-11 | Narodowe Święto Niepodległości         |
| 2016-12-25 | pierwszy dzień Bożego Narodzenia       |
| 2016-12-26 | drugi dzień Bożego Narodzenia          |
