# Flutter Glide Transformations

A lightweight pure Flutter image transformation package inspired by Glide.

Apply multiple image transformations like blur, grayscale, and rounded corners easily — without any native code.

---

## ✨ Features

- 🌫 Blur effect
- ⚫ Grayscale filter
- 🔵 Rounded corners
- 📐 Width & height support
- 🖼 BoxFit support

---


### Preview
<p>
  <img src="https://github.com/user-attachments/assets/e32d7a11-00f6-450f-a96d-4eb80b91ff43" width="200"/>
</p>


## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
flutter_glide_transformations:
  path: ../
```
then run :
``` 
flutter pub get
```
---
### 🚀 Usage

Import the package:
```
import 'package:flutter_glide_transformations/flutter_glide_transformations.dart';
```
---
### 🔹 Basic Example
```
GlideImage(
  image:Image.asset("assets/images/Card.png").image,
)
```

---

### 🔹 With Transformations
```
GlideImage(
  image: Image.asset("assets/images/Card.png").image,
  blur: 5,
  borderRadius: 20,
  grayscale: true,
  width: 250,
  height: 250,
  fit: BoxFit.cover,
)
```
---

### 🧠 How It Works
### This package internally uses:

- ImageFiltered → Blur effect

- ColorFiltered → Grayscale

- ClipRRect → Rounded corners

- Standard Flutter Image widget

---

### 📁 Project Structure
```
lib/
 ├── flutter_glide_transformations.dart
 └── src/
      └── glide_image.dart
```      
---
### GlideImage Parameters
Parameter	Type	Description

| Parameter      | Type          | Description                |
| -------------- | ------------- | -------------------------- |
| `image`        | ImageProvider | Required image source      |
| `blur`         | double        | Blur intensity (default 0) |
| `borderRadius` | double        | Rounded corner radius      |
| `grayscale`    | bool          | Apply grayscale filter     |
| `width`        | double?       | Image width                |
| `height`       | double?       | Image height               |
| `fit`          | BoxFit?       | BoxFit behavior            |

---

### 📄 LICENSE (MIT)

MIT License
```
Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Glide Transformations library and associated documentation
files (the "Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons to whom
the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
```
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
