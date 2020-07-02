//
//  PickerCommonView.swift
//  XBPickerView
//
//  Created by xiaobin liu on 2020/7/2.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit


/// MARK - PickerCommonView
open class PickerCommonView: UIView {

    /// 标签标题
    public private(set) lazy var labelTitle: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textAlignment = .center
        return $0
    }(UILabel())
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(labelTitle)
        NSLayoutConstraint.activate([
            labelTitle.leadingAnchor.constraint(equalTo: leadingAnchor),
            labelTitle.trailingAnchor.constraint(equalTo: trailingAnchor),
            labelTitle.topAnchor.constraint(equalTo: topAnchor),
            labelTitle.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
