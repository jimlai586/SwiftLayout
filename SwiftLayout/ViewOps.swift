//
//  ViewOps.swift
//  Sg1
//
//  Created by Raistlin on 2017/12/11.
//  Copyright © 2017年 jimlai. All rights reserved.
//

import Foundation


enum ViewOps {
    case title(String)
    case titleColor(UIColor)
    case text(String)
    case textColor(UIColor)
    case textAlign(NSTextAlignment)
    case bdw(CGFloat)
    case bdc(UIColor)
    case bgc(UIColor)
    case r

    func apply(_ view: UIView) {
        switch self {
        case .title(let s):
            if let u = view as? UIButton {
                u.setTitle(s, for: .normal)
            }
        case .titleColor(let c):
            if let u = view as? UIButton {
                u.setTitleColor(c, for: .normal)
            }
        case .text(let s):
            if let u = view as? UILabel {
                u.text = s
            }
        case .textColor(let c):
            if let u = view as? UILabel {
                u.textColor = c
            }
        case .textAlign(let a):
            if let u = view as? UILabel {
                u.textAlignment = a
            }
        case .bdw(let u):
            view.layer.borderWidth = u
        case .bdc(let c):
            view.layer.borderColor = c.cgColor
        case .bgc(let c):
            view.backgroundColor = c
        case .r:
            view.layer.cornerRadius = 5.0
            
        }
    }
}
