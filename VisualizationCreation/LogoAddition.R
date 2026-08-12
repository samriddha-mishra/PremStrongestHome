
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

> library(tidyverse)
Error in library(tidyverse) : there is no package called ‘tidyverse’
> NonCOVIDMetrics = read.csv("/Users/samriddhamishra/Downloads/NonCOVIDMetrics.csv")
> COVIDMetrics = read.csv("/Users/samriddhamishra/Downloads/COVIDMetrics.csv")
> 
> NonCOVIDMetrics$TeamName
 [1] "Bradford City"            "Portsmouth"               "Stoke City"               "Birmingham"               "Norwich City"             "Newcastle United"         "Blackburn Rovers"        
 [8] "Liverpool"                "Manchester City"          "Queens Park Rangers"      "Everton"                  "Derby County"             "Arsenal"                  "Fulham"                  
[15] "Manchester United"        "Bolton Wanderers"         "Tottenham"                "Middlesbrough"            "Sunderland"               "Chelsea"                  "Swansea City"            
[22] "Sheffield United"         "Hull City"                "Charlton Athletic"        "Nottingham Forest"        "Aston Villa"              "West Ham United"          "Luton Town"              
[29] "Southampton"              "Huddersfield Town"        "Bournemouth"              "Reading"                  "West Bromwich and Albion" "Brentford"                "Watford"                 
[36] "Wigan Athletic"           "Leeds United"             "Wolverhampton Wanderers"  "Burnley"                  "Leicester City"           "Coventry City"            "Brighton and Hove Albion"
[43] "Crystal Palace"           "Blackpool"                "Cardiff City"             "Ipswich Town"            
> NonCOVIDMetrics <- NonCOVIDMetrics %>% mutate(team_logos = paste0("/Users/samriddhamishra/Downloads/", str_remove_all(TeamName, " "), ".png"))
Error in NonCOVIDMetrics %>% mutate(team_logos = paste0("/Users/samriddhamishra/Downloads/",  : 
  could not find function "%>%"
> install.packages("tidyverse")
--- Please select a CRAN mirror for use in this session ---
also installing the dependencies ‘rematch’, ‘data.table’, ‘gargle’, ‘uuid’, ‘cellranger’, ‘ids’, ‘rematch2’, ‘systemfonts’, ‘cpp11’, ‘conflicted’, ‘dbplyr’, ‘dtplyr’, ‘forcats’, ‘googledrive’, ‘googlesheets4’, ‘haven’, ‘ragg’, ‘readxl’, ‘reprex’

trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/rematch_2.0.0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/data.table_1.18.4.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/gargle_1.6.1.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/uuid_1.2-2.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/cellranger_1.1.0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/ids_1.0.1.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/rematch2_2.1.2.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/systemfonts_1.3.2.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/cpp11_0.5.5.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/conflicted_1.2.0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/dbplyr_2.6.0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/dtplyr_1.3.3.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/forcats_1.0.1.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/googledrive_2.1.2.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/googlesheets4_1.1.2.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/haven_2.5.5.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/ragg_1.5.2.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/readxl_1.5.0.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/reprex_2.1.1.tgz'
trying URL 'https://ftp.osuosl.org/pub/cran/bin/macosx/big-sur-arm64/contrib/4.5/tidyverse_2.0.0.tgz'

The downloaded binary packages are in
	/var/folders/2c/_4nlrgh57m322msd_bkchlr00000gn/T//Rtmp41xa05/downloaded_packages
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
> NonCOVIDMetrics <- NonCOVIDMetrics %>% mutate(team_logos = paste0("/Users/samriddhamishra/Downloads/", str_remove_all(TeamName, " "), ".png"))
> COVIDMetrics <- COVIDMetrics %>% mutate(team_logos = paste0("/Users/samriddhamishra/Downloads/", str_remove_all(TeamName, " "), ".png"))
> write_csv(NonCOVIDMetrics, "/Users/samriddhamishra/Downloads/NonCOVIDMetrics.csv")
                                                                                                                                                                                                                        
> write_csv(COVIDMetrics, "/Users/samriddhamishra/Downloads/COVIDMetrics.csv")
                                                                                                                                                                                                                        
> 