package tms

import grails.transaction.Transactional

@Transactional
class TeamService {

    //instructor adds member to teach
    def acceptNewStudent(String userId, String teamId) {
        //get used Id as paramter and returns object
        StudentAccount studentAccount = UserAccount.get(userId);

        Team team = Team.get(teamId);
        team.addToStudentAccount(studentAccount);
        team.save();

    }


    def createTeam(String teamName, boolean isComplete, Long teamPoolId) {
        Team team = new Team(teamName:teamName, isComplete:isComplete)
        TeamPool teamPool = TeamPool.findById(teamPoolId)
        teamPool.addToTeam(team)
        teamPool.save()
    }

    def quitTeam(String teamId, StudentAccount studentAccount) {
        Team team = Team.get(teamId)
        team.removeFromStudentAccount(studentAccount);
    }

    //student joins by himself
    def joinTeam(String userId, String teamId) {
        StudentAccount studentAccount = UserAccount.get(userId);

        Team team = Team.get(teamId as Long)
        TeamPool teamPool = team.getTeamPool()

        if(team.teamSize < teamPool.maxStudent){
            team.addToStudentAccount(studentAccount)
            team.teamSize++
            team.save()
        }
    }
}
