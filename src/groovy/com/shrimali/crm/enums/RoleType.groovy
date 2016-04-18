package com.shrimali.crm.enums

enum RoleType {

    ROLE_ADMIN('Admin'),
    ROLE_AGENT('Agent'),
    ROLE_TECHNICIAN('Technician')

    private final String roleType

    RoleType(String roleType) {
        this.roleType = roleType
    }
}