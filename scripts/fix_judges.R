judges <- read.csv("C:/Users/Patrick/SkyDrive/R_Programming/judges/data/judges_2.csv", stringsAsFactors=FALSE)

fix_judges <- function (judges_2){
  judges_2$court <- as.factor(judges_2$court)
  judges_2$gender <- as.factor(judges_2$gender)
  judges_2$integrity <- as.numeric(judges_2$integrity)
  judges_2$demeanor <- as.numeric(judges_2$demeanor)
  judges_2$dilligence <- as.numeric(judges_2$dilligence)
  judges_2$caseMgmt <- as.numeric(judges_2$caseMgmt)
  judges_2$promptDecisions <- as.numeric(judges_2$promptDecisions)
  judges_2$familiarityWithLaw <- as.numeric(judges_2$familiarityWithLaw)
  judges_2$oralRulings <- as.numeric(judges_2$oralRulings)
  judges_2$writtenRulings <- as.numeric(judges_2$writtenRulings)
  judges_2$physicalAbility <- as.numeric(judges_2$physicalAbility)
  judges_2$retentionScore <- as.numeric(judges_2$retentionScore)
  judges_2$respondents <- as.numeric(judges_2$respondents)
  judges_2$contacts <- as.numeric(judges_2$contacts)
  judges_2$preparedness <- as.numeric(judges_2$preparedness)
  return(judges_2)
}

attach(judges)

# Demos 
plot(gender, retentionScore)
plot(court, retentionScore)

plot(yearsOnBench, retentionScore, pch=19, col="blue")
abline(lm(retentionScore~yearsOnBench), col="red")
