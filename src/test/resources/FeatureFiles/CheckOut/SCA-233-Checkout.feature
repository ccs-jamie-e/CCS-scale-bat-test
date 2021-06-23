Feature: As a Buyer,
  I MUST be able to submit my Order to a Supplier by selecting to pay for the Order offline, 
  So that I can purchase my products without paying immediately

  Scenario: TC_Verify that user is able to submit the order by paying offlines
    Given User navigates to BuyerUI
    And User login to buyerUI
    When User add 1 product in basket
    Then User completes the checkOut proccess
    
  
  
  @confidence
  Scenario: TC_Verify VAT is displayed in basket for products with VAT0 and VAT20 for supplier1 when delivery method is set to Standard UK Mainland
    #API Steps
    Given user clears the basket
    And user creates a basket
    And User gets products IDs for supplier1 and supplier2
    #And User adds product1 with VAT0 from supplier1 and product2 with VAT20 of supplier2 in to the basket
    And User adds the products with VAT0 and VAT20 for supplier1 and supplier2
    #Buyers UI Steps
    And User navigates to BuyerUI
		And User login to buyerUI with API User
		And User clicks on "Basket Link" in buyers UI
		And User checks "Basket" title on basket page
		And User validates the breadcrumbs "Home" and "Basket" in basket page
		And User validates the Delivery method drop down options
		And User select the Delivery option "Standard UK Mainland (3-5 days)"
    #And User validates the supplier1 product total delivery total VAT and grand Total in basket for Standard UK Non Mainland
    And User validates products details with VAT0 and VAT20 for supplier1 and supplier2 in basket page
    And User clicks on "Checkout" in buyers UI
    And User navigates to checkout payment page a validates the checkout payment text
    And User validates the Order summary and supplier name "testsupplier039" with Total value excluding VAT details
    And User enters the PO number for the for supplier "testsupplier039"
    And User validates the Order summary and supplier name "testsupplier040" with Total value excluding VAT details
    And User enters the PO number for the for supplier "testsupplier040"
    And User validates its correctly navigates to checkout confirmation page
    And User validates the Delivery and Invoice address with Delivery note in checkout confirmation page
    And User validates products details with VAT0 and VAT20 for supplier1 and supplier2 in checkout confirmation page
    And User validates the "Terms & Conditions" checkbox and "View the Terms & Conditions for the purchase" link
    And User clicks on "Terms & Conditions" checkbox in checkout confirmation page
    And User clicks on "Place order" button
     
    
    
    
    
   
    
    
    
    
    
    