<!-- 
BSD 3-Clause License
Copyright © 2022, GM Consult Pty Ltd
All rights reserved. 
-->

[![GM Consult Pty Ltd](https://raw.githubusercontent.com/GM-Consult-Pty-Ltd/really_bored/main/dev/images/package_header.png?raw=true "GM Consult Pty Ltd")](https://github.com/GM-Consult-Pty-Ltd)
## **A simple implementation of *The Bored API* .**

This is a simple DART implementation of the [Bored API](https://www.boredapi.com/) we built to test our [core dart libraries](https://pub.dev/packages/gmconsult_dart_core). 

It is by no means intended as a full API implementation.

*Contents:*
- [Overview](#overview)
- [Usage](#usage)
- [API](#api)
- [Definitions](#definitions)
- [References](#references)
- [Issues](#issues)

## Overview

The [Bored API](https://www.boredapi.com/) helps you find things to do when you're bored! There are fields like the number of participants, activity type, and more that help you narrow down your results (*unashamedly plagiarized from the Bored Api page on the InterWeb*).

If you don't know what `bored` means (or you are, indeed, bored), check out the [definition of bored](#definitions)!

We provide a few static methods that asynchronously returns an activity from the API based on parameters, or just go for Bored.random.

(*[back to top](#)*)

## Usage

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  really_bored: <latest_version>
```

In your code file add the following import:

```dart
import 'package:really_bored/really_bored.dart';
```

Just go for Bored.random.

```dart
  activity = await Bored.random;
```

(*[back to top](#)*)

## API

Full [API documentation](https://pub.dev/documentation/really_bored/latest/), sort of...


(*[back to top](#)*)

## Definitions

* `bored` - feeling weary and impatient because one is unoccupied or lacks interest in one's current activity (Oxford English Dictionary).

(*[back to top](#)*)

## References

* [Bored API](https://www.boredapi.com/)

(*[back to top](#)*)

## Issues

We got bored (sic) testing this. If you find a bug please fill an [issue](https://github.com/GM-Consult-Pty-Ltd/really_bored/issues).  

(*[back to top](#)*)


