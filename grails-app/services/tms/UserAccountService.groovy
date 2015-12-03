package tms

import grails.transaction.Transactional

@Transactional
class UserAccountService {
    def registerInstructorAccount(String username, String password, String firstName, String lastName, String emailAddress){

        try{
        InstructorAccount instructorAccount = new InstructorAccount(username:username, password:password, firstName:firstName, lastName:lastName, emailAddress:emailAddress)

        instructorAccount.save(failureOnError:true)
    }

    catch (Exception e){
        println("v " + e);
    }

}

    def registerStudentAccount(String username, String password, String firstName, String lastName, String emailAddress){
        try{
        StudentAccount studentAccount = new StudentAccount(username:username, password:password, firstName:firstName, lastName:lastName, emailAddress:emailAddress)

            studentAccount.save(failureOnError:true)
        }
        catch (Exception e){
            println("v " + e);
        }

    }



}
