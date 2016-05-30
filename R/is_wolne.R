#' Funkcja sprawdzajaca czy dany dzien jest wolny od pracy w Polsce
#'
#' Funkcje pozwalaja na sprawdzenie czy dany dzien jest wolny od pracy w Polsce
#'
#' @param data obiekt klasy Date
#' @param nazwa TRUE/FALSE w przypadku wyboru FALSE wynikiem funkcji jest informacja czy dany dzien jest wolny, natomiast w przypadku wyboru TRUE wynikiem funkcji jest nazwa swieta/dnia wolnego
#' @param dzientygodnia TRUE/FALSE wynik to dzien tygodnia jesli data jest dniem roboczym; dla dni swiatecznych podana jest nazwa przypadajacego swieta lub dnia weekendu
#'
#' @return TRUE/FALSE lub nazwa
#' @importFrom lubridate yday year month day
#' @export
#'
#' @examples
#' data1 <- as.Date("2012-01-01")
#' data2 <- as.Date("2012-01-03")
#' data3 <- as.Date("2012-01-07")
#' is_wolne(data1)
#' is_wolne(data2)
#' is_wolne(data3, nazwa=TRUE)
#' is_wolne(data3, dzientygodnia=T)

is_wolne <- function(data, nazwa=FALSE, dzientygodnia=FALSE){

        if(dzientygodnia==TRUE) nazwa=TRUE # dodaje na wypadek gdyby ktos ustawil tylko 1 flage

        if(!(inherits(data, 'Date'))){
                print("Sprawdz klase obiektu!")
        } else if(yday(data)==1){
                x <- TRUE
                y <- "Nowy Rok"
        } else if(yday(data)==6 & year(data)>=2011){
                x <- TRUE
                y <- "Święto Trzech Króli"
        } else if(is_wielkanoc(data)){
                x <- TRUE
                y <- "Wielkanoc"
        } else if(is_poniedzialek_wielkanocny(data)){
                x <- TRUE
                y <- "Poniedziałek Wielkanocny"
        } else if(month(data)==5 & day(data)==1){
                x <- TRUE
                y <- "Święto Państwowe"
        } else if(month(data)==5 & day(data)==3){
                x <- TRUE
                y <- "Święto Narodowe Trzeciego Maja"
        } else if(is_zielone_swiatki(data)){
                x <- TRUE
                y <- "Zielone Świątki"
        } else if(is_boze_cialo(data)){
                x <- TRUE
                y <- "Boże Ciało"
        } else if(month(data)==8 & day(data)==15){
                x <- TRUE
                y <- "Wniebowzięcie Najświętszej Marii Panny"
        } else if(month(data)==11 & day(data)==1){
                x <- TRUE
                y <- "Uroczystość Wszystkich Świętych"
        } else if(month(data)==11 & day(data)==11){
                x <- TRUE
                y <- "Narodowe Święto Niepodległości"
        } else if(month(data)==12 & day(data)==25){
                x <- TRUE
                y <- "pierwszy dzień Bożego Narodzenia"
        } else if(month(data)==12 & day(data)==26){
                x <- TRUE
                y <- "drugi dzień Bożego Narodzenia"
        } else if(is_niedziela(data)){
                x <- TRUE
                y <- "niedziela"
        } else if(is_sobota(data)){
                x <- TRUE
                y <- "sobota"
        } else{
                x <- FALSE

                if(dzientygodnia==T){
                        y <- as.character(format(data, "%A"))
                } else {
                        y <- "inne"
                }
        }
        if (!nazwa){
                return(x)
        } else{
                return(y)
        }

}