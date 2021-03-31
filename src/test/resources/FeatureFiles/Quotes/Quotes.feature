Feature: This User story covers the Firm quotes related scenarios

  #[US: SCA-91 (TC 01)]
  #[US: SCA-219 (TC 01, 02 and 03)]
  @confidence
  Scenario: TC-Verify user is able to see list of quotes which he has placed and quotes table is displayed with all columns
  	#API
    Given user clears the basket
  	##Admin UI
    Given User logged in as "supplier" in admin panel
    And User click on "productcatalogues" link on main sidebar
    And User clicks on show link to view products
    And Check if the product is present in a catalogue if yes then delete
    And User click on "productcatalogues" link on main sidebar
    And User clicks on show link to view products
    When User creates a product
    And User close the current browser
    #Buyers UI
    And User navigates to BuyerUI
    And User login to buyerUI with API User
    When User search a product with SKU number
    And User clicks on "PLP image" in buyers UI
    And User clicks on "Add to basket" in buyers UI
    And User clicks on "Proceed to basket" in buyers UI
    And User validates the generic message "Your basket has been updated."
    And User get the supplier name and total amount of the products on Buyers UI
    And User clicks on "Quote" in buyers UI
    And User enter Quote name as "Firmquote"
    And User create "Firm" quote
    #And User create "Indicative" quote
    And User clicks on "Raise quote" in buyers UI
    Then User get message "Quote raised successfully" on screen
    And User validates the new Quote refrence no
    And User enters the new Quote refrence in Quote reference textbox in buyers UI
    And User clicks on "Manage quote Search button" in buyers UI 
    And User validates the Quote table column headers displayed on BuyerUI
    And User validates the new "Firm" Quote details in quotes table with default status as "Accepted" in Buyers UI
    #Admin UI
    #Given User logged in as "supplier" in admin panel
    And User enter the admin url and logged in as a "supplier"
    And User clicks on "Quote Link" in Admin UI
    And User enters the Quote refrence no. on Quote Reference textbox in Admin UI
    And User clicks on "Search Button" in Admin UI
    And User validates the new Quote details in quotes table with default status as "accepted" in Admin UI
    And User clicks on "Reject Link" in Admin UI
    And User validates the "Reject Quote" page
    And User validates Reject Quotes page has reject reason textbox with "Reject" and "  Cancle" button
    And User enters the reject reason "Out of stock" for the quotes
    And User clicks on "Reject Button" in Admin UI
    And User validates the "Manage Quotes" page in Admin UI
    And User validates quote staus as "rejected" and reject reason on Manage Quotes page
		And User clicks on "Quote Link" in Admin UI
    And User enters the Quote refrence no. on Quote Reference textbox in Admin UI
    And User clicks on "Search Button" in Admin UI
    And User validates quote staus as "rejected" on Quotes page in Admin UI
    
    
    #[US: SCA-98 (TC 01, TC 02)]
    @confidence
  	Scenario: TC-Verify user is able to create Indicative quote and verify label for Indicative quote radio button is displayed correctly.
 	  #API Steps
  	Given user clears the basket
 		And user gets all the available products list
		And identify products which needs to be add in the list.
		And get the products variant ids 
		And user access the webservice of GetWishList
		And user adds a product to basket
		#And deletes the products from the WishList
		#UI Steps
		And User navigates to BuyerUI
		And User login to buyerUI with API User
		And User clicks on "Basket Link" in buyers UI
		And User get the supplier name and total amount of the products on Buyers UI
		And User clicks on "Quote" in buyers UI
		And User validated the Firm and Indicative quote label 
		And User enter Quote name as "Indicativequote"
    And User create "Indicative" quote
    #And User create "Indicative" quote
    And User clicks on "Raise quote" in buyers UI
    Then User get message "Quote raised successfully" on screen
    And User validates the new Quote refrence no
    And User enters the new Quote refrence in Quote reference textbox in buyers UI
    And User clicks on "Manage quote Search button" in buyers UI 
    And User validates the new "Indicative" Quote details in quotes table with default status as "Accepted" in Buyers UI
    And User clicks on "Quote refrence link" in buyers UI
    And User validates the text "Indicative quote only, not valid for purchase" and the status "accepted" on indicative quotes page
     
    
    
    