#' Funkcja sprawdzajaca czy dana data jest sobota lub niedziela
#'
#' @param data w klasie Date
#'
#' @return TRUE/FALSE
#'
#' @export
#'
#' @examples
#' data1 <- as.Date("2012-01-01")
#' data2 <- as.Date("2012-01-03")
#' data3 <- as.Date("2012-01-07")
#' is.sobota(data1)
#' is.niedziela(data1)
#' is.sobota(data2)
#' is.niedziela(data2)
#' is.sobota(data3)
#' is.niedziela(data3)

is.sobota <- function(data){
        if(inherits(data, 'Date')){
        wynik <- format(data, "%u") == 6
        return(wynik)
        } else {
                print("Sprawdz klase obiektu!")
        }
}

#' @export
#' @describeIn is.sobota Sobota
is.niedziela <- function(data){
        if(inherits(data, 'Date')){
                wynik <- format(data, "%u") == 7
                return(wynik)
        } else {
                print("Sprawdz klase obiektu!")
        }
}