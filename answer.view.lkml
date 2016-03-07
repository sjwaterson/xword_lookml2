view: answer {
  sql_table_name: xword_answer ;;
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  
  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }
  
  dimension: appearances {
    type: number
    sql: ${TABLE}.count ;;
  }
  
  measure: count {
    type: count
    drill_fields: [id]
  }
  
}

