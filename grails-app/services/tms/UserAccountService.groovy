package tms

import grails.transaction.Transactional

@Transactional
class UserAccountService {
    def registerInstructor(String username, String password, String firstName, String lastName, String emailAddress){
        InstructorAccount instructorAccount = new InstructorAccount(username, password, firstName, lastName, emailAddress)
    }
    def registerStudent(String username, String password, String firstName, String lastName, String emailAddress){
        StudentAccount studentAccount = new StudentAccount(username, password, firstName, lastName, emailAddress)
    }

    def checkIfStudentOrInstructor(String username){
        UserAccount userAccount = UserAccount.findByUsername(username)
        if(userAccount.asType(StudentAccount)){
            return "Student"
        }else{
            return "Instructor"
        }
    }


}
