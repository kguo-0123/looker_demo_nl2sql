connection: "nl2sql-kg-dev"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: query_logs {
  always_filter: {
    # filters: [query_logs.execution_time: "after 2024-02-09 10:48:46"]
  }
}
