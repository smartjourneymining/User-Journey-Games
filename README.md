# Weighted Games for User Journeys
This is the repository of the paper "Weighted Games for User Journeys" by Kobialka, Tarifa, Bergersen and Johnsen [[1]](#1).
A novel game approach for customer journeys is presented and accompanied by a case study.

- The case study is implemented in "case_study.ipynb".It produces all images shown in the paper and contains an implementation of the presented unrolling algorithm.
- The file "pipeline.ipynb" demonstrates the presented pipeline with an example.
- The data of the industry case study is contained in "data.csv".
- The file "requirements.txt" contains the used libraries in the notebooks.
- "unrollring_inpout.png" is unrolled to "unrolled.ps". "unrolled.ps" contains the original activity names as found in the data.
- "gopos.csv" and "goposfast.csv" contain the simulation data produced by UPPAAL.
- "activities.xml" serces as input file do denote which actions are user/company owned in the case study.

# Context
GrepS is a company that provides analysis and measurement of
programming skills for the Java programming language.  The service is
research based [[2]](#2).
Customers are organizations hiring or training software
developers.  The users of the service are developers who
receive a request from a customer organization to complete a skill
analysis within a specific time frame, typically 1-2 weeks.

The service consists of a sign-up phase followed by a phase where the
user several programming tasks in an authentic programming
environment, which includes an instructional task and a practice task.
Finally, the service analyses the skills of the user and then requests
the user to share the skill report with the customer.

The customer pays GrepS for each skill report it receives.  In a
**successful** use of the service, a user successfully completes
three phases:
1. signing up, 
2. solving all programming tasks
3. reviewing and share the skill report with the customer.

In an **unsuccessful** use of the service, the user permanently
stops using the service or does not want to share the skill report
with GrepS' customer.

# Data Descprition
The data contained in data.csv is published under:
Each line of the dataset contains one event.
Per event are stored:
- Developer ID: Identifier for developers.
- Category: Whether the action was performed in a test hired by a company (B2B) or by a "freelance" developer (B2C)
- Company ID: ID of the company the developer is working for. For B2C developer is a dummy value entered.
- Timestamp: Time when the event occured.
- Type: Classifies types of events:
    - state: Event relates to internal changes in the system of GrepS
    - subject: Event realted to front-end activities
    - task: Event relates to the presented task
    - feedback: Event relates to the questionaire users fill out after tasks
- Message: Event name

# Example
The file "case_study.ipynb" contains the preprocessing and analysis performed in the paper "Weighted Games for User Journeys".
The verification was done with Stratego 9 for Linux64 with UPPAAL-4.1.20 used.
The used software is stated in "requirements.txt".

# References
<a id="1">[1]</a> 
Kobialka, P., Tarifa, S. L. T., Bergersen, G. R., Johnsen, E. B.: Weighted Games for User Journeys. In: Proc. SEFM 2021, LNCS 13550, Springer (2021).
<a id="2">[2]</a> 
Bergersen, G.R., Sjoberg, D.I., Dyba, T.: Construction and Validation of an Instrument for Measuring Programming Skill. IEEE Transactions on Software Engineering 40(12),  1163--1184 (Dec 2014)
