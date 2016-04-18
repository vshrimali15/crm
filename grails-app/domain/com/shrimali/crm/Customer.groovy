package com.shrimali.crm

import com.shrimali.crm.enums.CreditCardType
import com.shrimali.crm.enums.Gender
import com.shrimali.crm.enums.InternetType
import com.shrimali.crm.enums.Salutation

class Customer {

    Salutation salutation
    String firstname
    String middlename
    String lastname
    Gender gender
    String email
    String addr1
    String addr2
    String country
    String state
    String city
    Long pincode
    Date lastUpdated
    Date dateCreated
    Date registrationDate
    InternetType internetType
    Date dateOfBirth
    boolean userStatus
    Long mobileNo
    Long landLineNo
    Long officeNo

    CreditCardType cardType
    Long creditCardNo
    String expireDate
    Long cvv


    static belongsTo = [createdBy: User]
    static hasMany = [issues: Issue]

    static constraints = {
        salutation blank: false, nullable: false
        firstname blank: false, nullable: false
        middlename blank: true, nullable: true
        lastname blank: false, nullable: false
        gender blank: false, nullable: false
        email blank: false, unique: true, email: true, nullable: false
        registrationDate blank: false, nullable: false
        addr1 blank: false, nullable: false
        addr2 blank: true, nullable: true
        city blank: false, nullable: false
        state blank: true, nullable: true
        pincode blank: true, nullable: true
        internetType blank: false, nullable: false
        userStatus blank: false, nullable: false

        mobileNo blank: false, nullable: false
        landLineNo blank: true, nullable: true
        officeNo blank: true, nullable: true

        cardType blank: false, nullable: false
        creditCardNo blank: false, nullable: false
        expireDate blank: false, nullable: false
        cvv blank: false, nullable: false
    }

    @Override
    String toString() {
        return id
    }
}
