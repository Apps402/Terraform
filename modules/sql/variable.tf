variable "sql" {
    type = map(object({
        sql_server_name = string
        rg_name = string
        location = string
        username = string
        password = string
        sqldb_name = string

    }))
  
}
