![LabeSwitch](https://github.com/Tobaloidee/LabelSwitch/blob/master/logo/logotype-a-05.png)

[![CI Status](https://img.shields.io/travis/cristipetra/CPLabelSwitch.svg?style=flat)](https://travis-ci.org/cristipetra/CPLabelSwitch)
[![Version](https://img.shields.io/cocoapods/v/CPLabelSwitch.svg?style=flat)](https://cocoapods.org/pods/CPLabelSwitch)
[![License](https://img.shields.io/cocoapods/l/CPLabelSwitch.svg?style=flat)](https://cocoapods.org/pods/CPLabelSwitch)
[![Platform](https://img.shields.io/cocoapods/p/CPLabelSwitch.svg?style=flat)](https://cocoapods.org/pods/CPLabelSwitch)


## Installation

LabelSwitch is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CPLabelSwitch'
```

## Usage

You can create the view through code or InterfaceBuilder

```swift
let ls = LabelSwitchConfig(text: "Text1",
textColor: .white,
font: UIFont.boldSystemFont(ofSize: 15),
backgroundColor: .red)

let rs = LabelSwitchConfig(text: "Text2",
textColor: .white,
font: UIFont.boldSystemFont(ofSize: 20),
backgroundColor: .green)

// Set the default state of the switch,
let labelSwitch = LabelSwitch(center: .zero, leftConfig: ls, rightConfig: rs)

// Set the appearance of the circle button
labelSwitch.circleShadow = false
labelSwitch.circleColor = .red

// Make switch be triggered by tapping on any position in the switch
labelSwitch.fullSizeTapEnabled = true

// Set the delegate to inform when the switch was triggered
labelSwitch.delegate = self

extension ViewController: LabelSwitchDelegate {
func switchChangToState(_ state: LabelSwitchState) {
switch state {
case .L: print("circle on left")
case .R: print("circle on right")
}
}
}

```

you can also make the switch background to be image or gradient color
```
// gradient color
init(text: String, textColor: UIColor, font: UIFont, gradientColors: [CGColor], startPoint: CGPoint, endPoint: CGPoint)

// image
init(text: String, textColor: UIColor, font: UIFont, image: UIImage?)
```

## Author

artep, cristian@artep.eu

## License

CPLabelSwitch is available under the MIT license. See the LICENSE file for more info.
