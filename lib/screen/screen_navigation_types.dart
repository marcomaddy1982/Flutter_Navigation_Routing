import 'package:flutter/material.dart';

import 'package:navigation_example/screen/screen_registration.dart';

class NavigationTypes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationTypesState();
  }
}

class NavigationTypesState extends State<NavigationTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigation Example"),
        ),
        body: Column(
          children: <Widget>[
            _buildSizeBox(),
            _buildPushNavigationButton(),
            _buildPushReplacementButton(),
            _buildRoutesPushButton(),
            _buildRoutesReplacementButton()
          ],
        ));
  }

  Widget _buildSizeBox() {
    return SizedBox(
      height: 10.0,
    );
  }

// In thisn case after you push the new page the back button will be available in the navigation bar
  Widget _buildPushNavigationButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          textColor: Colors.white,
          child: Text('Push Navigation'),
          onPressed: _pushScreen,
        )
      ],
    );
  }

// In thisn case after you replace the old page with the new one, the back button will NOT be available in the navigation bar
  Widget _buildPushReplacementButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          textColor: Colors.white,
          child: Text('Push Replacement'),
          onPressed: _pushReplacementScreen,
        )
      ],
    );
  }

  Widget _buildRoutesPushButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          textColor: Colors.white,
          child: Text('Routes Push Navigation'),
          onPressed: _routesPushNavigation,
        )
      ],
    );
  }

  Widget _buildRoutesReplacementButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          textColor: Colors.white,
          child: Text('Routes Replacement Navigation'),
          onPressed: _routesReplacementNavigation,
        )
      ],
    );
  }

  void _pushScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RegistrationPage()));
  }

  void _pushReplacementScreen() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => RegistrationPage()));
  }

  void _routesPushNavigation() {
    Navigator.pushNamed(context, '/registration');
  }

  void _routesReplacementNavigation() {
    Navigator.pushReplacementNamed(context, '/registration');
  }
}
