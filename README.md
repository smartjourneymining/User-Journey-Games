# Weighted Games for User Journeys
This is the repository of the paper "Weighted Games for User Journeys" by Kobialka, Tarifa, Bergersen and Johnsen.
The file "pipeline" demonstrates the proposed method to analyse customer journeys independent from the case study.
The case study is implemented in "case_study.ipynb".
It produces all images shown in the paper and contains an implementation of the unrolling algorithm, Algorithm 1.
"Unrolled.ps" contains the one time unrolled acyclic customer journey game.

# Data Descprition
The data contained in data.csv is published under:
Each line of the dataset contains one event.
Per event are stored:
- Category: Whether the action was performed in a test hired by a company (B2B) or by a "freelance" developer
- Developer ID: Identifier for developers
- Timestamp: When the event occured
- Type: Classified types of events and gives background information to the event.
- Message: Consists of the event name and additional meta information.


