% Facts
course(mathematics).
course(computer_science).
course(economics).
course(literature).
course(physics).

student(alice).
student(bob).
student(charlie).
student(emily).
student(david).

professor(dr_davis, mathematics).
professor(dr_smith, computer_science).
professor(dr_jones, economics).
professor(dr_mrunal, literature).
professor(dr_kavita, physics).

enrolled(alice, mathematics).
enrolled(alice, computer_science).
enrolled(alice, literature).

enrolled(bob, mathematics).
enrolled(bob, physics).

enrolled(charlie, literature).
enrolled(charlie, physics).

enrolled(emily, mathematics).
enrolled(emily, computer_science).

enrolled(david, computer_science).
enrolled(david, literature).

% Rule for study partners
study_partner(Y1, Y2) :-
    enrolled(Y1, Course),
    enrolled(Y2, Course),
    Y1 \= Y2.

% Queries
% a) Find all courses with no enrolled students.
query_a(Course) :-
    course(Course),
    not(enrolled(_, Course)).

% b) List all students who are enrolled in computer science course taught by Professor dr_smith.
query_b(Student) :-
    enrolled(Student, computer_science),
    professor(dr_smith, computer_science).

% c) Find students who are enrolled in both Mathematics and Physics.
query_c(Student) :-
    study_partner(Student, _),
    enrolled(Student, mathematics),
    enrolled(Student, physics).

