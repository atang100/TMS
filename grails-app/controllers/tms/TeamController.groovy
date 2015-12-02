package tms

class TeamController {
    def TeamService

    def index() {}


    //NEVER put stuff in parameters unless if private
    def addMemberToTeam(){
        String  userId = params.userId
        String teamId = params.teamId


    }

    def removeMemberFromTeam(){
        String userId = params.userId
        String teamId = params.teamId

    }

    def createTeam(){
        String teamName = params.teamName
        String teamId = params.teamId
        boolean isComplete = params.team
        String teamPoolId = params.teamName
    }

    def quitTeam(){

        String teamId = params.teamId
        StudentAccount studentAccount = params.studentAccount
    }
}
