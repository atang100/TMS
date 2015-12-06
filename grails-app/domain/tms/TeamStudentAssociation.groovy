package tms

class TeamStudentAssociation {

    static belongsTo = [team: Team, studentAccount: StudentAccount]
    boolean isAccepted

    static constraints = {
        team (nullable: true)
        studentAccount(nullable: true)
    }
}
