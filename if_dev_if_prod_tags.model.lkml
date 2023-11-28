connection: "looker-dcl-data"

view: stations_test {

  sql_table_name:
          -- if dev -- looker-dcl-data.breathe_india.stations
          -- if prod -- (SELECT * FROM looker-dcl-data.breathe_india.stations WHERE city = 'Delhi')
          ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  measure: count {
    type: count
  }
}

explore: stations_test {}


# view: stations {
#   sql_table_name: `breathe_india.stations` ;;
#   drill_fields: [station_id]

#   dimension: station_id {
#     primary_key: yes
#     type: string
#     sql: ${TABLE}.StationId ;;
#   }
#   dimension: city {
#     type: string
#     sql: ${TABLE}.City ;;
#   }
#   dimension: state {
#     type: string
#     sql: ${TABLE}.State ;;
#   }
#   dimension: station_name {
#     type: string
#     sql: ${TABLE}.StationName ;;
#   }
#   dimension: status {
#     type: string
#     sql: ${TABLE}.Status ;;
#   }
#   measure: count {
#     type: count
#     drill_fields: [station_id, station_name, station_day.count]
#   }
# }
