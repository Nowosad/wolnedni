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
#' is_sobota(data1)
#' is_sobota(data2)
#' is_sobota(data3)
#' @export
is_sobota <- function(data){
        if(inherits(data, 'Date')){
        wynik <- format(data, "%u") == 6
        return(wynik)
        } else {
                print("Sprawdz klase obiektu!")
        }
}

#' @rdname sobotaniedziela
#' @examples
#' is_niedziela(data1)
#' is_niedziela(data2)
#' is_niedziela(data3)
#' @export
is_niedziela <- function(data){
        if(inherits(data, 'Date')){
                wynik <- format(data, "%u") == 7
                return(wynik)
        } else {
                print("Sprawdz klase obiektu!")
        }
}