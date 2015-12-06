package tms

class StudentAccount extends UserAccount{

    static hasMany = [teamStudentAssociation: TeamStudentAssociation]

    static constraints = {
    }
}
