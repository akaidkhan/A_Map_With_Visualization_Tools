install.packages("cowplot")
install.packages("googleway")
install.packages("ggplot2")
install.packages("ggrepel")
install.packages("ggspatial")
install.packages("RColorBrewer")
install.packages("sf")
install.packages("rnaturalearth")
install.packages("rnaturalearthdata")

library(cowplot)
library(googleway)
library(ggplot2)
library(ggplot2)
library(ggspatial)
library(ggrepel)
library(RColorBrewer)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)


world <- ne_countries(scale = "medium", returnclass = "sf")
class(world)

ggplot(data = world) + geom_sf()

ggplot(data = world) +
  geom_sf() +
  xlab("Longitude") + ylab("Latitude") +
  ggtitle("World map", subtitle = paste0("(", length(unique(world$NAME)), " countries)"))

ggplot(data = world) + 
  geom_sf(color = "black", fill = "green")

ggplot(data = world) +
  geom_sf(aes(fill = pop_est)) +
  scale_fill_viridis_c(option = "plasma", trans = "sqrt")

ggplot(data = world) +
  geom_sf() +
  coord_sf(crs = "+proj=laea +lat_0=52 +lon_0=10 +x_0=4321000 +y_0=3210000 +ellps=GRS80 +units=m +no_defs ")


ggplot(data = world) +
  geom_sf() +
  coord_sf(xlim = c(105.15, 74.12), ylim = c(10.65, 33.97), expand = FALSE)



ggplot(data = world) +
  geom_sf() +
  annotation_scale(location = "bl", width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, "in"), pad_y = unit(0.5, "in"),
                         style = north_arrow_fancy_orienteering) +
  coord_sf(xlim = c(105.15, 74.12), ylim = c(10.65, 33.97))



####################
##############Under Working Country names and other names
#########################
  



#ggplot(data = world, color = "darkblue", fontface = "bold", check_overlap = FALSE)) + geom_sf()   













############################################33



ggsave("map.pdf")
ggsave("map_web.png", width = 6, height = 6, dpi = "screen")


