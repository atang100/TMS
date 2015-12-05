package tms

class Team {

    String teamName
    int teamSize
    boolean isComplete
    static hasMany = [studentAccount: StudentAccount]
    static belongsTo = [teamPool: TeamPool]
    static constraints = {

    }
}
