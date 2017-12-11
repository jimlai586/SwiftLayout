//
//  PreView.swift
//  Sg1
//
//  Created by Raistlin on 2017/12/11.
//  Copyright © 2017年 jimlai. All rights reserved.
//

import UIKit

@IBDesignable
class Preview: SLView {
    
    let b1 = UIButton()
    let b2 = UIButton()
    let label1 = UILabel()
    

    override func setup() {
        b1 -- v |> .top(20, nil) -- .le(20, nil) |> .title("button 1") -- .titleColor(.black)
        b2 -- v |> .le(20, b1) -- .cy(nil) |> .title("button 2") -- .titleColor(.blue) -- .r -- .bgc(.cyan)
        label1 -- v |> .cx(nil) -- .cy(nil) -- .wh(300, 200) |> .text("label1") -- .textColor(.red) -- .bdw(5.0) -- .bdc(.brown) -- .bgc(.gray) -- .textAlign(.center)
    }

}
