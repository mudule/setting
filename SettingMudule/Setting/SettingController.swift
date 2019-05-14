//
//  SettingController.swift
//  Setting
//
//  Created by 盘国权 on 2019/5/14.
//  Copyright © 2019 pgq. All rights reserved.
//

import UIKit
import SnapKit

open class SettingController: UIViewController {

    public typealias LoginButtonTapClosure = (UIButton) -> ()
    public var buttonTap: LoginButtonTapClosure?
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        let btn = UIButton(type: .system)
        btn.backgroundColor = .orange
        btn.setTitle("登录", for: .normal)
        btn.addTarget(self, action: #selector(buttonPress(_:)), for: .touchUpInside)
        
        view.addSubview(btn)
        
        btn.snp.makeConstraints { (make) in
            make.left.right.centerY.equalToSuperview()
            make.height.equalTo(44)
        }
        
    }
    
    @objc private func buttonPress(_ button: UIButton) {
        buttonTap?(button)
    }

}
