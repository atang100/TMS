package tms

import grails.transaction.Transactional

@Transactional
class TeamService {

    //instructor adds member to teach
    def acceptNewStudent(String userId, String teamId) {
        //get used Id as paramter and returns object
        StudentAccount studentAccount = StudentAccount.get(userId as Long)
        Team team = Team.get(teamId as Long)
        TeamStudentAssociation teamStudentAssociation = TeamStudentAssociation.findByStudentAccountAndTeam(studentAccount,team)

        teamStudentAssociation.isAccepted = true
        teamStudentAssociation.save()

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
            boolean doesTeamStudentAssocationAlreadyExist = false
            Set<TeamStudentAssociation> teamStudentAssociationList = studentAccount.getTeamStudentAssociation()
            teamStudentAssociationList.each { it ->
                if (it.team.id == team.id) {
                    doesTeamStudentAssocationAlreadyExist = true
                }
            }
            if (doesTeamStudentAssocationAlreadyExist == false) {
                TeamStudentAssociation teamStudentAssociation = new TeamStudentAssociation(isAccepted: false)
                studentAccount.addToTeamStudentAssociation(teamStudentAssociation)
                studentAccount.save()

                team.addToTeamStudentAssociation(teamStudentAssociation)
                team.teamSize++
                team.save()
            }
        }
    }

    def editTeamPoolParameter(String courseCode, int min, int max, String teamPoolId) {
        TeamPool teamPool = TeamPool.get(teamPoolId as Long)
        teamPool.maxStudent = max
        teamPool.minStudent = min
        teamPool.courseCode = courseCode
        teamPool.save()
    }
}
