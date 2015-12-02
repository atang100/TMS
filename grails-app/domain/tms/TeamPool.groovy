package tms

class TeamPool {

    String courseCode

    int maxStudent
    int minStudent

    Date deadlineForTeamCreation

    static hasMany = [team: Team]

    static constraints = {
        courseCode nullable: false
    }
}
