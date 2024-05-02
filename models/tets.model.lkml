connection: "evento_feb"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: tets_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tets_default_datagroup

explore: fsp {access_filter: {

    field: industria
    user_attribute: telcom
  }
  }
