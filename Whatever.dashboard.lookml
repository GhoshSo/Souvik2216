- dashboard: test_for_dashboard_filter_bug
  title: Test for Dashboard Filter Bug
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 7ftQ1ZjzRMJ2TroyxSkzWa
  elements:
  - title: drill
    name: drill
    model: souvik2216
    explore: order_items
    type: looker_grid
    fields: [order_items.sale_price, order_items.count]
    sorts: [order_items.count desc 0]
    limit: 50
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      City: users.city
    row: 0
    col: 0
    width: 8
    height: 11
  - title: New Tile
    name: New Tile
    model: thelook
    explore: users
    type: table
    fields: [users.country, users.state, users.zip, users.count]
    filters:
      users.state: California,Alaska,Florida,Georgia,Idaho,Michigan,Illinois,Maryland
    sorts: [users.count desc]
    limit: 100
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    listen:
      City: users.city
    row: 0
    col: 8
    width: 7
    height: 11
  filters:
  - name: Sale Price
    title: Sale Price
    type: field_filter
    default_value: "[57,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: souvik2216
    explore: order_items
    listens_to_filters: []
    field: order_items.sale_price
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: thelook
    explore: users
    listens_to_filters: []
    field: users.city
