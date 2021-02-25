School Project
===============

## Task

A client has asked for a program to help add students to their school and asign them to lessons.
A student can join a lesson but only if the lesson is not full and has a teacher.

### DONE
```
As a student
So I can attend school
I want to be able to join a schools
```
```
As head teacher
So I can enable learning
I want to be able to add classes to my school
```
```
As head teacher
So I can helps students learn
I want to be able to add students to lessons
```

### PARTIALLY DONE - need method to view @students array
```
As head teacher
So I can see students registered at my school
I want to see a list of students names
```
### IN PROGRESS

### TODO
```
As a teacher
So I can teach lessons
I want to be asigned to a lesson
```
```
As a teacher
So I can kick out naughty students
I want to be able to remove students from my classes
```
```
As a headteacher
So I can stop useless lessons 
I want to be able to remove classes
```
```
As a student
So I can improve my knowledge
I want to gain xp when attending classes
```

## Planning

* After creating the user stories we planned the basic structure of the code, breaking down each user story into classes and methods by extracting the nouns and verbs. For readablilty and to simplify the code we decided to start with 3 classes: School, Student, Clazs.

| Class   | Attributes                       | Methods                                                           |
|---------|---------------------------------|-------------------------------------------------------------------|
| School  | @students = []<br>@clazses = [] | register(student)<br>add_clazs(subject)<br>asign_to_clazs(student |
| Student | @name<br>@age<br>@xp = 0        |                                                                   |
| Clazs   | @lesson = {}                    | create<br>add<br>remove                                           |



* We the diagrammed and predicted how the classes and methods would work together.

![Imgur](https://imgur.com/wFzw8Qp.png)

## Tech

- ruby 2.7.0
- rspec
- rubocop
- simple-cov
