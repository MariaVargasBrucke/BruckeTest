view: fsp {
  sql_table_name: public.fsp ;;

  dimension: acepta_terminos {
    type: string
    sql: ${TABLE}."acepta_terminos" ;;
  }
  dimension: client {
    type: string
    sql: ${TABLE}."client" ;;
  }
  dimension: cliente_etb {
    type: string
    sql: ${TABLE}."cliente_etb" ;;
  }
  dimension: correo_electronico {
    type: string
    sql: ${TABLE}."correo_electronico" ;;
  }
  dimension: evento {
    type: string
    sql: ${TABLE}."evento" ;;
  }
  dimension: industria {
    type: string
    sql: ${TABLE}."industria" ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}."nombre" ;;
  }
  dimension: registrada_en {
    type: string
    sql: ${TABLE}."registrada_en" ;;
  }
  dimension: whatsapp {
    type: string
    sql: ${TABLE}."whatsapp" ;;
  }
  dimension: TestConcatenar {
    type: string
    sql: concat(${correo_electronico},' ' ,${whatsapp}) ;;
  }
  measure: count {
    type: count
  }
  measure: industriatelcom {
    type: count
    drill_fields: []
    filters: [industria : "telcom"]
  }
}
