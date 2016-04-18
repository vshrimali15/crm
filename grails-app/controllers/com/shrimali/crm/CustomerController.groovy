package com.shrimali.crm

import java.sql.Timestamp

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_AGENT', 'ROLE_TECHNICIAN'])
class CustomerController {

    def springSecurityService
    static allowedMethods = [save: "POST", update: ["PUT", "POST"], delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Customer.list(params), model: [customerInstanceCount: Customer.count()]
    }

    def show(Customer customerInstance) {
        respond customerInstance
    }

    def create() {
        respond new Customer(params)
    }

    def search() {

    }

    def searchCustomer() {
        Customer customer = Customer.findById(params.search)
        render view: 'show', model: [customerInstance: customer]
    }

    @Transactional
    def save(Customer customerInstance) {
        if (customerInstance == null) {
            notFound()
            return
        }
        customerInstance.createdBy = springSecurityService.currentUser
        customerInstance.registrationDate = new Timestamp(System.currentTimeMillis())
        println "-------------------->>" + customerInstance.registrationDate
        if (!customerInstance.validate()) {
            respond customerInstance.errors, view: 'create'
            return
        }

        customerInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customer.label', default: 'Customer'), customerInstance.id])
                redirect customerInstance
            }
            '*' { respond customerInstance, [status: CREATED] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    def edit(Customer customerInstance) {
        println "-------edit----->>>"
        respond customerInstance
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def update(Customer customerInstance) {
        if (customerInstance == null) {
            notFound()
            return
        }
        customerInstance.createdBy = springSecurityService.currentUser
        customerInstance.registrationDate = new Timestamp(System.currentTimeMillis())
        if (!customerInstance.validate()) {
            respond customerInstance.errors, view: 'edit'
            return
        }

        customerInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect customerInstance
            }
            '*' { respond customerInstance, [status: OK] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def delete(Customer customerInstance) {

        if (customerInstance == null) {
            notFound()
            return
        }
        customerInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customer.label', default: 'Customer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
