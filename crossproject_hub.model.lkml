connection: "dbt_food_beverage"

include: "./skipjack.view.lkml"
include: "./distomatosis.view.lkml"
include: "./odontopteris.view.lkml"
include: "./scopate.view.lkml"


explore: skipjack {}
explore: distomatosis {}
explore: odontopteris {}
explore: scopate {}
