view: emppro_relationship {
  sql_table_name: Collibra.Emppro_relationship ;;

  dimension: employee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.EmployeeID ;;
  }
  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectID ;;
  }
  dimension: role {
    type: string
    sql: ${TABLE}.Role ;;
  }
  measure: count {
    type: count
    drill_fields: [employees.employee_id, employees.first_name, employees.last_name]
  }
}
