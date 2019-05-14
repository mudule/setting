//
//  LoginController.swift
//  LoginMudule
//
//  Created by 盘国权 on 2019/5/13.
//  Copyright © 2019 pgq. All rights reserved.
//

import UIKit
import SnapKit

open class SettingController: UIViewController {
    
    public typealias ButtonTapClosure = (UIButton) -> ()
    
    open var loginBtnTap: ButtonTapClosure?

    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let btn = UIButton()
        btn.backgroundColor = .orange
        
        btn.addTarget(self, action: #selector(btnClick(_:)), for: .touchUpInside)
        btn.setTitle("设置", for: .normal)
        
        view.addSubview(btn)
        
        btn.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(44)
        }
    }
    
    @objc private func btnClick(_ button: UIButton) {
        loginBtnTap?(button)
    }
}


