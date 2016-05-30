#' Funkcje sprawdzajace czy data jest swietem ruchomym
#'
#' Funkcje pozwalaja na sprawdzenie czy zadany termin jest data wielkanocy, poniedzialku wielkanocnego, zielonych swiatek lub bozego ciala
#'
#' @name is_wielkanoc
#' @rdname is_wielkanoc
#'
#' @param data obiekt klasy Date
#'
#' @return Wektor dat
#' @importFrom lubridate year
#'
NULL

#' @rdname is_wielkanoc
#' @examples
#' data <- as.Date("2016-03-27")
#' is_wielkanoc(data)
#' @export
is_wielkanoc <- function(data){
        wielkanoc(year(data)) == data
}

#' @rdname is_wielkanoc
#' @examples
#' is_poniedzialek_wielkanocny(data)
#' @export
is_poniedzialek_wielkanocny <- function(data){
        poniedzialek_wielkanocny(year(data)) == data
}

#' @rdname is_wielkanoc
#' @examples
#' is_zielone_swiatki(data)
#' @export
is_zielone_swiatki <- function(data){
        zielone_swiatki(year(data)) == data
}

#' @rdname is_wielkanoc
#' @examples
#' is_boze_cialo(data)
#' @export
is_boze_cialo <- function(data){
        boze_cialo(year(data)) == data
}