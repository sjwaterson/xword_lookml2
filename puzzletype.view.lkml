view: puzzletype {
  sql_table_name: xword_puzzletype ;;
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  
  measure: count {
    type: count
    drill_fields: [id]
  }
  
}

