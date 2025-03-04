
# Purvieww architecture

## Data Map
 - scanners
 - Classification

 - Collection: is a logical grouping\
   create a collection -> name = Europe

   - Europe
     - Databases (sub collection)
     - Datalakes

  - DataMap > register sources > Azure SQL database (save in database collection)
  No credentials needed at this time.

  ### Scan : Does the real work
    ### Scan definition
     - Where to scan
     - Scan rule set
     - Type (Full, Incremental)
     - Schedule
    
    ### Scan rule set
     - What to scan(txt, json, parquet..)
     - What to look for (Classification rules)
     - Specific to source type (ADLS, DB)
     - System defined or custom

    ### System defined scan rule sets (Data map > Scan rule sets)
    Examples\
    - ADLS2 > Government, Financial, Personal, Security etc. around 206 classification rules
    
## Data Catalog
  ### Data asset
   - Data asset is a unit in catalog: example: table, view, schema, sql server
   - Purview automatically classify some columns, example classifications: email, phone, name, zipcode

## Data Insights