import com.shrimali.crm.Customer
import com.shrimali.crm.Role
import com.shrimali.crm.User
import com.shrimali.crm.UserRole
import com.shrimali.crm.constants.AppConstant
import com.shrimali.crm.enums.CreditCardType
import com.shrimali.crm.enums.Gender
import com.shrimali.crm.enums.InternetType
import com.shrimali.crm.enums.Salutation

import java.sql.Time
import java.sql.Timestamp

class BootStrap {

    def init = { servletContext ->
        if (!Role.count()) {
            createRoles()
        }

        if (!User.count()) {
            createUsers()
        }
       /* if (!Customer.count()) {
            createCustomer()
        }*/
    }

    public void createRoles() {
        new Role(authority: AppConstant.ROLE_AGENT).save(flush: true, failOnError: true)
        new Role(authority: AppConstant.ROLE_TECHNICIAN).save(flush: true, failOnError: true)
        new Role(authority: AppConstant.ROLE_ADMIN).save(flush: true, failOnError: true)
        log.info('RoleType is created')
    }

    void createUsers() {
        User admin = new User(firstname: 'admin', lastname: 'test', email: 'admin@gmail.com', username: 'admin@gmail.com', password: 'admin12345')
        User technician = new User(firstname: 'technician', lastname: 'test', email: 'admintech@gmail.com', username: 'admintech@gmail.com', password: 'admin12345')
        User agent = new User(firstname: 'agent', lastname: 'test', email: 'adminagent@gmail.com', username: 'adminagent@gmail.com', password: 'admin12345')
        admin.save(flush: true, failOnError: true)
        technician.save(flush: true, failOnError: true)
        agent.save(flush: true, failOnError: true)

        UserRole.create(admin, Role.findByAuthorityIlike(AppConstant.ROLE_ADMIN), true)
        UserRole.create(technician, Role.findByAuthorityIlike(AppConstant.ROLE_TECHNICIAN), true)
        UserRole.create(agent, Role.findByAuthorityIlike(AppConstant.ROLE_AGENT), true)
        log.info('user created with role')
    }

    void createCustomer() {
        Customer customer = new Customer(salutation: Salutation.Mr, firstname: 'vinay', lastname: 'shrimali', gender: Gender.Male, addr1: '7D', city: 'Udaipur', country: 'India', state: 'Rajasthan', email: 'vshrimali15@gmail.com', internetType: InternetType.Wifi, mobileNo: 8800795619, dateOfBirth: new Timestamp(System.currentTimeMillis()),registrationDate: new Timestamp(System.currentTimeMillis()), createdBy: User.findById(1), cardType: CreditCardType.Maestro, creditCardNo: 887956487, expireDate: '10/12', cvv: 123)
        customer.save(flush: true,failOnError: true)
        log.info('Customer Created')
    }
    def destroy = {
    }
}
