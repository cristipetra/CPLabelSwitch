//
//  LabelSwitchBackView.swift
//  CPLabelSwitch
//
//  Created by Cristian Petra on 06/12/2018.
//

import Foundation
import UIKit

class LabelSwitchBackView: UIView {
    var gradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.isHidden = true
        return layer
    }()
    
    var imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.isHidden = true
        return view
    }()
    
    override var frame: CGRect {
        didSet {
            gradientLayer.frame = bounds
            imageView.frame = bounds
        }
    }
    
    init() {
        super.init(frame: .zero)
        addSubview(imageView)
        layer.addSublayer(gradientLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
