## KitUI

 KitUI written in Swift
 
<p align="center">
 <img src="/screenshots/logo.png" align="center"  />
</p>

## Library
If you want to write your view in the code, UIKit is so hard and complex. SwiftUi is cool but you can't use it for old projects.
KitUI is so easy to use. you can create your View in one second :). KitUI is so suitable for old projects.
KitUI is so easier than SnapKit :)

for example:

<p>
 <img src="/screenshots/screenshot2.png" align="center" width="400"  max-width="80%"  />
 <img src="/screenshots/screenshot1.png" align="center" width="400"  max-width="80%"  />

</p>

## Features

- [x] Support AutoLayout and Constraints
- [x] UIView
- [x] UIButton
- [x] UIImageView
- [x] UILabel
- [x] UIStackView
- [ ] ListView
- [ ] GridView


## Install

open your terminal and enter pod install

```
pod 'KitUI'
```

## How to Use

```swift
import KitUI

class MyViewController: UIViewController {

    var vwMain = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        vwMain
            .add(base: self.view)
            .setBackground(color: .purple)
            .setCorner(radius: 16)
            .width(constant: 200)
            .height(constant: 80)
            .center(to: self.view)
            .make()
    }

}
```

you can set attribute for your view and set constraints and add it into your SuperView :) that's it.
