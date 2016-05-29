#' Funkcja sprawdzajaca czy dana data jest sobota lub niedziela
#'
#'
#' @param data w klasie Date
#'
#' @return TRUE/FALSE
#'
#' @export
#'
#' @examples
#' data <- as.Date("2012-01-01")
#' is.sobota(data)
#' is.niedziela(data)

is.sobota <- function(data){
        if(class(data)=="Date"){
        wynik <- format(data,"%u")==6
        return(wynik)
        } else {
                print("sprawdz klase obiektu!")
        }
}

is.niedziela <- function(data){
        if(class(data)=="Date"){
                wynik <- format(data,"%u")==7
                return(wynik)
        } else {
                print("sprawdz klase obiektu!")
        }
}