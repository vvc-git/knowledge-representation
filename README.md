# Knowledge Representation in AI – Project Overview

This project, undertaken as part of the Artificial Intelligence course by José Daniel Alves Prado, Cristian Alexandre Alchini, and Victor do Valle Cunha, focuses on exploring **Knowledge Representation** techniques, particularly **Logic**, applied to the development of an **Expert System**. The chosen theme for this project was a **tourist guide system for Argentina**, where the system is designed to list the country's major tourist attractions.

## Methodology

1. **Research**: We researched the theme of a tourist guide for Argentina and compiled a detailed text that served as the basis for our knowledge representation.
2. **Concept Organization**: The key concepts, such as tourist attractions were organized into categories. This structured knowledge was placed into a table format, categorizing and linking different elements of the system.
3. **Logical Modeling**: The knowledge was modeled in **Prolog**, focusing on the tourist guide system. 

## Deliverables

- [Research text]() as the foundation for the knowledge representation.
- A [table](https://docs.google.com/spreadsheets/d/1_ujz7D8HHt9qPDaz7yIIfvWOtCRi83mb/edit?usp=sharing&ouid=103481108306343193966&rtpof=true&sd=true) that organizes the structured concepts of the tourist guide system.
- The logical model implemented in **Prolog**, along with the code, demonstrating the inference capabilities for the tourist guide of Argentina.

## How to run

1. Run the command `swipl -o argentina -c argentina.pl` to compile the Prolog file into an executable, allowing it to run without the Prolog interpreter.

2. Run `./argentina`

3. Make a query of your choice. For example: `(tipo_ambiente(X, rural); tipo_ambiente(X, montanha)), melhor_epoca(X, verao).` or use one of the available queries:

```prolog
checkTouristFreeAccessible(X).
```

```prolog
checkTouristRuralMountainSummer(X).
```

```prolog
checkAccessibleAutumnSpring(X).
```

```prolog
checkHalfDayUrban(X).
```

```prolog
checkNoAccessFullDay(X).
```

```prolog
checkAutumnNoAccessMountain(X).
```

```prolog
checkMultiSeasonTourist(X).
```

```prolog
checkPaidAccessibleSpring(X).
```





