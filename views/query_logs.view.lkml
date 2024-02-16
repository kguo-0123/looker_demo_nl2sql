view: query_logs {
  sql_table_name: `nl2sql-kg-dev.nl2sql.query_logs_demo` ;;

  dimension: error_msg {
    type: string
    sql: ${TABLE}.error_msg ;;
  }
  dimension_group: execution {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.execution_time ;;
  }
  dimension: failure_step {
    type: string
    sql: ${TABLE}.failure_step ;;
  }
  dimension: found_in_vector {
    type: string
    sql: ${TABLE}.found_in_vector ;;
  }
  dimension: full_log {
    type: string
    sql: ${TABLE}.full_log ;;
    html:<div style="white-space:pre">{{value}}</div>;;
  }

  dimension: generated_sql {
    type: string
    sql: ${TABLE}.generated_sql ;;
  }
  dimension: good_sql_added {
    type: string
    sql: ${TABLE}.good_sql_added ;;
  }
  dimension: is_final_try {
    type: string
    sql: ${TABLE}.is_final_try ;;
  }
  dimension: log_type {
    type: string
    sql: ${TABLE}.log_type ;;
  }
  dimension: model_used {
    type: string
    sql: ${TABLE}.model_used ;;
  }
  dimension: need_rewrite {
    type: string
    sql: ${TABLE}.need_rewrite ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }
  dimension_group: question_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.question_time ;;
  }
  dimension: retry_count {
    type: string
    sql: ${TABLE}.retry_count ;;
  }
  dimension: schema {
    type: string
    sql: ${TABLE}.schema ;;
  }
  dimension: similar_question_returned {
    type: string
    sql: ${TABLE}.similar_question_returned ;;
  }
  dimension: source_type {
    type: string
    sql: ${TABLE}.source_type ;;
  }
  dimension: sql_executed_flag {
    type: string
    sql: ${TABLE}.sql_executed_flag ;;
  }
  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension: question_id {
    type: string
    sql: ${user} || "_" || ${question_time_raw} ;;

    link: {
      label: "Question Details Dashboard"
      url: "https://fb93a61f-c776-4eae-a0d4-24d9107271c4.looker.app/dashboards/fOz9syY2dWBWSL41H34Bbm?Question+ID={{ value | url_encode }}"

   }
  }
  measure: count_of_try {
    type: count
  }

  measure: count_of_question_submitted {
    type: count_distinct
    sql: ${question_id} ;;
    drill_fields: [log_type,count_of_question_submitted]
  }

  measure: count_of_question_answered {
    type: count_distinct
    sql: ${question_id} ;;
    filters: [log_type: "Exit - Type 2: Valid SQL generated and executed, Exit - Type 9: Good SQL existed and executed"]
  }

  measure: percentage_of_questions_answered{
    type: number
    sql: 1.00 * ${count_of_question_answered}/nullif(${count_of_question_submitted},0) ;;
    value_format_name: percent_1
  }

  measure: count_of_user {
    type: count_distinct
    sql: ${user} ;;
  }

  dimension_group: question_time_demo {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.question_time_demo ;;
  }
}
