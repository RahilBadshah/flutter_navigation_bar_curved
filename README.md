# flutter_navigation_bar_curved
Flutter curved bottom navigation bar with great animation by using external package. 

## Android Screenshots

  Gif                 |   Screenshot                   
:-------------------------:|:-------------------------:
<img src="https://github.com/RahilBadshah/flutter_navigation_bar_curved/blob/master/screenshots/preview.gif?raw=true" alt="drawing" width="320"  /> | <img src="https://github.com/RahilBadshah/flutter_navigation_bar_curved/blob/master/screenshots/screenshot.jpg?raw=true" alt="drawing" width="320"/>

### Add dependency

```yaml
dependencies:
  curved_navigation_bar: ^0.2.11 #latest version
```

### How to use

```dart
Scaffold(
  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.greenAccent,
    items: <Widget>[
      Icon(Icons.add_location, size: 30),
      Icon(Icons.alarm, size: 30),
      Icon(Icons.dashboard, size: 30),
      Icon(Icons.supervised_user_circle, size: 30),
      Icon(Icons.cloud_upload, size: 30),
    ],
    onTap: (index) {
      //Handle button tap
    },
  ),
  body: Container(color: Colors.greenAccent),
)
```
