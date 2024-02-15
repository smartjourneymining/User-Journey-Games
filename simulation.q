strategy goPos = control: A<> reached_positive

/*

*/
strategy goPosFast = minE(steps) [t<=100] : <> reached_positive under goPos

/*

*/
simulate [#<=100; 10] {gas} under goPosFast
