Counterexample Description — Online Examination System
Counterexample Analysis

A counterexample was intentionally generated in the Alloy model by removing the SingleSubmission constraint. The purpose of this analysis was to verify whether the system could detect invalid states when constraints are missing.

In the generated counterexample, the same student was able to submit the same examination multiple times. This violated the core system requirement that each student should only be allowed to submit an exam once.

The Alloy Analyzer successfully produced an instance where:

One student had multiple submission records
Duplicate exam submissions existed
System consistency was violated

This demonstrated that the system becomes inconsistent when submission constraints are not enforced.

The counterexample confirmed the importance of the following constraint:

fact SingleSubmission {

    all s : Student |
        lone sub : Submission |
            sub.student = s
}

After reintroducing this constraint, Alloy verification showed:

No counterexample found. Assertion may be valid.

This proved that the formal specification correctly prevents duplicate submissions and maintains system integrity.

Conclusion

The counterexample analysis validated the effectiveness of the formal verification process. Alloy successfully identified inconsistent system behavior in the absence of constraints and confirmed the correctness of the model after applying the required rule.
