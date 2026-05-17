sig Student {}

sig Exam {}

sig Submission {
    student : one Student,
    exam : one Exam
}
sig ActiveExam {
    activeStudent : one Student,
    activePaper : one Exam
}
fact SingleSubmission {

    all s : Student |
        lone sub : Submission |
            sub.student = s
}

assert NoDuplicateSubmission {

    all s : Student |
        lone sub : Submission |
            sub.student = s
}

pred duplicateSubmission {

    some disj s1, s2 : Submission |
        s1.student = s2.student
}
run duplicateSubmission
sig Student {}

sig Exam {}

sig Submission {
    student : one Student,
    exam : one Exam
}
sig ActiveExam {
    activeStudent : one Student,
    activePaper : one Exam
}
fact SingleSubmission {

    all s : Student |
        lone sub : Submission |
            sub.student = s
}

assert NoDuplicateSubmission {

    all s : Student |
        lone sub : Submission |
            sub.student = s
}

pred duplicateSubmission {

    some disj s1, s2 : Submission |
        s1.student = s2.student
}
run duplicateSubmission
