# funkcje
library('lubridate')
library('magrittr')
library('plyr')

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

poniedzialek_wielkanocny <- function(rok){
        wielkanoc(rok) + 1
}

zielone_swiatki <- function(rok){
        wielkanoc(rok) + 49
}

boze_cialo <- function(rok){
        wielkanoc(rok) + 60
}

# prep

lata <- c(2001:2025)
df <- data.frame(year=lata)

# Nowy Rok

Nowy_Rok <- df
Nowy_Rok$what <- "Nowy Rok"
Nowy_Rok$when <- 1

# Święto Trzech Króli

Swieto_Trzech_Kroli <- df
Swieto_Trzech_Kroli$what <- "Święto Trzech Króli"
Swieto_Trzech_Kroli$when <- 6
Swieto_Trzech_Kroli$when[Swieto_Trzech_Kroli$year < 2011] <- NA

# Niedziela Wielkanocna

w <- wielkanoc(lata)
W <- df
W$what <- "Niedziela Wielkanocna"
W$when <- yday(w)


# Poniedziałek Wielkanocny

pw <- poniedzialek_wielkanocny(lata)
PW <- df
PW$what <- "Poniedziałek Wielkanocny"
PW$when <- yday(pw)

# Święto Państwowe (Święto Pracy)

sp <- as.Date(paste0(lata, "-05-01"))
sp_doy <- yday(sp)
Swieto_Panstwowe <- df
Swieto_Panstwowe$what <- "Święto Państwowe"
Swieto_Panstwowe$when <- sp_doy

# Święto Narodowe Trzeciego Maja

tm <- as.Date(paste0(lata, "-05-03"))
tm_doy <- yday(tm)
Swieto_Narodowe_3_Maja <- df
Swieto_Narodowe_3_Maja$what <- "Święto Narodowe Trzeciego Maja"
Swieto_Narodowe_3_Maja$when <- tm_doy

# Pierwszy dzień Zielonych Świątek

zs <- zielone_swiatki(lata)
ZS <- df
ZS$what <- "Pierwszy dzień Zielonych Świątek"
ZS$when <- yday(zs)

# Dzień Bożego Ciała

bc <- zielone_swiatki(lata)
BC <- df
BC$what <- "Dzień Bożego Ciała"
BC$when <- yday(bc)

# Wniebowzięcie Najświętszej Marii Panny

wnmp <- as.Date(paste0(lata, "-08-15"))
wnmp_doy <- yday(wnmp)
WNMP <- df
WNMP$what <- "Wniebowzięcie Najświętszej Marii Panny"
WNMP$when <- wnmp_doy

# Uroczystość Wszystkich Świętych

uws <- as.Date(paste0(lata, "-11-01"))
uws_doy <- yday(uws)
UWS <- df
UWS$what <- "Uroczystość Wszystkich Świętych"
UWS$when <- uws_doy

# Narodowe Święto Niepodległości

nsn <- as.Date(paste0(lata, "-11-11"))
nsn_doy <- yday(nsn)
NSN <- df
NSN$what <- "Narodowe Święto Niepodległości"
NSN$when <- nsn_doy

# pierwszy dzień Bożego Narodzenia

pdbn <- as.Date(paste0(lata, "-12-25"))
pdbn_doy <- yday(pdbn)
PDBN <- df
PDBN$what <- "pierwszy dzień Bożego Narodzenia"
PDBN$when <- pdbn_doy

# drugi dzień Bożego Narodzenia

ddbn <- as.Date(paste0(lata, "-12-26"))
ddbn_doy <- yday(ddbn)
DDBN <- df
DDBN$what <- "drugi dzień Bożego Narodzenia"
DDBN$when <- ddbn_doy

# łączenie

dni_wolne <- rbind(Nowy_Rok,
                   Swieto_Trzech_Kroli,
                   W,
                   PW,
                   Swieto_Panstwowe,
                   Swieto_Narodowe_3_Maja,
                   ZS,
                   BC,
                   WNMP,
                   UWS,
                   NSN,
                   PDBN,
                   DDBN)

# http://stackoverflow.com/questions/18693559/r-how-to-get-a-date-from-day-of-year
dni_wolne$termin <- strptime(paste(dni_wolne$year, dni_wolne$when), format="%Y %j")

dni_wolne <- na.omit(dni_wolne[c(4,2)])
colnames(dni_wolne) <- c("data", "nazwa")
dni_wolne <- dni_wolne[!(is.na(dni_wolne$data)), ]

save(dni_wolne, file='data/dni_wolne.rda')
