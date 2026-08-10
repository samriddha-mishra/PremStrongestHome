
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

> homeZScores <- read.csv("/Users/samriddhamishra/Downloads/HomeZScores.csv")
> awayZScores <- read.csv("/Users/samriddhamishra/Downloads/AwayZScores.csv")
> str(homeZScores)
'data.frame':	9880 obs. of  8 variables:
 $ PointIndicator      : int  3 3 0 1 3 1 3 3 3 3 ...
 $ GoalsScored_ZScore  : num  0.52 0.52 -0.7 -0.29 -0.29 -1.11 -0.7 -0.7 0.11 -0.29 ...
 $ GoalsConceded_ZScore: num  -1.11 -0.29 0.11 -0.29 -1.11 -1.11 -1.11 -1.11 -0.7 -1.11 ...
 $ ShotsOnTarget_ZScore: num  0.57 -0.1 -1.27 -1.1 -0.43 -1.1 -0.1 -1.44 -0.77 -0.27 ...
 $ Fouls_ZScore        : num  -1.31 -0.52 -1.05 -1.57 -0.26 -1.44 -1.96 -1.7 -1.18 -2.1 ...
 $ Corners_ZScore      : num  -0.82 -0.65 -0.47 -0.99 -0.82 -0.99 -0.82 -1.5 -1.33 -0.65 ...
 $ Yellows_ZScore      : num  -0.91 -0.91 0.69 -0.91 -0.91 -0.51 -0.91 -0.11 -1.3 -1.3 ...
 $ Reds_ZScore         : num  -0.27 -0.27 1.58 -0.27 -0.27 -0.27 -0.27 -0.27 -0.27 -0.27 ...
> homePoints <- homeZScores$PointIndicator
> homeGoalsScored_ZScore <- homeZScores$GoalsScored_ZScore
> homeConcededScored_ZScore <- homeZScores$GoalsConceded_ZScore
> 
> homeShotsOnTarget_ZScore <- homeZScores$ShotsOnTarget_ZScore
> homeFouls_ZScore <- homeZScores$Fouls_ZScore 
> homeCorners_ZScore <- homeZScores$Corners_ZScore
> homeYellows_ZScore <- homeZScores$Yellows_ZScore
> homeReds_ZScore <- homeZScores$Reds_ZScore
> homeModel <- lm(homePoints ~ homeGoalsScored_ZScore + homeConcededScored_ZScore + homeShotsOnTarget_ZScore + homeFouls_ZScore + homeCorners_ZScore + homeYellows_ZScore + homeReds_ZScore)
> summary(homeModel)

Call:
lm(formula = homePoints ~ homeGoalsScored_ZScore + homeConcededScored_ZScore + 
    homeShotsOnTarget_ZScore + homeFouls_ZScore + homeCorners_ZScore + 
    homeYellows_ZScore + homeReds_ZScore)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.9509 -0.4326 -0.2238  0.4613  4.2917 

Coefficients:
                           Estimate Std. Error  t value Pr(>|t|)    
(Intercept)                1.356580   0.030135   45.017  < 2e-16 ***
homeGoalsScored_ZScore     1.505122   0.014881  101.144  < 2e-16 ***
homeConcededScored_ZScore -1.541450   0.015141 -101.807  < 2e-16 ***
homeShotsOnTarget_ZScore  -0.004759   0.015572   -0.306  0.75992    
homeFouls_ZScore           0.010479   0.015197    0.690  0.49051    
homeCorners_ZScore        -0.042543   0.014290   -2.977  0.00292 ** 
homeYellows_ZScore         0.007298   0.015458    0.472  0.63685    
homeReds_ZScore           -0.040732   0.015141   -2.690  0.00715 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.6943 on 9872 degrees of freedom
Multiple R-squared:  0.7231,	Adjusted R-squared:  0.7229 
F-statistic:  3684 on 7 and 9872 DF,  p-value: < 2.2e-16

> str(awayZScores)
'data.frame':	9880 obs. of  8 variables:
 $ PointIndicator      : int  0 0 3 1 0 1 0 0 0 0 ...
 $ GoalsScored_ZScore  : num  -1.11 -0.29 0.11 -0.29 -1.11 -1.11 -1.11 -1.11 -0.7 -1.11 ...
 $ GoalsConceded_ZScore: num  0.52 0.52 -0.7 -0.29 -0.29 -1.11 -0.7 -0.7 0.11 -0.29 ...
 $ ShotsOnTarget_ZScore: num  -1.1 -0.93 -0.27 -0.77 -0.77 -1.27 -1.44 -0.6 -0.93 -0.77 ...
 $ Fouls_ZScore        : num  -1.44 -1.18 -0.26 -1.31 -0.39 -1.44 -1.96 -0.26 -1.31 -1.31 ...
 $ Corners_ZScore      : num  -0.82 -0.65 -1.16 -0.47 -1.16 -1.16 -1.67 -0.3 -1.16 -1.67 ...
 $ Yellows_ZScore      : num  -0.51 -0.51 -0.11 -0.91 -0.11 -0.11 -0.91 -0.91 -1.3 -0.91 ...
 $ Reds_ZScore         : num  -0.27 -0.27 -0.27 -0.27 -0.27 -0.27 -0.27 1.58 -0.27 -0.27 ...
> awayPoints <- awayZScores$PointIndicator
> awayGoalsScored_ZScore <- awayZScores$GoalsScored_ZScore
> awayConcededScored_ZScore <- awayZScores$GoalsConceded_ZScore
> awayShotsOnTarget_ZScore <- awayZScores$ShotsOnTarget_ZScore
> awayFouls_ZScore <- awayZScores$Fouls_ZScore 
> awayCorners_ZScore <- awayZScores$Corners_ZScore
> awayYellows_ZScore <- awayZScores$Yellows_ZScore
> awayReds_ZScore <- awayZScores$Reds_ZScore
> awayModel <- lm(awayPoints ~ awayGoalsScored_ZScore + awayConcededScored_ZScore + awayShotsOnTarget_ZScore + awayFouls_ZScore + awayCorners_ZScore + awayYellows_ZScore + awayReds_ZScore)
> summary(awayModel)

Call:
lm(formula = awayPoints ~ awayGoalsScored_ZScore + awayConcededScored_ZScore + 
    awayShotsOnTarget_ZScore + awayFouls_ZScore + awayCorners_ZScore + 
    awayYellows_ZScore + awayReds_ZScore)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.1519 -0.4845 -0.1851  0.4523  3.6450 

Coefficients:
                          Estimate Std. Error  t value Pr(>|t|)    
(Intercept)                1.32949    0.03027   43.922  < 2e-16 ***
awayGoalsScored_ZScore     1.64551    0.01639  100.423  < 2e-16 ***
awayConcededScored_ZScore -1.31324    0.01291 -101.691  < 2e-16 ***
awayShotsOnTarget_ZScore  -0.02079    0.01793   -1.159    0.246    
awayFouls_ZScore          -0.06810    0.01421   -4.794 1.66e-06 ***
awayCorners_ZScore        -0.06527    0.01551   -4.208 2.60e-05 ***
awayYellows_ZScore        -0.01718    0.01408   -1.220    0.223    
awayReds_ZScore           -0.01751    0.01283   -1.364    0.173    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.6734 on 9872 degrees of freedom
Multiple R-squared:  0.7203,	Adjusted R-squared:  0.7201 
F-statistic:  3631 on 7 and 9872 DF,  p-value: < 2.2e-16

> 