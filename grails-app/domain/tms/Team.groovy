package tms

class Team {

    String teamName
    int teamSize
    boolean isComplete
    static hasMany = [studentAccount: StudentAccount, teamStudentAssociation: TeamStudentAssociation]
    static belongsTo = [teamPool: TeamPool]
    static constraints = {

    }
}
