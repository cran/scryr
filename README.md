
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scryr <a href="https://curso-r.github.io/scryr/"><img src="man/figures/logo.png" align="right" height="138" /></a>

<!-- badges: start -->

[![R-CMD-check](https://github.com/curso-r/scryr/workflows/R-CMD-check/badge.svg)](https://github.com/curso-r/scryr/actions)
[![Codecov test
coverage](https://codecov.io/gh/curso-r/scryr/branch/main/graph/badge.svg)](https://app.codecov.io/gh/curso-r/scryr?branch=main)
[![CII Best
Practices](https://bestpractices.coreinfrastructure.org/projects/5507/badge)](https://bestpractices.coreinfrastructure.org/projects/5507)
<!-- badges: end -->

scryr is a simple, light, and robust interface between R and
[Scryfall](https://scryfall.com/)’s powerful *Magic: The Gathering* card
search engine. It wraps the [Scryfall
API](https://scryfall.com/docs/api) and makes all endpoints available as
simple functions that any R programmer can use.

## Installation

``` r
# Install released version from CRAN
install.packages("scryr")
```

You can install the development version of scryr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("curso-r/scryr")
```

## Usage

scryr makes it easy to process *Magic* cards’ data programmatically.
There are many endpoints that fully support tidyverse compatible
analyses. For more information, start with `vignette("scryr")` or the
[full documentation](https://curso-r.github.io/scryr/).

``` r
library(scryr)

# Find red creatures with 7 power, sorted by converted mana cost
cards <- scry_cards("c:red+pow=7", order = "cmc")

# Simple pipeline that counts how many cards of each rarity have a price
cards %>%
  unnest(prices) %>%
  filter(!is.na(usd)) %>%
  count(rarity)
#> # A tibble: 4 × 2
#>   rarity       n
#>   <chr>    <int>
#> 1 common       5
#> 2 mythic      16
#> 3 rare        22
#> 4 uncommon     4

# Summary of full data
glimpse(cards)
#> Rows: 52
#> Columns: 72
#> $ id                <chr> "deaa0b9b-258e-4daf-8fec-ce64864d6bbf", "e0d…
#> $ name              <chr> "Cosmic Larva", "Blistering Firecat", "Deep-…
#> $ set               <chr> "5dn", "ons", "shm", "jmp", "c16", "bng", "c…
#> $ lang              <chr> "en", "en", "en", "en", "en", "en", "en", "e…
#> $ colors            <list> "R", "R", "R", "R", <"R", "W">, <"B", "R">,…
#> $ color_identity    <list> "R", "R", "R", "R", <"R", "W">, <"B", "R">,…
#> $ mana_cost         <chr> "{1}{R}{R}", "{1}{R}{R}{R}", "{2}{R}{R}", "{…
#> $ cmc               <dbl> 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5,…
#> $ oracle_text       <chr> "Trample\nAt the beginning of your upkeep, s…
#> $ power             <chr> "7", "7", "7", "7", "7", "7", "7", "7", "7",…
#> $ toughness         <chr> "6", "1", "7", "3", "4", "5", "7", "7", "7",…
#> $ type_line         <chr> "Creature — Beast", "Creature — Elemental Ca…
#> $ edhrec_rank       <int> 11983, 11391, 15623, 14477, 1122, 2146, 8474…
#> $ keywords          <list> "Trample", <"Morph", "Haste", "Trample">, <…
#> $ layout            <chr> "normal", "normal", "normal", "normal", "nor…
#> $ legalities        <list> [<tbl_df[1 x 18]>], [<tbl_df[1 x 18]>], [<t…
#> $ oversized         <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FA…
#> $ reserved          <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FA…
#> $ oracle_id         <chr> "97428d25-d850-4a98-8852-9440e06a9091", "b35…
#> $ mtgo_id           <int> 20656, 18075, 29603, NA, NA, 51743, 40641, 3…
#> $ mtgo_foil_id      <int> 20657, 18076, 29604, NA, NA, 51744, 40961, 3…
#> $ multiverse_ids    <list> 43529, 39737, 159396, 489527, 420822, 37852…
#> $ tcgplayer_id      <int> 11871, 10357, 18605, 216652, 124134, 78745, …
#> $ cardmarket_id     <int> 579, 1820, 19103, 474694, 293507, 265594, 24…
#> $ uri               <chr> "https://api.scryfall.com/cards/deaa0b9b-258…
#> $ scryfall_uri      <chr> "https://scryfall.com/card/5dn/63/cosmic-lar…
#> $ rulings_uri       <chr> "https://api.scryfall.com/cards/deaa0b9b-258…
#> $ prints_search_uri <chr> "https://api.scryfall.com/cards/search?order…
#> $ artist            <chr> "Jeff Easley", "Arnie Swekel", "Steve Presco…
#> $ artist_ids        <list> "da17055e-693c-461a-b132-67dd88b42ca6", "af…
#> $ booster           <lgl> TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, …
#> $ border_color      <chr> "black", "black", "black", "black", "black",…
#> $ card_back_id      <chr> "0aeebaf5-8c7d-4636-9e82-8c27447861f7", "0ae…
#> $ collector_number  <chr> "63", "189", "89", "337", "205", "151", "221…
#> $ digital           <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FA…
#> $ foil              <lgl> TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, FALSE,…
#> $ nonfoil           <lgl> TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TR…
#> $ finishes          <list> <"nonfoil", "foil">, <"nonfoil", "foil">, <…
#> $ flavor_text       <chr> "For millennia they wandered from plane to p…
#> $ frame             <chr> "2003", "1997", "2003", "2015", "2015", "200…
#> $ full_art          <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FA…
#> $ games             <list> <"paper", "mtgo">, <"paper", "mtgo">, <"pap…
#> $ highres_image     <lgl> TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TR…
#> $ illustration_id   <chr> "a9d4728d-bc0a-4a44-9943-587b10994d2d", "6dd…
#> $ image_status      <chr> "highres_scan", "highres_scan", "highres_sca…
#> $ image_uris        <list> [<tbl_df[1 x 6]>], [<tbl_df[1 x 6]>], [<tbl…
#> $ prices            <list> [<tbl_df[1 x 5]>], [<tbl_df[1 x 5]>], [<tbl…
#> $ promo             <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FA…
#> $ purchase_uris     <list> [<tbl_df[1 x 3]>], [<tbl_df[1 x 3]>], [<tbl…
#> $ rarity            <chr> "rare", "rare", "rare", "uncommon", "mythic"…
#> $ related_uris      <list> [<tbl_df[1 x 5]>], [<tbl_df[1 x 5]>], [<tbl…
#> $ released_at       <date> 2004-06-04, 2002-10-07, 2008-05-02, 2020-07…
#> $ reprint           <lgl> FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALS…
#> $ scryfall_set_uri  <chr> "https://scryfall.com/sets/5dn?utm_source=ap…
#> $ set_name          <chr> "Fifth Dawn", "Onslaught", "Shadowmoor", "Ju…
#> $ set_search_uri    <chr> "https://api.scryfall.com/cards/search?order…
#> $ set_type          <chr> "expansion", "expansion", "expansion", "draf…
#> $ set_uri           <chr> "https://api.scryfall.com/sets/e4bc1b87-5476…
#> $ set_id            <chr> "e4bc1b87-5476-463c-8640-4c414ecf1763", "914…
#> $ story_spotlight   <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FA…
#> $ textless          <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FA…
#> $ variation         <lgl> FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FA…
#> $ arena_id          <int> NA, NA, NA, 72399, NA, NA, NA, NA, NA, 70655…
#> $ frame_effects     <list> <NULL>, <NULL>, <NULL>, <NULL>, "nyxtouched…
#> $ security_stamp    <chr> NA, NA, NA, NA, "oval", NA, NA, NA, NA, NA, …
#> $ preview           <list> <NULL>, <NULL>, <NULL>, <NULL>, <NULL>, <NU…
#> $ all_parts         <list> <NULL>, <NULL>, <NULL>, <NULL>, <NULL>, <NU…
#> $ produced_mana     <list> <NULL>, <NULL>, <NULL>, <NULL>, <NULL>, <NU…
#> $ watermark         <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, …
#> $ flavor_name       <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, …
#> $ printed_name      <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, …
#> $ promo_types       <list> <NULL>, <NULL>, <NULL>, <NULL>, <NULL>, <NU…
```

## Code of Conduct

Please note that the scryr project is released with a [Contributor Code
of Conduct](https://curso-r.github.io/scryr/CODE_OF_CONDUCT.html). By
contributing to this project, you agree to abide by its terms.

## Copyright Notice

Portions of scryr are unofficial Fan Content permitted under the
[Wizards of the Coast Fan Content
Policy](https://company.wizards.com/en/legal/fancontentpolicy). The
literal and graphical information presented on this package and its
documentation pages about *Magic: The Gathering*, including card images,
the mana symbols, and Oracle text, is copyright of Wizards of the Coast,
LLC, a subsidiary of Hasbro, Inc. This software is not produced by,
endorsed by, supported by, or affiliated with Wizards of the Coast, LLC.

Most of scryr’s documentation is taken from Scryfall’s developer docs
and are only included in the package for self-containedness’ sake.
Scryfall’s website, API, and other related content are copyright of
Scryfall, LLC. This software is not produced by, endorsed by, supported
by, or affiliated with Scryfall, LLC.

As per [Scryfall’s terms of service](https://scryfall.com/docs/terms),
card data and images are provided free of charge for the primary purpose
of creating additional *Magic* software, performing research, or
creating community content about *Magic* and related products. When
using scryr, you must, therefore, adhere to both Scryfall’s and Wizards
of the Coast’s guidelines:

-   You may not require anyone to make payments, take surveys, agree to
    subscriptions, rate your content, or create accounts in exchange for
    access to *Magic* data.

-   You may not use *Magic* data to create new games, or to imply the
    information and images are from any other game besides *Magic: The
    Gathering*.

-   You may not claim any products or content made with *Magic* data as
    official. You must make it clear that your creation is not endorsed
    or sponsored by Wizards and/or Scryfall, i.e., unofficial.
