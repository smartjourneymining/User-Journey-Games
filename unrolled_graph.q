//This file was generated from (Academic) UPPAAL 4.1.20-stratego-9 (rev. 67D95DBCE6B8B4ED), January 2022

/*

*/
strategy goPos = control: A<> Journey.finPos

/*

*/
Journey.finPos --> gas > 0 under goPos

/*

*/
control: A[] gas > -41 under goPos

/*

*/
E[t<=100\
; 500] (max:steps) under goPos

/*

*/
E[t<=100; 500] (min: gas) under goPos

/*

*/
E[t<=100; 500] (max: finalGasMax) under goPos

/*

*/
strategy goPosFast = minE(steps) [t<=100] : <> Journey.finPos under goPos

/*

*/
E[t<=100; 500] (max:steps) under goPosFast

/*

*/
E[t<=100; 500] (min: gas) under goPosFast

/*

*/
E[t<=100; 500] (max: finalGasMax) under goPosFast

/*

*/
//NO_QUERY
