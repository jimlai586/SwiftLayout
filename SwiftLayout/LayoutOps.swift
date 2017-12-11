//
//  Ops.swift
//  Sg1
//
//  Created by Raistlin on 2017/12/11.
//  Copyright © 2017年 jimlai. All rights reserved.
//

import Foundation
import PureLayout

typealias ViewModifier = (UIView) -> ()

enum LayoutOps {
    case le(CGFloat, UIView?)
    case tr(CGFloat, UIView?)
    case top(CGFloat, UIView?)
    case bot(CGFloat, UIView?)
    case cx(UIView?)
    case cy(UIView?)
    case wh(CGFloat, CGFloat)
    case w(CGFloat)
    case h(CGFloat)
    case custom(ViewModifier)
    func apply(_ view: UIView) {
        switch self {
        case .le(let u, let v):
            if let v = v {
                view.autoPinEdge(.leading, to: .trailing, of: v, withOffset: u)
            }
            else {
                view.autoPinEdge(toSuperviewEdge: .leading, withInset: u)
            }
        case .tr(let u, let v):
            if let v = v {
                view.autoPinEdge(.trailing, to: .leading, of: v, withOffset: u)
            }
            else {
                view.autoPinEdge(toSuperviewEdge: .trailing, withInset: u)
            }
        case .top(let u, let v):
            if let v = v {
                view.autoPinEdge(.top, to: .bottom, of: v, withOffset: u)
            }
            else {
                view.autoPinEdge(toSuperviewEdge: .top, withInset: u)
            }
        case .bot(let u, let v):
            if let v = v {
                view.autoPinEdge(.bottom, to: .top, of: v, withOffset: u)
            }
            else {
                view.autoPinEdge(toSuperviewEdge: .bottom, withInset: u)
            }
        case .cx(let v):
            if let v = v {
                view.autoAlignAxis(.vertical, toSameAxisOf: v)
            }
            else {
                view.autoAlignAxis(toSuperviewAxis: .vertical)
            }
        case .cy(let v):
            if let v = v {
                view.autoAlignAxis(.horizontal, toSameAxisOf: v)
            }
            else {
                view.autoAlignAxis(toSuperviewAxis: .horizontal)
            }
        case .wh(let w, let h):
            view.autoSetDimensions(to: CGSize(width: w, height: h))
            
        case .w(let w):
            view.autoSetDimension(.width, toSize: w)
            
        case .h(let h):
            view.autoSetDimension(.height, toSize: h)
            
        case .custom(let f):
            f(view)
            
        }
        
    }
}
