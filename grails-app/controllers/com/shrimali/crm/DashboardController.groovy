package com.shrimali.crm

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class DashboardController {

    def index() {

        println "--------------->>>>"
    }
}
