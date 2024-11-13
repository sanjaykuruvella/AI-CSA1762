has_symptom(john, fever).
has_symptom(john, cough).
has_symptom(mary, sore_throat).
has_symptom(mary, runny_nose).
has_symptom(susan, fever).
has_symptom(susan, chills).
has_symptom(susan, headache).

disease(flu) :- has_symptom(_, fever), has_symptom(_, cough), has_symptom(_, sore_throat).
disease(cold) :- has_symptom(_, runny_nose), has_symptom(_, sore_throat).
disease(pneumonia) :- has_symptom(_, fever), has_symptom(_, cough), has_symptom(_, difficulty_breathing).
disease(malaria) :- has_symptom(_, fever), has_symptom(_, chills), has_symptom(_, headache).
disease(gastroenteritis) :- has_symptom(_, diarrhea), has_symptom(_, vomiting).

check_disease(Disease) :-
    disease(Disease),
    write('Diagnosis for: '), write(Disease), nl,
    write('Symptoms: '), nl,
    display_symptoms(Disease),
    write('People with these symptoms: '), nl,
    display_people(Disease).

display_symptoms(Disease) :-
    disease(Disease),
    forall(has_symptom(_, Symptom), (write(Symptom), nl)).

display_people(Disease) :-
    disease(Disease),
    forall(has_symptom(Person, Symptom), (write(Person), write(' has '), write(Symptom), nl)).


% ?- check_disease(flu).
