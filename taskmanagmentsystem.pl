:- dynamic task/4.

create_task(I, D, U) :-
    assert(task(I, D, U, "false")).

assign_task(TaskID, NewUser) :-
    retract(task(TaskID, D, _, S)),
    assert(task(TaskID, D, NewUser, S)).

mark_completed(TaskID) :-
    retract(task(TaskID, D, U, _)),
    assert(task(TaskID, D, U, "true")).

display_task(TaskID, Description, User, Status) :-
    format("Task ~w:", [TaskID]), nl,
    format("Description: ~w", [Description]), nl,
    format("assigned to: ~w", [User]), nl,
    format("Complete status: ~w", [Status]), nl.

display_tasks :-
    task(TaskID, Description, User, Status),
    display_task(TaskID, Description, User, Status),
    fail.
display_tasks.

display_tasks_assign_to(User) :-
    task(TaskID, Description, User, Status),
    format("Task ~w:", [TaskID]), nl,
    format("Description: ~w", [Description]), nl,
    format("assigned to: ~w", [User]), nl,
    format("Complete status: ~w", [Status]), nl,
    fail.
   display_tasks_assign_to(_).

display_completed_tasks:-

    task(TaskID, Description, User, "true"),
    format("Task ~w:", [TaskID]), nl,
    format("Description: ~w", [Description]), nl,
    format("assigne to: ~w", [User]), nl,
    format("Complete status: ~w", [true]), nl,
    fail.
  display_completed_tasks.

