package tms

class Team {

    String teamName
    boolean isComplete

    static constraints = {
        teamName size: 5..15, nullable: false, unique: true
        isComplete nullable: false
    }
}
