connection: "xword"
include: "*.view.lkml"
include: "*.dashboard.lkml"
explore: answer
explore: clue {
  join: puzzle {
    type: left_outer
    sql_on: ${clue.puzzle_id} = ${puzzle.id} ;;
    relationship: many_to_one
  }
  
  join: grid {
    type: left_outer
    sql_on: ${puzzle.grid_id} = ${grid.id} ;;
    relationship: many_to_one
  }
  
}

explore: grid
explore: pattern
explore: puzzle {
  join: grid {
    type: left_outer
    sql_on: ${puzzle.grid_id} = ${grid.id} ;;
    relationship: many_to_one
  }
  
}

explore: puzzletype
explore: rawpuzzles
explore: solvepuzzles
explore: user
explore: usertype
