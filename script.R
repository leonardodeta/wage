library(ggplot2)
library(readxl)
dati <- read_excel("/Users/detassisleonardo/Desktop/wage_ggplot/dati1.xlsx")
{punto_x <- as.numeric(as.POSIXct("2001-4-1"))
  punto_1 <- as.numeric(as.POSIXct("2001-11-1"))
  punto_2 <- as.numeric(as.POSIXct("2008-1-1"))
  punto_3 <- as.numeric(as.POSIXct("2009-6-1"))
  punto_4 <- as.numeric(as.POSIXct("2020-2-1"))
  punto_5 <- as.numeric(as.POSIXct("2020-4-1"))
  p1996 <- as.numeric(as.POSIXct("1996-1-1"))
  p1998 <- as.numeric(as.POSIXct("1998-1-1"))
  p2000 <- as.numeric(as.POSIXct("2000-1-1"))
  p2002 <- as.numeric(as.POSIXct("2002-1-1"))
  p2004 <- as.numeric(as.POSIXct("2004-1-1"))
  p2006 <- as.numeric(as.POSIXct("2006-1-1"))
  p2008 <- as.numeric(as.POSIXct("2008-1-1"))
  p2010 <- as.numeric(as.POSIXct("2010-1-1"))
  p2012 <- as.numeric(as.POSIXct("2012-1-1"))
  p2014 <- as.numeric(as.POSIXct("2014-1-1"))
  p2016 <- as.numeric(as.POSIXct("2016-1-1"))
  p2018 <- as.numeric(as.POSIXct("2018-1-1"))
  p2020 <- as.numeric(as.POSIXct("2020-2-1"))
  p2022 <- as.numeric(as.POSIXct("2022-1-1"))
  
  
  g3 <- ggplot(dati, aes(x = anno, y = Male)) +
    geom_rect(xmin = punto_1, xmax = punto_x, ymin = 0, ymax = 16, fill = "#E5E5E5", alpha = 0.3) +
    geom_rect(xmin = punto_2, xmax = punto_3, ymin = 0, ymax = 16, fill = "#E5E5E5", alpha = 0.3) +
    geom_rect(xmin = punto_4, xmax = punto_5, ymin = 0, ymax = 16, fill = "#E5E5E5", alpha = 0.3) +
    geom_line(aes(color = "Male"), linewidth = 0.3, show.legend = TRUE) +
    geom_line(aes(anno, Female, color = "Female"), linewidth = 0.3, show.legend = TRUE, linetype = 1) +
    theme(panel.grid.major = element_line(color = "lightgrey")) +
    theme(panel.background = element_rect(fill = "white", color = "grey50")) +
    scale_y_continuous(breaks = c(1, 2, 3, 4, 5, 6, 7, 8)) +
    scale_x_continuous(breaks = c(p1996,p1998, p2000, p2002, p2004, p2006, p2008, p2010, p2012, p2014, p2016, p2018, p2020, p2022),  # Posizioni dei tick sull'asse Y
                       labels = c("1996", "1998","2000", "2002", "2004", "2006", "2008", "2010", "2012", "2014", "2016", "2018", "2020", "2022")) +
    labs(title = "Aumento salari USA",
         x = "",
         y = "%",
         subtitle = "La differenza tra maschi e femmine nell'aumento di salario negli USA, in grigio sono evidenziati i periodi di recessione.") +
    scale_color_manual(values = c("Male" = "darkblue", "Female" = "darkred")) +
    guides(color = guide_legend(override.aes = list(linetype = c(1, 1)),
                                title = "Legenda"))
  g3 + theme_bw()}
