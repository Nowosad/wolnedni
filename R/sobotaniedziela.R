#' @title Funkcje sprawdzajace czy dana data jest sobota lub niedziela
#'
#' @description Funkcje sluzace do sprawdzenia czy podana data jest sobota lub niedziela
#'
#' @name sobotaniedziela
#' @rdname sobotaniedziela
#'
#' @param data obiekt klasy Date
#'
#' @return TRUE/FALSE
NULL

#' @rdname sobotaniedziela
#' @examples
#' data1 <- as.Date("2012-01-01")
#' data2 <- as.Date("2012-01-03")
#' data3 <- as.Date("2012-01-07")
#' is.sobota(data1)
#' is.sobota(data2)
#' is.sobota(data3)
#' @export
is.sobota <- function(data){
        if(inherits(data, 'Date')){
        wynik <- format(data, "%u") == 6
        return(wynik)
        } else {
                print("Sprawdz klase obiektu!")
        }
}

#' @rdname sobotaniedziela
#' @examples
#' is.niedziela(data1)
#' is.niedziela(data2)
#' is.niedziela(data3)
#' @export
is.niedziela <- function(data){
        if(inherits(data, 'Date')){
                wynik <- format(data, "%u") == 7
                return(wynik)
        } else {
                print("Sprawdz klase obiektu!")
        }
}