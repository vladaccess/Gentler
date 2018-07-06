# Gentler
Animation of gradient

[![Version](https://img.shields.io/cocoapods/v/Gentler.svg?style=flat)](https://cocoapods.org/pods/Gentler)
[![License](https://img.shields.io/cocoapods/l/Gentler.svg?style=flat)](https://cocoapods.org/pods/Gentler)
[![Platform](https://img.shields.io/cocoapods/p/Gentler.svg?style=flat)](https://cocoapods.org/pods/Gentler)

## Example
```swift
override func viewDidLoad() {
  super.viewDidLoad()
  setUpLbl()
  let gentler = GentlerView()
  gentler.frame = view.bounds
  gentler.animationDuration = 3
  gentler.startGentlePoint = .top
  gentler.endGentlePoint = .bottom
  gentler.setColors([UIColor(red: 156/255, green: 39/255, blue: 176/255, alpha: 1.0),
                   UIColor(red: 255/255, green: 64/255, blue: 129/255, alpha: 1.0),
                   UIColor(red: 123/255, green: 31/255, blue: 162/255, alpha: 1.0),
                   UIColor(red: 32/255, green: 76/255, blue: 255/255, alpha: 1.0),
                   UIColor(red: 32/255, green: 158/255, blue: 255/255, alpha: 1.0),
                   UIColor(red: 90/255, green: 120/255, blue: 127/255, alpha: 1.0),
                   UIColor(red: 58/255, green: 255/255, blue: 217/255, alpha: 1.0)])
  gentler.startAnimate()
  self.view.insertSubview(gentler, at: 0)
}
```

## Requirements
Written in Swift 4. iOS 8.0+ Required

## Installation

Gentler is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Gentler'
```

## Author

vladaccess, vladaccess@outlook.com

## License

Gentler is available under the MIT license. See the LICENSE file for more info.
