//
//  ViewExtension.swift
//  Sg1
//
//  Created by Raistlin on 2017/12/11.
//  Copyright © 2017年 jimlai. All rights reserved.
//

import Foundation


protocol SLViewAid: class {
    var v: UIView {get}
    func setup()
}

extension SLViewAid where Self: UIView {
    var v: UIView {
        return self
    }
}

class SLView: UIView, SLViewAid {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        
    }
}



