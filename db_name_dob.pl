
person('Alice', '1995-04-23').
person('Bob', '1992-11-15').
person('Charlie', '1988-08-30').

find_dob(Name, Dob) :-
    person(Name, Dob).
