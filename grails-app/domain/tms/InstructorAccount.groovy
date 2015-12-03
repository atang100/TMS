package tms

class InstructorAccount extends UserAccount{

    static hasMany = [teamPool: TeamPool]

    static constraints = {
    }
}
