
ggplot(data = mpg)
geom_point(mapping = aes(x = displ, y = hwy))
filter(mpg, cyl == 8)
ggplot(data = diamonds)
filter (diamonds, carat == 3)

view(diamonds)

ggplot(dota = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))
fliter(mpg, cyl = 8)
filter(diamond, carat > 3)



help(filter)




install.packages("nycflights13")
library(nycflights13)


nycflights13::flights
view(flights)
vuelos = flights

filter(flights, month == 1, day ==1)
view(filter(flights, month == 1, day ==1))

jan1 <- filter(flights, month == 1, day == 1)
feb1 <- filter(flights, month == 2, day == 1)
mar1 <- filter(flights, month == 3, day == 1)
apr1 <- filter(flights, month == 4, day == 1)
may1 <- filter(flights, month == 5, day == 1)
jun1 <- filter(flights, month == 6, day == 1)
jul1 <- filter(flights, month == 7, day == 1)
ago1 <- filter(flights, month == 8, day == 1)
sep1 <- filter(flights, month == 9, day == 1)
oct1 <- filter(flights, month == 10, day == 1)
nov1 <- filter(flights, month == 11, day == 1)
dic1 <- filter(flights, month == 12, day == 1)

# remove(jan1)
# remove(feb1)
# remove(mar1)
# remove(apr1)
# remove(may1)
# remove(jun1)
# remove(jul1)
# remove(ago1)
# remove(sep1)
# remove(oct1)
# remove(nov1)
# remove(dic1)


#
filter(flights, month == 1)

nov_dec <- filter(flights, month %in% c(11, 12))

view(filter(flights, month == 11 | month == 12))

filter(flights, !(arr_delay > 120 | dep_delay > 120))

filter(flights, arr_delay <= 120, dep_delay <= 120)

#s???, est??? reconociendo

library(psych)

library(neuralnet)

aqui estamos intentando compartir un codigo

# y parece que funciona bien 
