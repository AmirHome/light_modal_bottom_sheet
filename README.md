<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Light Modal Bottom Sheet is a Flutter package for easy & lightweight implementation of modal bottom 
sheets in your app. It is customizable and performance-friendly, making it a great choice for adding 
modal bottom sheets.

## Features

Easy and intuitive to use
Customizable design options
Lightweight design for improved performance
Smooth animation for a seamless user experience
Suitable for adding modal bottom sheets to your Flutter app
Does not impact app performance.

## Getting started

The Light Modal bottom sheet Flutter package is easy to get started with. Simply add it to your 
pubspec.yaml file, run "flutter pub get", and import the package into your Dart code. To use the 
Light Modal bottom sheet, simply create a new instance of the LightModalBottomSheet widget, 
pass in your desired properties, and add it to your widget tree. It is that simple! The package also 
provides a number of customization options, allowing you to personalize the appearance and 
behavior of your modal bottom sheets to meet your specific needs.

## Usage
The Light Modal bottom sheet package comes with a comprehensive example that demonstrates its usage 
and features. The example project can be found within the package's `/example` folder. 
To use the example, navigate to the example folder in your terminal and run the following command:

```bash
flutter run
```


```dart
///Material fit
onTap: () => showMaterialModalBottomSheet(
        expand: false,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => ModalFit(),
    ),
```
```dart
///Bar Modal
onTap: () => showBarModalBottomSheet(
        expand: false,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => ModalFit(),
    ),
```

```dart
class ModalFit extends StatelessWidget {
  const ModalFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Edit'),
                leading: Icon(Icons.edit),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                title: Text('Copy'),
                leading: Icon(Icons.content_copy),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                title: Text('Cut'),
                leading: Icon(Icons.content_cut),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                title: Text('Move'),
                leading: Icon(Icons.folder_open),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                title: Text('Delete'),
                leading: Icon(Icons.delete),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
        ));
  }
}
```
This will launch the example app on an emulator or connected device, allowing you to see 
how the Light Modal bottom sheet works in practice. The example includes various customization 
options and showcases how the package can be used to add modal bottom sheets to your Flutter app. 
It is highly recommended that you review the example code to understand the full capabilities of 
the package.

## Additional information

The additional information section provides additional resources and tips for using the Light Modal bottom sheet package in your Flutter app. This may include:

Documentation: Detailed documentation and examples to help you get started with the package and to use it effectively.

Issues: A list of common issues faced by users and their solutions to help you troubleshoot any problems you may encounter.

Releases: Information about new releases, bug fixes, and other updates to the package to ensure you are using the latest version.

Contributions: Information about how you can contribute to the development of the package, including reporting bugs, submitting feature requests, or writing code.

Support: Information about how to get help and support, including forums, mailing lists, and online communities.

Roadmap: A roadmap for future development, including upcoming features and improvements to the package.

Having access to this additional information will help you make the most out of the Light Modal bottom sheet package in your Flutter app.





