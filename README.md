# DATABASE PROJECT

## Fixing and updating minor errors

_This is a somewhat part of a class that Im trying to do so be pacient and hope everything goes well xD_

**********************************************************************

**Kimaki's Game Place**

Hello there :)

This project is about the class of Database, I create a E-commerce project of electronic games and videogame. Customers interested in videogames and other types of games at Kimaki’s Game Place will be found (or at least something). Anyways, Customers will search their preference for the products since we have a variety of games, including consoles, equipment, even the latest technology of virtual reality AND augmented reality. The Customer can have access to this service via Online (Web Application) and Mobile Application. The Customer can register with various methods with email, Facebook Account or Google+ Accounts. 

***Note: All content of as games, video games, console VR and AR will be called as Product.

**Assumptions:**
Many Account to many Customers
Many Customers to Many Products
Many payment method (paypal or international credit card)
Many Developers 
Stock service has many suppliers
Access(Login) WebApp and MobApp many Custumers/Wishlist
CustomerSupport will be added as an option for Account problems (manage by Account)
Each Customer will get notifications that can be about products or Cart updates (by Account)
Each entity does not have any additional (unknown) attributes or relationships.

**Schemas:** 
ACCOUNTS(Login, Cart, Setting, Notifications)
DEVELOPERS(AccManage, CustomersAcc1, CustomerAcc2, CustomerAcc3, CustomerAcc4, CustomerAcc5, CustomersAcc6, CustomerAcc7, CustomerAcc8, CustomerAcc9, CustomerAcc10, WebMobManage, StockSupplierPayIssues)
STOCK(Product, StockNotification, Price)
SUPPLIERS(SupplierProd, Price)
WEBAPP(AccountLog, ProductView, NotificationPurchase, ProdStock, ProdShipTime, Price) 
MOBAPP(AccountLog, PlataformApp, ProductView, NotificationPurchase, ProdStock, ProdShipTime, Price)
PAYMENT(VerifyPurchase, NotificationPayment)
Wishlist(InterestProd, AccLog) 

**Updates:**
A lot, let’s start with “ADMI_TECH” was replace with DEVELOPERS because the developers will have all the access to the accounts and manage every technical problem including payment, customer support, accounts, suppliers and any other problems.
Divide WEBAPP with WEBAPP and MOBAPP as 2 different methods of access.
Added STOCK and ACCOUNTS entities.
Added in each entities new attributes.

**Explanation:**
Accounts is a weak entity which include attributes Login (can be connected with Facebook, G+ or email), Cart (products to buy), Setting (to control the account), Notification (necessary to let the customer about updates, promotions, and any other important information) which will have a weak relationship with a weak entity of Customers with attributes of interested products and Account access (login) because the Accounts depends on Customers and Developers. Now Developers are a strong entity which controls all, having attributes as Account management, Customer Support, Web and Mobile management, also in charge of the Stock, Supplier, and Payment issues. Stock is another weak entity with attributes of products, Category, Stock Notification and Price having a relationship with Supplier as a strong entity with attributes of Product Supplier, Categorize products and Price. WebApp and MobApp are connected with the Accounts, Stock and Developers with an All-In-All Access. 

**Note:** All-In-All Access relationship is the one that unites all the controls of all of the other entities. I mean, since Mobile and Web application needs to be connected with all other entities the best way is to be connected directly with the Developer so that can have access to all others entities.




# In the SQL file

_The Table for Accounts_ has the controlof login as the primary key, also responsable for the cart, setting and notifications to reach for the customer.

_The Table of Developers_ has 10 CustomerAcc that means each developer is assign to a max of 10000 of customers accounts. The developersalso has the accmanage which is the one that can resolve each and every problems that all the customers with the accounts but only minor and technical issues. 
The CustomerAcc is for the customer let know the developer that one account is close or need to be fix and this is the attribute responsible for the job.

_Stock_ is the one that needs to be filled with the suppliers with products, have notification stock to let know the customer that the product is back or will be soon in stock and also needs to have a price.

_Suppliers_ is the one that is in charge of providing the merchandise of all the Game online market place. 

_Webapp and MobApp_ are the one that have the customer service access to buy the products and stuff. 

_Payment_ will be the one in charge of verifiying the payment and all.

Finally, _wishlist_ is the one the product will be watching or "add" to the wishlist that the customer wanted to only see and not buy.


************************************************************

### Hope You Like it. Thanks! 



