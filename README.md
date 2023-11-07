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
