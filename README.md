# What team has the strongest home field advantage in the Premier League

Homefield advantage is always a topic of discussion in sports, in particular soccer. It's known as something which can tip entire matchups, hence the value of the return leg in the Champions League being at home (whoever has this gains a huge advantage in regards to a potential comeback). So this begs the question: which Premier League team has the best home advantage. The reflexive answer would be to just google the team with the most home points, but that answer has one issue. This team could just be a juggernaut like Man United, Man City, Arsenal, or any other big club, and won a lot at home but also won a lot away from home. To figure out what team genuinely benefits the best by playing at home, I compared a series of statistics spanning a 25 season window, then standardized them to account for sample size and different means, and then multiplied them by certain weights which were determined using multiple linear regression.

### Full Window Findings

<img width="2940" height="4094" alt="NonCOVIDMetric" src="https://github.com/user-attachments/assets/8f8e5a45-ac8a-4271-9852-4489459f7494" />


In the entire 25 season window, the strongest home field advantage rating belonged to Bradford City at 0.751, who only had one season in this timeframe. This is a very small sample size, so I looked to the next teams.  Portsmouth had 7 seasons in this window and came in second with a rating of 0.694, and right behind them was Stoke City who had 10 seasons in this window and a rating of 0.692. Based on the significantly longer window along with the minimal rating difference between the two, Stoke City ended up being the team with the strongest home advantage in this 25 year window. The next question is obviously why this is the case, and there are several factors. First, the meme "can he do it on a cold rainy night in Stoke?" ends up ringing true, because the weather in Stoke is awful most times with a ton of rain and humidity, making it hard for teams not used to the conditions to acclimate to the ground, paving the way for Stoke players who play half their matches in Stoke to perform a lot better. This built in advantage is exacerbated by the stadium's build which keeps noise in and adds more pressure to the opposing team.

### COVID Findings

<img width="2940" height="2116" alt="COVIDMetric" src="https://github.com/user-attachments/assets/c5f9ba3e-f3a9-490c-8714-38a377eb99f6" />


In the COVID only window, the results obviously got a lot more variable. Since the window of dates is the exact same for all of the teams, whoever has the highest rating is the team with the strongest home advantage. That honor goes to Sheffield United, who stood fairly clear of the rest of the pack, placing at a strong 0.726. Bramall Lane is known for trapping noise and making it louder, which was significantly hampered during COVID. Sheffield's home advantage still held very strong through COVID for a multitude of other reasons. Fort example, the stadium's geometry is designed in a way that messes with the depth perception of players, which makes receiving and playing passes more difficult. The compact pitch design also makes opponents who aren't used to the design think about their deceleration zones because they aren't used to the ad boards being so close to the pitch. The stadium's placement within Sheffield also favors the home team, as the home team hotel is right by the stadium allowing for an easy matchday routine while the away team hotel is all the way in the suburbs requiring the team to navigate city traffic to get to the stadium.

# Summary

Strongest home team in 25 year window: Stoke City with 0.692 HFA rating over 10 years\
Strongest COVID home team: Sheffield United with 0.726 HFA rating
