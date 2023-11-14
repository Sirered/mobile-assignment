# mobile_inventory

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Assignment 7

## What are the main differences between stateless and stateful widget in Flutter?
A stateless widget has no state, which means that that widget will not change as long as the page hasn't been reloaded. Stateless widgets are static and will stay the same as how they were first built until they are removed themselves (by other functions) or the page is reloaded (which basically removes and rebuilds everything. Common stateless widgets are text, icons, images etc. On the other hand Stateful widgets are widgets that can change when/if an event occurs, whether it be from a timer, or user interaction, thus not static and can change appearance or value whenever it is needed. 

## Explain all widgets that you used in this assignment.
* **ShopCard**

  A widget defined by me that has an associated ShopItem, which defines an associated string Icon and color(for the bonus) for the shopCard widgets

* **Widget**

  The building blocks of creating an application with Flutter. Determines every element on the application that the user can see and interact with. This is done by correctly sequencing widgets, using the subclasses of widgets and assigning values to attributes of the widget object(s)

* **Material**

  The base widget required to use the material design system defined by Google, which allows use of features that work together, such as buttons, inkwells and snackbars

* **Inkwell**

  A widget that needs to be a child of a material widget, that acts like a button and reacts according to how the user interacts with the widget. In the application we use them as buttons that has this nice ripple effect when it is clicked.

* **Scaffold**

  A widget that allows us to utilise widgets that pop in or float the rest of the application like (for our purpose) snack bars, as well as also floating buttons, drawers, while following Material Design and allows consistent design under such guidelines. This is done, by setting the widgets mentioned prior at fixed heights/positions on the screen

* **ScaffoldMessenger**

  A widget that handles snackbarsm like how they pop in, how long they stay there etc.

* **SnackBar**

  A widget that pops up at the bottom of the screen to show information or confirm an action

* **Container**

  As the name suggests it is a widget that can contain other widgets, allowing for more control on positioning and useof space by setting attributes such as padding, margin Alignment etc.

* **Center**

  A widget that places it's child in the middle of the widget, allowing us to easily align our inner widgets to the middle.

* **Column**

  A widget that allows you to contain children in an array in which the each child is below the one before it,expanding the Column widget vertically as you add more items, allowing you to fit every child snugly

* **Icon**

  A graphical widget that can't be interacted with, and normally represents simple symbols/glyphs. This widget allows us to use the predefined library of icons provided by flutter's material package

* **Padding**

  A widget that allows us to contain a single child, as well as allows us to set the EdgeInsets, which is the amount of space between the edges of the parent class and the edges of the child class, allowing for some control on layout

* **Text**

  A static widget that can display text, with formatting and styling defined within the class constructor

* **MyHomePage**

  A Stateless widget that is defined by me that represents the Homepage (currently the only page) and builds the widgets within the page accordingh to the build method we have defined (overriding the original build method)


* **AppBar**

  A widget that is part of Scaffold that is fixed at the top of the screen, normally containing other widgets such as general info regarding the entire app, buttons that execute functions that should be accessible from all pages of the app. For more niche or complex functions, normally it is done with a dropdown menu

* **SingleChildScrollView**

  A box that contains a single child that can be scrolled through. Normally used to contain children that can normally be viewed entirely, but can still bescrolled if the dimensions of the screen becomes smaller

* **GridView**

  A widget that contains children in which they are displayed in a grid layout. You can define the amount of children on a row, spacing between children, padding of the grid from the edge of the GridView and the edge of each children.

* **MyApp**

  A widget defined by me that builds the actual app when made and is called by the main function (thus when the app is run)

* **MaterialApp**

  An App widget that represents the entire application such as routing, home page, navigation, general theme and styling etc. The materialApp is specifically used to implement material design as it implements functions and revolves around widgets necessary for material design

## Explain how you implemented the checklist above step-by-step (not just following the tutorial).

* **Create a new Flutter application with the inventory theme, just like previous tutorials.**

  First I created an empty local directory on my laptop called inventory. I then ran the flutter create mobile-inventory function, which created a flutter project. I then initialised git in the newly made project. I then made a repository(this repository) on github, then went back to the local directory and git added, comitted and pushed with origin master. Then in the Lib folder in the project, I added a menu.dart file, in which I moved definition of the class MyHomePage from main.dart to menu.dart, adding an import function in main.dart that imports from menu.dart. Now all that main.dart has is the MyApp class which defines the app as a whole, with an instance of MyHomePage (imported from menu.dart) as the home, with the default theme provided when we created the project, as well as a main function that just creates an instance of MyApp. Afterwards in the MyHomePage class I overridden the Widget build method that makes it so that when MyHomePage widget is built it will return a Scaffold, with:

  An App bar with the name of our shop (for now it is Inventory)

  A body that, if it gets too small, will allow users to scroll through those contents. Said contents are center aloigned text stating that this is the PBP Shop, as well as a GridView of shop cards, explained in the later points. It also has a bunch of spacing and aligning with the help of widgets such as Padding and Column, as well as attributes within widgets, like the textAlign attribute in the Text widget

We also made it so that the MyHomePage is Stateless, by changing what it is extending and removing anything to do with state in the class

* **Create 3 simple buttons with icon and text**

  First we defined a class called ShopItem class in which they have 3 attributes, a String name, an IconData called icon (which allows us to use the library of icons provided by flutter, as icons in our app) and a color that is of the Color class. The only method it has is it's constructor, which takes all 3 attributes as parameters. This class represents raw components that we will find in our shop app for now. Then we define a stateless widget called ShopCard which only has an object of the ShopItem 
 class, called item, and key as attributes. It also overrides the Widget build method, so that when it is built, it returns a Material widget that is of the color specified in the item object assigned to this specific ShopCard and has a child that is of the Inkwell class that acts like a button. This Inkwell object also has a child, of the Column class, which contains the icon and text specified in the item attribute of the ShopCard. This column and text is centeraligned to look nice and the icons, as well as the text is white.

  After we have defined the ShopCard class and how it's built, we can add a list of ShopItems, called items in the MyHomePage class, in which we will define the buttons specified by the checklist, so one of the members of the list would be ShopItem("View Items", Icons.checklist, Colors.indigo) where "View Items" is the name of the item, Icons.checklist is a checklist icon from the flutter icon library and Colors.indigo represents the color indigo, thus this is supposed to represent a button with the label "View Items", of the color indigo and with a checklist icon on it. The other buttons are defined in a similar manner, as members of this items list. Then in the GridView, which is a child of the column that is the child of the SingleChildScrollView, that is the body of the Scaffold that is returned when MyHomePage is built add a children attribute that maps the items as ShopItems and return them as ShopCards, thus building them as detailed in the paragraph prior (when we were defining the ShopCards class) and putting those ShopCards in a grid-like view

* **Create a Snackbar with the following texts**

  In the Inkwell, that is a child of the Material that is returned when building a ShopCard, add an onTap attribute that is a method with no parameters that wil call a ScaffoldMessenger to hide the current snackbar and show a snackbar with the text "You pressed the ${item.name} button" where item.name is the name of the ShopItem associated with the ShopCard being built, thus now whenever the inkwell that is currently acting as a button is tapped, it will sow a snackbar that informs the user of the button they have just pressed, just as described in the checklist

# Assignment 8

## Explain the difference between Navigator.push() and Navigator.pushReplacement(), accompanied by examples of the correct usage of both methods!
First, we need to discuss how the Navigator works. Basically we have a stack of pages, and whichever page is at the top of the stack is the one that the user is currently viewing. When we do Navigator.push() we push the webpage to the top of the stack, thus causing us to view the pushed page. When we use pushReplacement, the top of the stack is first popped then the webpage assigned within the function is pushed on. This means that both functions will bring us to the page that has been assigned within the function, however they differ in the fact that if we pop th stack, which occurs when we go back on a web page, if we had used push to get to that page, we would go back to the page that had pushed the web page, however if we used push replacement, since the stack was popped first, when we go back, we would instead be redirected to the last page that we used Navigator.push() when it was going to the next webpage, basically skipping over webpages that have been deemed as awkward to go back to once business on tht page is finished.

For example, if we had a manga reading website and each chapter got it's own web page, it would be appropriate to use Navigator.push(), because users would want to and should be able to see the chapters that they have viewed previously by going back, whereas if a user has filled out a form or a login, it might be best to use Navigator.pushReplacement, because there could be rather unfortunate or awkward occurences from going back to the form after you have completed it (for example, they might make another submission, thinking that going back had undone the submission as well), hence it best to avoid going back to form pages, especially logins or registering accounts

## Explain each layout widget in Flutter and their respective usage contexts!

* **Align**

  A widget with a single child, that can be placed within the alignment widget by either using the coordinate system with offset, or using the predetermined alignements such us Alignment.bottomCenter. It can be used to fit logos or put buttons in an appropriate section of the page

* **ListView**

  A widget that contains children in which they are displayed in a list layout. This widget allows you to scroll throught the list of children you have and define the extent of all of it's children to keep consistency. The list of children will be shown one after another, according to how they are ordered in the list, in the direction that the list is scrolling in (up to down by default). It can be used to go through a long navigation drawer, or scroll through button options.

* **Row**

  A widget that allows you to contain children in an array in which each child is to the right of the one before it. Good for grouping a moderate amount of similar buttons or widgets

* **Center**

  A widget that places it's child in the middle of the widget, allowing us to easily align our inner widgets to the middle. Good if you want an image or icon in the middle of a widget, or there is a sizable blank space with a button in it.

* **Container**

  As the name suggests it is a widget that can contain other widgets, allowing for more control on positioning and use of space by setting attributes such as padding, margin Alignment etc. You may use it as a child of a larger widget to contain multiple smaller children, like a button that wants to have both icon and text.

* **Padding**

  A widget that allows us to contain a single child, as well as allows us to set the EdgeInsets, which is the amount of space between the edges of the parent class and the edges of the child class, allowing for some control on layout

* **Column**

  A widget that allows you to contain children in an array in which each child is below the one before it,expanding the Column widget vertically as you add more items, allowing you to fit every child snugly

* **GridView**

  A widget that contains children in which they are displayed in a grid layout. You can define the amount of children on a row, spacing between children, padding of the grid from the edge of the GridView and the edge of each children.n

## List the form input elements you used in this assignment and explain why you used these input elements!

### Widgets used
* **Form**

  The form widget groups multiple form fields, allowing us to track the state of the form, validate all form fields when clicking the save button and reset every form field when an item is successfully saved

* **TextFormField**

  A widget that allows users to input data into the form field, and the value of the data inputted will be treated as string

### Elements of the item

We were told to ad elements according to our Django model. The items in the Django model are supposed to represent Digimon cards. These are the elements:
  1. `name`: the name of the item/card. 
  2. `category`: category of the item/card (e.g. Lv.7 Digimon)
  3. `code`: the code of the Digimon card, which is normally used to differentiate each type of card
  4. `amount`: the amount of the item/card in stock/inventory/collection
  5. `price`: the price of the item/card
  6. `description`: describes the item/card. Typically the card text of the card

## How is clean architecture implemented in a Flutter application?

Clean architecture refers to the separation of concerns by dividing them into layers, namely, Data, Domain and Features. The Data section takes data whether it be from a database or API using abstract classes and handles the processing from json data to data that can be used on flutter. As this is a point that hasn't been touched on before during tutorial nor in class, I'm not 100% sure about the Data layer. 

In the Domain layer, we transform the data we have taken from the Data layer and transform it into entities, similar to the ShopItem class found in shop_card.dart. Once it is an entity, we can treat the data as entities, allowing us to have methods in the entities, which may be helpful to further process the data, or to handle cases where we want the attributes of the entity to change. 

Lastly the Feature layer, we take the entities that were transformed in the Domain layer, and use it to build our actual widgets, like how we use the ShopItem entity to build our ShopCards. 

This ability to separate our application into these layers, allow for easier maintainability and readability of code, made easier if you separate each widget and acreen into it's own dart file, which allows us to navigate through the prohject files a lot easier and giving us a less clustered view of our code.

## Explain how you implemented the checklist above step-by-step! (not just following the tutorial)

* **Create at least one new page in the application, a page for adding a new item**

  Firstly, I made a dart file named inventory_form in which this new page will be defined. Like all of the other flutter files we have made thus far, it imports from the flutter/materials.dart package. After making the file, I define a Stateful widget named ShopFormPage with a constructor that only has super.key (which is the key taken from it's parent class) and has a private instance of ShopFormPageState as it's state

  Afterwards, I define the ShopFormPage state, with private attribute formKey, which serves as the handler of the form state as well as the input elements listed prior (name, category, code and description as Strings. Amount and price as integers). Then I override the Widget build method with the following features/contents
* Overall layout and style is similar to HomePage, just changes to body
* Has a Form as a body with formKey as it's key
* Within the Form, there is a Column that contains a TextFormField for each input element listed prior
* The TextFormFields all have appropriate labels (according to the attribute that it is for), an onChange method that assigns the current content of the TextFormField to the appropriate attribute (so the TextFormField labelled Card Name will change the name attribute of the ShopFormPageState), as well as validators that return errors if the field is empty or if the attribute is supposed to be an integer, but the contents of the TextFormField is not numeric
* In the column that is within the Form that is the body of the Scaffold made when building this Widget, there is an ElevatedButton that is wrapped by an Align widget, which places the button in the bottom center, with the text 'Save' on it
* When this button is pressed it will validate the current contents of the TextFormFields, and if they are valid, an Alert Dialog is pushed to the front of the screen that displays the name of each attribute, along with the values that have supposedly been saved
* This AlertDialog also has an 'OK' Button that pops the AlertDialog when pressed

* **Direct users to the new item addition form page when clicking the Add Item button on the main page.**

  In the ShopCard widget, in the onTap function of the Inkwell, we add an if statement where if it's associated ShopItem's name is Add Item, it will redirect the user to the newly created page, using Navigator.push() (to do this we also have to import inventory_form.dart to the file that the definition of ShopCard is located in

* **Display data as entered in the form in a pop-up after clicking the Save button on the new item addition page.**

Explained in the 3rd from last bullet point onwards from the Create at least one new page... section

* **Create a drawer in the application**

  Firstly, I created a new dart file named left_drawer, that imports flutter/materials, as well as the files that contain the HomePage and the ShopFormPage. I then defined a Stateless Widget named LeftDrawer within this file. The constructor of this widget only contains super.key and it doesn't have any attributes for itself. It's Widget Build method id overridden so that when it's built it returns a Drawer, with a ListView as it's child, which contains:
* An indigo drawer header, that contains a Column that has large white text saying 'Inventory', as well as some smaller white text that says 'Write all your inventory needs here!'
* A list Tile, that leads with an outlined home icon, the Text 'Home' and an onTap function that uses Navigation.pushReplacement() to redirect the user to th HomePage
* A list Tile, that leads with a shopping cart icon, the Text 'Add Item' and an onTap function that uses Navigation.pushReplacement() to redirect the user to ShopFormPage

   Afterwards, I imported left_drawer.dart to the files that contains the 2 pages we have made and added `drawer: const LeftDrawer(),` to the Scaffold returned when building the HomePage, as well as the Scaffold built by the ShopFormPage, so that both pages will be able to use that drawer. 
