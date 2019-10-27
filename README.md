
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nationalparkcolors

The goal of nationalparkcolors is to provide an interface to the
beautiful colors in National Park posters and images. The posters are a
mix of the WPA originals and more modern remakes.

## Installation

You can install the released version of nationalparkcolors from GitHub
with:

``` r
# install.packages("devtools")
devtools::install_github("katiejolly/nationalparkcolors")
```

<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNS1Au8a9aLV9ZdvMo1F_s22jlx70AHWq3CqlLUNK4O4M2PG0c" width="200px" /><img src="https://zionpark.org/wp-content/uploads/2018/08/retrobryce.png" width="200px" /><img src="https://i.pinimg.com/736x/60/d4/c1/60d4c16a3102e33d7c73c9b6bc72c04b.jpg" width="200px" />

## Example

There are 25 total palettes to choose from.

``` r
library(nationalparkcolors)

names(park_palettes)
#>  [1] "SmokyMountains" "RockyMountains" "Yellowstone"    "Arches"        
#>  [5] "ArcticGates"    "MtMckinley"     "GeneralGrant"   "Hawaii"        
#>  [9] "CraterLake"     "Saguaro"        "GrandTeton"     "BryceCanyon"   
#> [13] "MtRainier"      "Badlands"       "Redwoods"       "Everglades"    
#> [17] "Voyageurs"      "BlueRidgePkwy"  "Denali"         "GreatBasin"    
#> [21] "ChannelIslands" "Yosemite"       "Acadia"         "DeathValley"   
#> [25] "Zion"
```

You can create a palette in just one command (+ get an image of the
palette).

``` r
pal <- park_palette("MtRainier")
```

If you want a specific number of colors, you can also do
that.

``` r
pal <- park_palette("MtRainier", 4)
```

## Palettes

<img src="man/figures/README-unnamed-chunk-6-1.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-2.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-3.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-4.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-5.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-6.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-7.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-8.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-9.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-10.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-11.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-12.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-13.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-14.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-15.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-16.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-17.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-18.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-19.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-20.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-21.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-22.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-23.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-24.png" width="300px" /><img src="man/figures/README-unnamed-chunk-6-25.png" width="300px" />

Along with the nice color palettes, I also hope that people think more
about the national park system when using this package. I am not
affiliated with the Park Service, but if you’d like to support them you
can [donate here](https://www.nps.gov/getinvolved/donate.htm).
