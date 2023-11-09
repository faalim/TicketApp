# TicketApp
Ticket App that lets user purchase diffrent type of basketball ticket types. Allows you to restock and view purchasing history
# Tickets App

## Objectives

- Utilize UITableViewController and UITableView delegates and DataSource.
- Implement a Picker View Controller.
- Use Push and Modal segues and segue identifiers.
- Create Multiple Model-View-Controller (MVC) components.

#### User ViewController (1st VC)
- 9 buttons
- 1 buy button
- 1 picker view
- 3 labels
- Choose the number of tickets and the quantity and buy the tickets.

- Total cost = price * quantity (quantity entered by the user).
- Ticket type updates when the user selects a row in the Picker View.
- Picker view updates when a user buys a certain number of tickets.

## Manager Functionality: 
- When Manager Button is pressed the next view will appear.

### Manager View
- This View includes: 
  - "History" button takes the user to the History View Controller.
  - "Reset" button takes the user to the Reset View Controller.

### History View Controller

- Displays the transaction history for the current session (history is not saved when the app closes).
- Tapping a cell in the History View will load detailed information in the Detail View Controller.

    ### Detail View Controller
    
    - Displays details for each transaction:
      - Item name
      - Quantity
      - Total amount
      - Purchase date

### Reset View Controller

- Lists all available tickets in the store.
- Selecting a cell and pressing "OK" increases the ticket quantity.
- The TableView updates instantly.
- The model should have an update or reset method to handle ticket quantity changes.

<img width="730" alt="Ticketapp" src="https://github.com/faalim/TicketApp/assets/109769086/a2a69870-9bde-4968-b9dd-4acdbf44d220">
