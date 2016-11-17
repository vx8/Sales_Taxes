#### Matteo Spreafico
# Sales Taxes - Interview Excercise
##### Screenshots
[Gallery](https://postimg.org/gallery/1b9h2ac78/)

#### Project specifications:
- Language Used: Objective-C
- IDE: xCode 8
- Build Service: Travis CI
- Built using: xcodebuild with xcpretty formatter
- Written with TDD approach
- Unit Test Tool: XCTest


#### Model Structure:
The model for this problem was built using a waterfall structure with a 1 to N approach supported by a dedicated class to fetch and parse data. For this example the JSON data is stored locally in a file.

##### Purchase:
Purchase Class is responsible for creating a data structure containing an array of baskets based on a given JSON data
###### Properties:
* [baskets] -  an array filled by the baskets contained in this purchase

##### Basket:
Basket Class is responsible for creating a data structure containing an array of products based on a given JSON data.

###### Properties:
* [basketName] - a string rappresenting the basket string alias
* [totalSalesTaxes] - a float rappresenting the amount of sales taxes of the basket
* [total] - a float rappresenting the total price of the products in the basket
* [products] an array filled by the product contained in this basket


##### Product:
Product Class is responsible for creating a data structure containing all the product informations

###### Properties:
* [imported] boolean
* [name] string
* [price] float
* [quantity] float
* [tax] float
* [totalPrice] float
* [salesTaxes] float
