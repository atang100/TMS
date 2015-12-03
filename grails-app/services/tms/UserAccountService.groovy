package tms

import grails.transaction.Transactional

@Transactional
class UserAccountService {
    def registerInstructorAccount(String username, String password, String firstName, String lastName, String emailAddress){
        InstructorAccount instructorAccount = new InstructorAccount(username:username, password:password, firstName:firstName, lastName:lastName, emailAddress:emailAddress)
    }
    def registerStudentAccount(String username, String password, String firstName, String lastName, String emailAddress){
        StudentAccount studentAccount = new StudentAccount(username:username, password:password, firstName:firstName, lastName:lastName, emailAddress:emailAddress)
    }



}
