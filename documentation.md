File: main.dart

Description:

This file contains the main entry point for the B'moovd mobile application. It creates a GetMaterialApp widget, which is the root of the application's UI. The GetMaterialApp widget inherits from MaterialApp and integrates features from the GetX package for dependency management and navigation (if used).

Classes:

MyApp: This class represents the root widget of the application. It builds the GetMaterialApp widget and sets the application's title, theme, and home screen.
Functions:

main(): This is the entry point of the application. It calls the runApp function to start the application with the MyApp widget as the root.
Additional Notes:

The code imports various packages required for building the UI and functionalities of the app, including:
carousel_slider: For creating a carousel image slider
dots_indicator: For displaying page indicators for the carousel
flutter_advanced_drawer: For implementing an advanced drawer menu
font_awesome_flutter: For using Font Awesome icons
responsive_framework: For adapting the UI layout to different screen sizes
File: MyHomePage.dart

Description:

This file defines the MyHomePage class, which represents the home screen of the B'moovd application.

Classes:

MyHomePage: This class represents the home screen. It inherits from StatefulWidget and manages the state of the carousel indicator. It builds the UI for the home screen, including the app bar, carousel slider, body content, and bottom information section.

_MyHomePageState: This class is the private State class associated with MyHomePage. It manages the state variables like the current carousel index and colors. It builds the UI elements within the MyHomePage widget.
Functions:

build(BuildContext context): This method is responsible for building the UI of the MyHomePage widget. It creates an AdvancedDrawer widget for the app drawer menu, a Scaffold widget for the main screen layout, and defines the UI elements within the app bar and body sections.
Variables:

_controller: This is a CarouselController object used to control the carousel slider.
_advancedDrawerController: This is an AdvancedDrawerController object used to manage the app drawer menu.
_current: This variable stores the current index of the carousel slider.
gray, cream, lightGray: These variables store color definitions used in the UI.
Additional Notes:

The home screen displays a carousel slider with image banners, followed by text sections and buttons.
The code implements a bottom sheet menu as an alternative to the app drawer menu.