import tms.Team
import tms.TeamPool

class BootStrap {

    def init = { servletContext ->
        TeamPool teamPool = new TeamPool(courseCode:"q", maxStudent:1, minStudent:4, deadlineForTeamCreation:2015-01-10)

        Team team = new Team(teamName:"team", isComplete:true)
        teamPool.addToTeam(team)
        teamPool.save()


    }
    def destroy = {
    }
}
