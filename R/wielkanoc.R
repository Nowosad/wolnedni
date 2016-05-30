#' Funkcje liczace daty ruchomych swiat
#'
#' Funkcje pozwalaja na wyliczenie daty wielkanocy, poniedzialku wielkanocnego, zielonych swiatek i bozego ciala
#'
#' @name wielkanoc
#' @rdname wielkanoc
#'
#' @param rok wektor numeryczny zawierajacy wybrany rok/lata
#'
#' @return Wektor dat
#'

#' @rdname wielkanoc
#' @examples
#' wielkanoc(2010)
#' @export
wielkanoc <- function(rok){
        a <- rok %% 19
        b <- as.integer(rok/100)
        c <- rok %% 100
        d <- as.integer(b/4)
        e <- b %% 4
        f <- as.integer((b + 8)/25)
        g <- as.integer((b - f + 1)/3)
        h <- (19 * a + b - d - g + 15) %% 30
        i <- as.integer(c/4)
        k <- c %% 4
        l <- (32 + 2 * e + 2 * i - h - k) %% 7
        m <- as.integer((a + 11 * h + 22 * l)/451)
        p <- (h + l - 7 * m + 114) %% 31
        wielkanoc_dzien <- p + 1
        wielkanoc_miesiac <- as.integer((h + l - 7 * m + 114)/31)
        wielkanoc <- as.Date(paste(rok, wielkanoc_miesiac, wielkanoc_dzien, sep="-"))
        wielkanoc
}

#' @rdname wielkanoc
#' @examples
#' poniedzialek_wielkanocny(2012)
#' @export
poniedzialek_wielkanocny <- function(rok){
        wielkanoc(rok) + 1
}

#' @rdname wielkanoc
#' @examples
#' zielone_swiatki(c(2016, 2010))
#' @export
zielone_swiatki <- function(rok){
        wielkanoc(rok) + 49
}

#' @rdname wielkanoc
#' @examples
#' boze_cialo(2017)
#' @export
boze_cialo <- function(rok){
        wielkanoc(rok) + 60
}
