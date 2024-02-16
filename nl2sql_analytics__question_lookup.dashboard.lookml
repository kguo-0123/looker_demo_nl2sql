---
- dashboard: nl2sql_analytics__question_lookup
  title: NL2SQL Analytics - Question Lookup
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: fOz9syY2dWBWSL41H34Bbm
  elements:
  - title: Full Log Details for Each Try
    name: Full Log Details for Each Try
    model: main
    explore: query_logs
    type: looker_grid
    fields: [query_logs.execution_time, query_logs.retry_count, query_logs.log_type,
      query_logs.is_final_try, query_logs.full_log]
    filters: {}
    sorts: [query_logs.execution_time]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      query_logs.full_log: 1000
    hidden_pivots: {}
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    listen:
      Question ID: query_logs.question_id
      Question: query_logs.question
      Execution Time: query_logs.execution_time
      User: query_logs.user
    row: 10
    col: 0
    width: 24
    height: 124
  - title: Untitled
    name: Untitled
    model: main
    explore: query_logs
    type: looker_grid
    fields: [query_logs.generated_sql]
    filters:
      query_logs.is_final_try: Y
    sorts: [query_logs.generated_sql]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    truncate_column_names: false
    defaults_version: 1
    title_hidden: true
    listen:
      Question ID: query_logs.question_id
      Question: query_logs.question
      Execution Time: query_logs.execution_time
      User: query_logs.user
    row: 2
    col: 12
    width: 12
    height: 3
  - title: Untitled
    name: Untitled (2)
    model: main
    explore: query_logs
    type: looker_grid
    fields: [query_logs.question]
    filters: {}
    sorts: [query_logs.question]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    title_hidden: true
    listen:
      Question ID: query_logs.question_id
      Question: query_logs.question
      Execution Time: query_logs.execution_time
      User: query_logs.user
    row: 2
    col: 0
    width: 12
    height: 3
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: main
    explore: query_logs
    type: looker_grid
    fields: [query_logs.user, query_logs.project_id, query_logs.source_type, query_logs.schema,
      query_logs.model_used, query_logs.question_time_time]
    filters: {}
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      query_logs.user: 200
      query_logs.source_type: 100
      query_logs.schema: 200
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    title_hidden: true
    listen:
      Question ID: query_logs.question_id
      Question: query_logs.question
      Execution Time: query_logs.execution_time
      User: query_logs.user
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Execution Details
    name: Execution Details
    model: main
    explore: query_logs
    type: looker_grid
    fields: [query_logs.execution_time, query_logs.log_type, query_logs.good_sql_added,
      query_logs.found_in_vector, query_logs.retry_count, query_logs.sql_executed_flag,
      query_logs.need_rewrite, query_logs.failure_step, query_logs.is_final_try, query_logs.error_msg]
    filters: {}
    sorts: [query_logs.execution_time]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    truncate_column_names: false
    defaults_version: 1
    listen:
      Question ID: query_logs.question_id
      Question: query_logs.question
      User: query_logs.user
      Execution Time: query_logs.execution_time
    row: 5
    col: 0
    width: 24
    height: 5
  filters:
  - name: Question ID
    title: Question ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: main
    explore: query_logs
    listens_to_filters: []
    field: query_logs.question_id
  - name: Question
    title: Question
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
    field: query_logs.question
  - name: Execution Time
    title: Execution Time
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: main
    explore: query_logs
    listens_to_filters: []
    field: query_logs.execution_time
  - name: User
    title: User
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
    field: query_logs.user
