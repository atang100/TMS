package tms

import grails.transaction.Transactional

@Transactional
class TeamService {

    //instructor adds
    def addMemberToTeam(String userId, String teamId) {
        //get used Id as paramter and returns object
        StudentAccount studentAccount = UserAccount.get(userId);

        Team team = Team.get(teamId);
        team.addToStudentAccount(studentAccount);
        team.save();

    }

    def removeMemberFromTeam(String userId, String teamId) {
        //get used Id as paramter and returns object
        StudentAccount studentAccount = UserAccount.get(userId);

        Team team = Team.get(teamId);
        team.removeFromStudentAccount(studentAccount);
        team.save();
    }

    def createTeam(String teamName, String teamId, boolean isComplete, String teamPoolId) {
        Team team = new Team(teamName:teamName, id:teamId, isComplete:isComplete);
        TeamPool teamPool = TeamPool.get(teamPoolId)
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

        Team team = Team.get(teamId);
        team.addToStudentAccount(studentAccount);
        team.save();
    }
}
