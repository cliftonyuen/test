connection: "uccx_agents_details"

# include all the views
include: "*.view"

# include all the dashboards
#include: "*.dashboard"

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }


explore: user_info  {
  label: "Logon_Summary draft"
  join: bginfotable {
    sql_on: ${bginfotable.user_name} = ${user_info.s_amaccount_name};;
    relationship:  one_to_many}
  join: manager_info {
    sql_on: ${user_info.distinguished_name} = ${manager_info.manager} ;;
    relationship: many_to_one
  }
}


# - explore: agent_all_fields

# - explore: db_cra_rt_csqssummary
