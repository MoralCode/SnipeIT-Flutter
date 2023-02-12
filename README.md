# SnipeIT Flutter API Wrapper


This is a library that intends to make it easier to interact with the [SnipeIT API](https://snipe-it.readme.io/reference/api-overview).




## Usage

```dart
import 'package:snipeit/snipeit.dart';

SnipeIT snipeitapi = SnipeIT(
	url:"https://develop.snipeitapp.com",
	accessToken: "eyJ0eXAiOiJK......."
);

//get locations
List<Location> = locations = await snipeitapi.getLocations()

```

## Building the library for development
This library relies on some generated code to perform json serialization. This code can be generated with `dart run build_runner build`

