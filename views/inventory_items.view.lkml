view: inventory_items {
  sql_table_name: demo_db.inventory_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    html:   <font color="green">{{ value }}</font>;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension_group: sold {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sold_at ;;
  }
  measure: total {
    type: sum
    sql: ${TABLE}.cost ;;
    html:
    {% if value > 50 %}
     <font style="color: green; font-size: 80%">{{ rendered_value }}</font>
    {% elsif value >100 %}
     <font style="color: blue; font-size:90%">{{ rendered_value }}</font>
    {% else %}
     <font style="color: brown; font-size:100%">{{ rendered_value }}</font>
    {% endif %};;
    }
  measure: count {
    type: count
    drill_fields: [id, products.id, products.item_name, order_items.count, order_items_vijaya.count]
  }
}
