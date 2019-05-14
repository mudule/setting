//
//  SettingController.swift
//  Setting
//
//  Created by 盘国权 on 2019/5/14.
//  Copyright © 2019 pgq. All rights reserved.
//

import UIKit
import PQTools

open class SettingController: UIViewController {

    open override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = PQButton(frame: CGRect(origin: .zero, size: CGSize(width: 120, height: 40)), title: "点我", titleColor: .green)
        view.addSubview(btn)
        
        btn.center = view.center
        
        btn.buttonClick { (_) in
            UIAlertView(title: "setting", message: "点我飒", delegate: nil, cancelButtonTitle: "取消")
            .show()
        }
    }
}
