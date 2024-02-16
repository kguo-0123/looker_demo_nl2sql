---
- dashboard: nl2sql_analytics
  title: NL2SQL Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: kiTyNgw2WBGxDlgbOonlOI
  elements:
  - title: By Final Attempt Type
    name: By Final Attempt Type
    model: main
    explore: query_logs
    type: looker_bar
    fields: [query_logs.log_type, query_logs.count_of_question_submitted]
    sorts: [query_logs.log_type]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    up_color: false
    down_color: false
    total_color: false
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Model Used: query_logs.model_used
      Question Time: query_logs.question_time_time
      User: query_logs.user
      Schema: query_logs.schema
      Source Type: query_logs.source_type
    row: 10
    col: 0
    width: 13
    height: 12
  - title: Question Details (Final Attempt)
    name: Question Details (Final Attempt)
    model: main
    explore: query_logs
    type: looker_grid
    fields: [query_logs.question_id, query_logs.question_time_time, query_logs.question,
      query_logs.log_type, query_logs.found_in_vector, query_logs.sql_executed_flag,
      query_logs.good_sql_added]
    filters:
      query_logs.is_final_try: Y
      query_logs.execution_time: after 2024/02/09 10:48
    sorts: [query_logs.question_time_time]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    minimum_column_width: 75
    series_column_widths:
      query_logs.log_type: 235
      query_logs.question: 248
      query_logs.question_time_time: 139
      query_logs.question_id: 163
    hidden_fields:
    hidden_pivots: {}
    listen:
      Model Used: query_logs.model_used
      Question Time: query_logs.question_time_time
      User: query_logs.user
      Schema: query_logs.schema
      Source Type: query_logs.source_type
    row: 22
    col: 0
    width: 24
    height: 24
  - title: "# of Qs Answered Without Retry"
    name: "# of Qs Answered Without Retry"
    model: main
    explore: query_logs
    type: single_value
    fields: [query_logs.count_of_question_submitted]
    filters:
      query_logs.log_type: 'Exit - Type 2: Valid SQL generated and executed,Exit -
        Type 9: Good SQL existed and executed'
      query_logs.is_final_try: Y
      query_logs.retry_count: 0,EMPTY
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Schema: query_logs.schema
      Question Time: query_logs.question_time_time
      Source Type: query_logs.source_type
      User: query_logs.user
      Model Used: query_logs.model_used
    row: 2
    col: 12
    width: 6
    height: 3
  - title: "# of Qs Submitted"
    name: "# of Qs Submitted"
    model: main
    explore: query_logs
    type: single_value
    fields: [query_logs.count_of_question_submitted]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Schema: query_logs.schema
      Question Time: query_logs.question_time_time
      Source Type: query_logs.source_type
      User: query_logs.user
      Model Used: query_logs.model_used
    row: 2
    col: 0
    width: 6
    height: 3
  - title: "# of Qss Answered With Known Good SQL"
    name: "# of Qss Answered With Known Good SQL"
    model: main
    explore: query_logs
    type: single_value
    fields: [query_logs.count_of_question_submitted]
    filters:
      query_logs.log_type: 'Exit - Type 9: Good SQL existed and executed'
      query_logs.is_final_try: Y
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Schema: query_logs.schema
      Question Time: query_logs.question_time_time
      Source Type: query_logs.source_type
      User: query_logs.user
      Model Used: query_logs.model_used
    row: 5
    col: 0
    width: 6
    height: 3
  - name: Query Log Overview
    type: text
    title_text: Query Log Overview
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Query Type Analysis
    type: text
    title_text: Query Type Analysis
    subtitle_text: ''
    body_text: ''
    row: 8
    col: 0
    width: 24
    height: 2
  - type: button
    name: button_67
    rich_content_json: '{"text":"Question Lookup Dashboard","description":"Look up
      the details of each question and log","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#12B5CB","href":"https://fb93a61f-c776-4eae-a0d4-24d9107271c4.looker.app/dashboards/fOz9syY2dWBWSL41H34Bbm?Question+ID=%22admin%40kateguo.altostrat.com_2024-02-09+20%3A03%3A22.431275%2B00%22"}'
    row: 5
    col: 12
    width: 6
    height: 3
  - title: "% Questions Answered"
    name: "% Questions Answered"
    model: main
    explore: query_logs
    type: looker_line
    fields: [query_logs.question_time_demo_date, query_logs.percentage_of_questions_answered]
    fill_fields: [query_logs.question_time_demo_date]
    filters:
      query_logs.execution_time: after 2024/02/09 10:48
      query_logs.is_final_try: Y
    sorts: [query_logs.question_time_demo_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Schema: query_logs.schema
      Question Time: query_logs.question_time_time
      Source Type: query_logs.source_type
      User: query_logs.user
      Model Used: query_logs.model_used
    row: 16
    col: 13
    width: 11
    height: 6
  - title: New Tile
    name: New Tile
    model: main
    explore: query_logs
    type: single_value
    fields: [query_logs.count_of_question_answered, query_logs.count_of_question_submitted]
    filters:
      query_logs.log_type: ''
      query_logs.execution_time: after 2024/02/09 10:48
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#7CB342"
    single_value_title: "# of Qs Answered"
    comparison_label: Qs Submitted
    defaults_version: 1
    listen:
      Schema: query_logs.schema
      Question Time: query_logs.question_time_time
      Source Type: query_logs.source_type
      User: query_logs.user
      Model Used: query_logs.model_used
    row: 2
    col: 6
    width: 6
    height: 3
  - title: Trend by Log Type
    name: Trend by Log Type
    model: main
    explore: query_logs
    type: looker_column
    fields: [query_logs.question_time_demo_date, query_logs.count_of_question_submitted,
      query_logs.log_type]
    pivots: [query_logs.log_type]
    fill_fields: [query_logs.question_time_demo_date]
    filters:
      query_logs.execution_time: after 2024/02/09 10:48
      query_logs.is_final_try: Y
    sorts: [query_logs.log_type, query_logs.question_time_demo_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Schema: query_logs.schema
      Question Time: query_logs.question_time_time
      Source Type: query_logs.source_type
      User: query_logs.user
      Model Used: query_logs.model_used
    row: 10
    col: 13
    width: 11
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: main
    explore: query_logs
    type: single_value
    fields: [query_logs.count_of_user]
    filters:
      query_logs.log_type: ''
      query_logs.execution_time: after 2024/02/09 10:48
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Unique Users
    comparison_label: Qs Submitted
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    listen:
      Schema: query_logs.schema
      Question Time: query_logs.question_time_time
      Source Type: query_logs.source_type
      User: query_logs.user
      Model Used: query_logs.model_used
    row: 2
    col: 18
    width: 6
    height: 3
  - type: button
    name: button_74
    rich_content_json: '{"text":"BigQuery Console","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://console.cloud.google.com/bigquery?project=nl2sql-kg-dev&ws=!1m5!1m4!4m3!1snl2sql-kg-dev!2snl2sql!3squery_logs_demo"}'
    row: 5
    col: 18
    width: 6
    height: 3
  - title: Untitled
    name: Untitled
    model: main
    explore: query_logs
    type: single_value
    fields: [query_logs.count_of_try, query_logs.count_of_question_submitted]
    filters:
      query_logs.log_type: ''
    sorts: [average_of_tries_per_question desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${query_logs.count_of_try}/${query_logs.count_of_question_submitted}"
      label: 'Average # of Tries per Question'
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      table_calculation: average_of_tries_per_question
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 'Avg # of Tries per Question'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [query_logs.count_of_try, query_logs.count_of_question_submitted]
    listen:
      Schema: query_logs.schema
      Question Time: query_logs.question_time_time
      Source Type: query_logs.source_type
      User: query_logs.user
      Model Used: query_logs.model_used
    row: 5
    col: 6
    width: 6
    height: 3
  filters:
  - name: Model Used
    title: Model Used
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: main
    explore: query_logs
    listens_to_filters: []
    field: query_logs.model_used
  - name: Question Time
    title: Question Time
    type: field_filter
    default_value: 1 year
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: main
    explore: query_logs
    listens_to_filters: []
    field: query_logs.question_time_time
  - name: User
    title: User
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: main
    explore: query_logs
    listens_to_filters: []
    field: query_logs.user
  - name: Source Type
    title: Source Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: main
    explore: query_logs
    listens_to_filters: []
    field: query_logs.source_type
  - name: Schema
    title: Schema
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: main
    explore: query_logs
    listens_to_filters: []
    field: query_logs.schema
