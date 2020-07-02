# XBPickerView

[![CI Status](https://img.shields.io/travis/LiuSky/XBPickerView.svg?style=flat)](https://travis-ci.org/LiuSky/XBPickerView)
[![Version](https://img.shields.io/cocoapods/v/XBPickerView.svg?style=flat)](https://cocoapods.org/pods/XBPickerView)
[![License](https://img.shields.io/cocoapods/l/XBPickerView.svg?style=flat)](https://cocoapods.org/pods/XBPickerView)
[![Platform](https://img.shields.io/cocoapods/p/XBPickerView.svg?style=flat)](https://cocoapods.org/pods/XBPickerView)

## Requirements:
- **iOS** 9.0+
- Xcode 10.0+
- Swift 5.0+

## Demo Figure
<p align="center">
<img src="https://github.com/LiuSky/XBPickerView/blob/master/demo.png?raw=true" title="演示图">
</p>


## Installation Cocoapods
<pre><code class="ruby language-ruby">pod 'XBPickerView', '~> 2.0.1'</code></pre>

## Use

```swift
    private lazy var pickerView: PickerView = {
        $0.delegate = self
        $0.dataSource = self
        $0.unitAttributedText = NSAttributedString(string: "厘米", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15),
        NSAttributedString.Key.foregroundColor: UIColor.black,
        NSAttributedString.Key.backgroundColor: UIColor.clear])
        $0.unitLabelLeftConstraint?.constant = 50
        $0.selectedAttributes = [.font: UIFont.systemFont(ofSize: 30), .foregroundColor: UIColor.red]
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(PickerView())
```


## License
XBPickerView is released under an MIT license. See [LICENSE](LICENSE) for more information.
