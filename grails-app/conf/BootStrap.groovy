import tms.Team
import tms.TeamPool
import tms.UserAccount
import tms.InstructorAccount
import tms.StudentAccount

class BootStrap {

    def init = { servletContext ->
        TeamPool teamPool = new TeamPool(courseCode:"CSI3131", maxStudent:5, minStudent:1, deadlineForTeamCreation:2015-01-10)

        Team team = new Team(teamName:"team", isComplete:true)
        teamPool.addToTeam(team)
        teamPool.save()

        InstructorAccount instructorA = new InstructorAccount(username: "instructor", password: "instructor", firstName: "Name", lastName: "Last", emailAddress: "i@hotmail.com")
        instructorA.save()

        InstructorAccount instructorB = new InstructorAccount(username: "admin", password: "admin", firstName: "Name", lastName: "Last", emailAddress: "i@hotmail.com")
        instructorB.save()

        StudentAccount studentA = new StudentAccount(username: "student", password: "student", firstName: "Name", lastName: "Last", emailAddress: "s@hotmail.com")
        studentA.save()
    }
    def destroy = {
    }
}
