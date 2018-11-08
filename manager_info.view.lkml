view: manager_info {
  derived_table: {
    sql: SELECT extensionAttribute9, streetaddress, pager, company, title, displayName, telephoneNumber, sAMAccountName,
        mail, mobile, facsimileTelephoneNumber, department, physicalDeliveryOfficeName, sn, givenname,info, convert(varchar(23),dateadd(mi,(cast(lastLogon as bigint) / 600000000)+1020, cast('1601-01-01' as datetime2)),101) as lastLogon_time, ipPhone, badPwdCount
        ,lockedOutTime = case when lockoutTime <> '0' then convert(varchar(50),dateadd(mi,(cast(lockoutTime as bigint) / 600000000)+1020, cast('1601-01-01' as datetime2)),120) else '' end
        ,distinguishedName, manager
      FROM OpenQuery
        (
        ADSI,
        'SELECT extensionAttribute9, streetaddress, pager, company, title, displayName, telephoneNumber, sAMAccountName,
        mail, mobile, facsimileTelephoneNumber, department, physicalDeliveryOfficeName, sn, givenname,info, lastLogon, userAccountControl, ipPhone, badPwdCount, lockoutTime, distinguishedName, manager
        FROM  ''LDAP://dc04.nems.org/OU=Accounts,DC=nems,DC=org''
        WHERE objectClass =  ''User'' and ''userAccountControl:1.2.840.113556.1.4.803:''<>2') AS tblADSI
      --where userAccountControl & 2 = 0
       ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: display_name {
    label: "manager_display_name"
    type: string
    sql: ${TABLE}.displayName ;;
  }


  dimension: s_amaccount_name {
    type: string
    sql: ${TABLE}.sAMAccountName ;;
  }

  dimension: mail {
    label: "manager_email"
    type: string
    sql: ${TABLE}.mail ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: physical_delivery_office_name {
    type: string
    sql: ${TABLE}.physicalDeliveryOfficeName ;;
  }

  dimension: sn {
    type: string
    sql: ${TABLE}.sn ;;
  }

  dimension: givenname {
    type: string
    sql: ${TABLE}.givenname ;;
  }


  dimension: ip_phone {
    label: "manager_ext"
    type: string
    sql: ${TABLE}.ipPhone ;;
  }

  dimension: distinguished_name {
    type: string
    sql: ${TABLE}.distinguishedName ;;
  }

  dimension: manager {
    type: string
    sql: ${TABLE}.manager ;;
  }



  set: detail {
    fields: [
#       extension_attribute9,
#       streetaddress,
#       pager,
    company,
    title,
    display_name,
#       telephone_number,
    s_amaccount_name,
    mail,
#       mobile,
#       facsimile_telephone_number,
    department,
    physical_delivery_office_name,
    sn,
    givenname,
#       info,
#       last_logon_time,
    ip_phone,
#       bad_pwd_count,
#       locked_out_time,
    distinguished_name,
    manager
  ]
}
}
