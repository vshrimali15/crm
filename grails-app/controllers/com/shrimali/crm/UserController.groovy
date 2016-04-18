package com.shrimali.crm

import com.shrimali.crm.enums.RoleType

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model: [userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        RoleType roleType = Role.findById(UserRole.findByUser(userInstance).role.id).authority
        respond userInstance, model: [roleType: roleType]
    }

    def create() {
        respond new User(params), model: [roleTypes: [RoleType.ROLE_ADMIN, RoleType.ROLE_AGENT, RoleType.ROLE_TECHNICIAN]]
    }
    def search() {

    }

    def searchUser() {
        User user = User.findById(params.search)
        RoleType roleType = Role.findById(UserRole.findByUser(user).role.id).authority
        render view: 'show', model: [userInstance: user, roleType: roleType]
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'create', model: [roleTypes: [RoleType.ROLE_ADMIN, RoleType.ROLE_AGENT, RoleType.ROLE_TECHNICIAN]]
            return
        }
        userInstance.save flush: true
        UserRole.create(userInstance, Role.findByAuthorityIlike(params.roleType), true)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance, model: [roleTypes: [RoleType.ROLE_ADMIN, RoleType.ROLE_AGENT, RoleType.ROLE_TECHNICIAN]]
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'edit'
            return
        }

        userInstance.save flush: true
        UserRole.removeAll(userInstance, true)
        UserRole.create(userInstance, Role.findByAuthorityIlike(params.roleType), true)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        UserRole role = UserRole.findByUser(userInstance)
        role.delete flush: true
        userInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
