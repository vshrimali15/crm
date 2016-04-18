package com.shrimali.crm

import com.shrimali.crm.enums.IssueStatus

class Issue {

    String description
    IssueStatus status
    Date dateCreated
    Date lastUpdated
//    User assignTo

    static belongsTo = [customer: Customer, createdBy: User]
}
