package tms

import grails.transaction.Transactional

@Transactional
class UserAccountService {
    def registerInstructorAccount(String username, String password, String firstName, String lastName, String emailAddress){
        InstructorAccount instructorAccount = new InstructorAccount(username, password, firstName, lastName, emailAddress)
    }
    def registerStudentAccount(String username, String password, String firstName, String lastName, String emailAddress){
        StudentAccount studentAccount = new StudentAccount(username, password, firstName, lastName, emailAddress)
    }



}
