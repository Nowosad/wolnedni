#' Funkcja sprawdzajaca czy dany dzien jest wolny od pracy w Polsce
#'
#' Funkcje pozwalaja na sprawdzenie czy dany dzien jest wolny od pracy w Polsce
#'
#' @param data obiekt klasy Date
#'
#' @return TRUE/FALSE
#' @importFrom lubridate yday year month day
#' @export
#'
#' @examples
#' data1 <- as.Date("2012-01-01")
#' data2 <- as.Date("2012-01-03")
#' data3 <- as.Date("2012-01-07")
#' is_wolne(data1)
#' is_wolne(data2)
#' is_wolne(data3)

is_wolne <- function(data){
        if(!(inherits(data, 'Date'))){
                print("Sprawdz klase obiektu!")
        } else if(is_niedziela(data)){
                x <- TRUE #niedziela
        } else if(is_sobota(data)){
                x <- TRUE #sobota
        } else if(yday(data)==1){
                x <- TRUE #nowy rok
        } else if(yday(data)==6 & year(data)>=2011){
                x <- TRUE #trzech kroli
        } else if(is_wielkanoc(data)){
                x <- TRUE #wielkanoc
        } else if(is_poniedzialek_wielkanocny(data)){
                x <- TRUE #poniedzialek wielkanocny
        } else if(month(data)==5 & day(data)==1){
                x <- TRUE #swieto panstwowe
        } else if(month(data)==5 & day(data)==3){
                x <- TRUE #swieto narodowe trzeciego maja
        } else if(is_zielone_swiatki(data)){
                x <- TRUE #zielone swiatki
        } else if(is_boze_cialo(data)){
                x <- TRUE #boze cialo
        } else if(month(data)==8 & day(data)==15){
                x <- TRUE#Wniebowzięcie Najświętszej Marii Panny
        } else if(month(data)==11 & day(data)==1){
                x <- TRUE #Uroczystość Wszystkich Świętych
        } else if(month(data)==11 & day(data)==11){
                x <- TRUE #Narodowe Święto Niepodległości
        } else if(month(data)==12 & day(data)==25){
                x <- TRUE #pierwszy dzień Bożego Narodzenia
        } else if(month(data)==12 & day(data)==26){
                x <- TRUE #drugi dzień Bożego Narodzenia
        } else{
                x <- FALSE
        }
        return(x)
}