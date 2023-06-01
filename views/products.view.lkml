view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type:  string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category
    link :{
      label: "dresses"
      url : "https://www.google.com/search?q=dresses&rlz=1CAZVTZ_enIN1056&sxsrf=APwXEdenx6NvcfJPu76QCmHay5o7ZAUrDg%3A1685602717696&ei=nUF4ZLyKKvyK2roPlO-u-A4&ved=0ahUKEwj8zOG5v6H_AhV8hVYBHZS3C-8Q4dUDCA8&uact=5&oq=dresses&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzILCAAQgAQQsQMQgwEyCAgAEIAEELEDMgUIABCABDIICAAQgAQQsQMyCAgAEIAEELEDMggIABCABBDJAzIICAAQgAQQkgMyBQgAEIAEMgUIABCABDIFCAAQgAQ6BwgjEOoCECc6DwgAEIoFEOoCELQCEEMYAToPCC4QigUQ6gIQtAIQQxgBOhUILhADEI8BEOoCELQCEIwDEOUCGAI6BwgjEIoFECc6FAguEIoFEJECEIsDEKgDEPADEJgDOggIABCKBRCRAjoNCAAQigUQsQMQgwEQCjoLCAAQigUQsQMQgwE6EQguEIAEELEDEMcBENEDENQCOgsILhCKBRCxAxCDAToHCAAQigUQQzoNCAAQgAQQFBCHAhCxAzoFCC4QgAQ6CgguEIoFENQCEEM6EQguEIAEELEDEIMBEMcBEK8BOgoIABCKBRCxAxBDOggIABCKBRCxAzoICAAQigUQkgM6EQguEIAEELEDEIMBEMcBENEDSgQIQRgAUIIGWJENYN0VaAFwAXgAgAGZAogBrwySAQUwLjEuNpgBAKABAbABFLgBAsABAdoBBggBEAEYAdoBBggCEAEYCw&sclient=gws-wiz-serp"
    }

    };;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
