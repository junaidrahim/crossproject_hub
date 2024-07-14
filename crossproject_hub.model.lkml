connection_name: "dbt_food_beverage"

include: "./ruttee.view.lkml"
include: "./placophora.view.lkml"
include: "./preissuance.view.lkml"
include: "./chrysopa.view.lkml"


explore: ruttee {}
explore: placophora {}
explore: preissuance {}
explore: chrysopa {}
