package com.shrimali.crm

class IssueAssign {
    Issue issue
    User assignTo

    static IssueAssign create(Issue issue, User user, boolean flush = false) {
        def instance = new IssueAssign(issue, user)
        instance.save(flush: flush, insert: true)
        instance
    }
}
