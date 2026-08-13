
R version 4.5.2 (2025-10-31) -- "[Not] Part in a Rumble"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.82 (8556) aarch64-apple-darwin20]

[Workspace restored from /Users/samriddhamishra/.RData]
[History restored from /Users/samriddhamishra/.Rapp.history]

> COVIDMetrics <- read.csv("/Users/samriddhamishra/Downloads/COVIDMetrics.csv")
> head(COVIDMetrics)
          TeamName HomeFieldRating AwayFieldRating HomeFieldAdvantageRating                                           team_logos
1 Sheffield United          -0.212          -0.938                    0.726 /Users/samriddhamishra/Downloads/SheffieldUnited.png
2          Watford          -0.420          -1.026                    0.606         /Users/samriddhamishra/Downloads/Watford.png
3      Southampton           0.153          -0.390                    0.543     /Users/samriddhamishra/Downloads/Southampton.png
4          Chelsea           0.579           0.132                    0.447         /Users/samriddhamishra/Downloads/Chelsea.png
5        Tottenham           0.623           0.234                    0.389       /Users/samriddhamishra/Downloads/Tottenham.png
6  Manchester City           1.248           0.862                    0.386  /Users/samriddhamishra/Downloads/ManchesterCity.png
> NonCOVIDMetrics <- read.csv("/Users/samriddhamishra/Downloads/NonCOVIDMetrics.csv")
> head(NonCOVIDMetrics)
          TeamName HomeFieldRating AwayFieldRating HomeFieldAdvantageRating                                           team_logos
1    Bradford City          -0.243          -0.994                    0.751    /Users/samriddhamishra/Downloads/BradfordCity.png
2       Portsmouth           0.154          -0.540                    0.694      /Users/samriddhamishra/Downloads/Portsmouth.png
3       Stoke City           0.163          -0.529                    0.692       /Users/samriddhamishra/Downloads/StokeCity.png
4       Birmingham           0.148          -0.517                    0.665      /Users/samriddhamishra/Downloads/Birmingham.png
5     Norwich City          -0.206          -0.813                    0.608     /Users/samriddhamishra/Downloads/NorwichCity.png
6 Newcastle United           0.263          -0.321                    0.583 /Users/samriddhamishra/Downloads/NewcastleUnited.png
> library(tidyverse)
── Attaching core tidyverse packages ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.2.0     ✔ readr     2.2.0
✔ forcats   1.0.1     ✔ stringr   1.6.0
✔ ggplot2   4.0.1     ✔ tibble    3.3.1
✔ lubridate 1.9.5     ✔ tidyr     1.3.2
✔ purrr     1.2.1     
── Conflicts ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
> install.packages("gt")
--- Please select a CRAN mirror for use in this session ---
also installing the dependencies ‘V8’, ‘litedown’, ‘reactR’, ‘bigD’, ‘bitops’, ‘juicyjuice’, ‘markdown’, ‘reactable’

trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/V8_8.2.0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/litedown_0.10.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/reactR_0.6.1.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/bigD_0.3.1.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/bitops_1.1-0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/juicyjuice_0.1.0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/markdown_2.0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/reactable_0.4.5.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/gt_1.3.0.tgz'

The downloaded binary packages are in
	/var/folders/2c/_4nlrgh57m322msd_bkchlr00000gn/T//RtmpSsz8ai/downloaded_packages
> install.packages("gtExtras")
also installing the dependencies ‘prismatic’, ‘paletteer’

trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/prismatic_1.1.2.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/paletteer_1.7.0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/gtExtras_0.6.2.tgz'

The downloaded binary packages are in
	/var/folders/2c/_4nlrgh57m322msd_bkchlr00000gn/T//RtmpSsz8ai/downloaded_packages
> library(gt)
> library(gtExtras)
> install.packages("knitr")
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/knitr_1.51.tgz'
Content type 'application/x-gzip' length 1063013 bytes (1.0 MB)
==================================================
downloaded 1.0 MB


The downloaded binary packages are in
	/var/folders/2c/_4nlrgh57m322msd_bkchlr00000gn/T//RtmpSsz8ai/downloaded_packages
> library(knitr)

> NonCOVIDMetrics %>% 
   mutate(
     FullTeam = paste0(
       '<img src="', sapply(team_logos, image_uri), '" height="28" style="vertical-align:middle; margin-right:8px;"> ',
       '<strong>', TeamName, '</strong>'
     )
   ) %>% 
   select(
     FullTeam, 
     HomeFieldRating, 
     AwayFieldRating, 
     HomeFieldAdvantageRating
   ) %>% 
   gt() %>% 
   fmt_markdown(columns = FullTeam) %>% 
   fmt_number(
     columns = c(HomeFieldRating, AwayFieldRating, HomeFieldAdvantageRating),
     decimals = 3
   ) %>% 
   cols_label(
     FullTeam = "Team",
     HomeFieldRating = "Home Rating",
     AwayFieldRating = "Away Rating",
     HomeFieldAdvantageRating = "Advantage Rating"
   ) %>% 
  cols_align(
     align = "center",
     columns = c(HomeFieldRating, AwayFieldRating, HomeFieldAdvantageRating)
   ) %>% 
   gt_theme_espn()
> COVIDMetrics %>% 
    mutate(
      FullTeam = paste0(
       '<img src="', sapply(team_logos, image_uri), '" height="28" style="vertical-align:middle; margin-right:8px;"> ',
       '<strong>', TeamName, '</strong>'
      )
    ) %>% 
    select(
     FullTeam, 
     HomeFieldRating, 
     AwayFieldRating, 
      HomeFieldAdvantageRating
    ) %>% 
    gt() %>% 
    fmt_markdown(columns = FullTeam) %>% 
    fmt_number(
     columns = c(HomeFieldRating, AwayFieldRating, HomeFieldAdvantageRating),
      decimals = 3
    ) %>% 
    cols_label(
      FullTeam = "Team",
      HomeFieldRating = "Home Rating",
     AwayFieldRating = "Away Rating",
     HomeFieldAdvantageRating = "Advantage Rating"
    ) %>% 
   cols_align(
      align = "center",
      columns = c(HomeFieldRating, AwayFieldRating, HomeFieldAdvantageRating)
    ) %>% 
    gt_theme_espn()
 
