//This file was generated from (Academic) UPPAAL 4.1.20-stratego-9 (rev. 67D95DBCE6B8B4ED), January 2022

/*

*/
strategy goPos = control: A<> reached_positive

/*

*/
strategy goPosFast = minE(steps) [t<=100] : <> reached_positive under goPos

/*

*/
simulate 10 [# <= 100] {Journey.startedTaskevent0, Journey.waitingForScoreswaitingForResultApproval, gas} under goPosFast
