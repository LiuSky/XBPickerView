//
//  ViewController.swift
//  XBPickerView
//
//  Created by LiuSky on 03/10/2020.
//  Copyright (c) 2020 LiuSky. All rights reserved.
//

import UIKit
import XBPickerView

/// MARK - 演示控制器
final class ViewController: UIViewController {

    /// 选择器
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
    
    /// 数据源
    private var dataSource: [(key: Int, value: String)] {
        var temHeight = [Int: String]()
        temHeight[0] = "不限"
        Array(stride(from: 150, to: 275, by: 5))
            .forEach {
                temHeight[$0] = "\($0)"
        }
        return temHeight.sorted { $0.0 < $1.0 }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Demo"
        configView()
    }
    
    /// 配置视图
    private func configView() {
        view.addSubview(pickerView)
        NSLayoutConstraint.activate([
            pickerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pickerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            pickerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pickerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

/// MARK - UIPickerViewDataSource
extension ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
}

/// MARK - UIPickerViewDelegate
extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 300
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 40
    }

    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let cell = PickerCommonView()
        cell.labelTitle.attributedText = NSMutableAttributedString(string: dataSource[row].value)
        return cell
    }
}

