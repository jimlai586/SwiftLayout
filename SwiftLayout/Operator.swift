//
//  Operator.swift
//  Sg1
//
//  Created by Raistlin on 2017/12/11.
//  Copyright © 2017年 jimlai. All rights reserved.
//

import Foundation

infix operator |>: AdditionPrecedence

@discardableResult
func |> (_ view: UIView, _ op: LayoutOps) -> UIView {
    op.apply(view)
    return view
}


@discardableResult
func |> (_ view: UIView, _ ops: [LayoutOps]) -> UIView {
    ops.forEach {$0.apply(view)}
    return view
}

@discardableResult
func |> (_ view: UIView, _ op: ViewOps) -> UIView {
    op.apply(view)
    return view
}

@discardableResult
func |> (_ view: UIView, _ ops: [ViewOps]) -> UIView {
    ops.forEach {$0.apply(view)}
    return view
}




infix operator --: MultiplicationPrecedence

func -- (_ op1: LayoutOps, _ op2: LayoutOps) -> [LayoutOps] {
    return [op1, op2]
}

func -- (_ ops: [LayoutOps], _ op: LayoutOps) -> [LayoutOps] {
    return ops + [op]
}

func -- (_ subview: UIView, _ superview: UIView) -> UIView {
    superview.addSubview(subview)
    return subview
}

func -- (_ op1: ViewOps, _ op2: ViewOps) -> [ViewOps] {
    return [op1, op2]
}

func -- (_ ops: [ViewOps], _ op: ViewOps) -> [ViewOps] {
    return ops + [op]
}
