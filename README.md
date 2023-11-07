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
