view: bginfotable {
  derived_table: {
    sql: Select * from BGINFO.dbo.BGInfoTable
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: time_stamp {
    type: time
    sql: ${TABLE}.Time_Stamp ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.User_Name ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.Host_Name ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}.OS_Version ;;
  }

  dimension: service_pack {
    type: string
    sql: ${TABLE}.Service_Pack ;;
  }

  dimension: machine_domain {
    type: string
    sql: ${TABLE}.Machine_Domain ;;
  }

  dimension: logon_domain {
    type: string
    sql: ${TABLE}.Logon_Domain ;;
  }

  dimension: logon_server {
    type: string
    sql: ${TABLE}.Logon_Server ;;
  }

  dimension: system_type {
    type: string
    sql: ${TABLE}.System_Type ;;
  }

  dimension: network_card {
    type: string
    sql: ${TABLE}.Network_Card ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.IP_Address ;;
  }

  dimension: subnet_mask {
    type: string
    sql: ${TABLE}.Subnet_Mask ;;
  }

  dimension: default_gateway {
    type: string
    sql: ${TABLE}.Default_Gateway ;;
  }

  dimension: mac_address {
    type: string
    sql: ${TABLE}.MAC_Address ;;
  }

  dimension: network_speed {
    type: string
    sql: ${TABLE}.Network_Speed ;;
  }

  dimension: network_type {
    type: string
    sql: ${TABLE}.Network_Type ;;
  }

  dimension: dhcp_server {
    type: string
    sql: ${TABLE}.DHCP_Server ;;
  }

  dimension: dns_server {
    type: string
    sql: ${TABLE}.DNS_Server ;;
  }

  dimension: cpu {
    type: string
    sql: ${TABLE}.CPU ;;
  }

  dimension: memory {
    type: string
    sql: ${TABLE}.Memory ;;
  }

  dimension: boot_time {
    type: string
    sql: ${TABLE}.Boot_Time ;;
  }

  dimension: snapshot_time {
    type: string
    sql: ${TABLE}.Snapshot_Time ;;
  }

  dimension: ie_version {
    type: string
    sql: ${TABLE}.IE_Version ;;
  }

  dimension: volumes {
    type: string
    sql: ${TABLE}.Volumes ;;
  }

  dimension: free_space {
    type: string
    sql: ${TABLE}.Free_Space ;;
  }

  dimension: ipaddr {
    type: string
    sql: ${TABLE}.ipaddr ;;
  }

  dimension: ipv4 {
    type: string
    sql: ${TABLE}.IPv4 ;;
  }

  dimension: ipv6 {
    type: string
    sql: ${TABLE}.IPv6 ;;
  }

  dimension: ip_site_vlan {
    type: string
    sql: ${TABLE}.IP_Site_VLan ;;
  }

  set: detail {
    fields: [
      time_stamp_time,
      user_name,
      host_name,
      os_version,
      service_pack,
      machine_domain,
      logon_domain,
      logon_server,
      system_type,
      network_card,
      ip_address,
      subnet_mask,
      default_gateway,
      mac_address,
      network_speed,
      network_type,
      dhcp_server,
      dns_server,
      cpu,
      memory,
      boot_time,
      snapshot_time,
      ie_version,
      volumes,
      free_space,
      ipaddr,
      ipv4,
      ipv6,
      ip_site_vlan
    ]
  }
}
