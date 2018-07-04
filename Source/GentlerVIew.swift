//
//  GentlerVIew.swift
//  Gentler
//
//  Created by Vladislav on 04.07.2018.
//

import Foundation
import UIKit



open class GentlerView:UIView {
    
    var gradient:CAGradientLayer = CAGradientLayer()
    
    var currentGradient = 0
    
    
    fileprivate var startPoint:CGPoint = Pointer.top_right.value
    fileprivate var endPoint:CGPoint = Pointer.bottom_left.value
    
    
    
    open var startGentlePoint:Pointer = Pointer.top_right {
        didSet {
            startPoint = startGentlePoint.value
        }
    }
    
    open var animationDuration:TimeInterval = 3.0
    
    
    open var endGentlePoint:Pointer = Pointer.bottom_left {
        didSet {
            endPoint = endGentlePoint.value
        }
    }
    
    
    fileprivate var colors:[UIColor] = [UIColor.red,UIColor.blue,UIColor.gray,UIColor.green]
    
    open func addColor(_ color:UIColor) {
        colors.append(color)
    }
    
    open func setColors(_ colors:[UIColor]) {
        self.colors = colors
    }
    
    
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    open override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
    
    open func startAnimate() {
        setupFrame()
        
        animate()
    }
    
    fileprivate func setupFrame() {
        gradient.frame = bounds
        gradient.startPoint = self.startPoint
        gradient.endPoint = self.endPoint
        gradient.colors = currentOfSetGradient()
        gradient.drawsAsynchronously = true  //????
        layer.insertSublayer(gradient, at: 0)
    }
    
    func currentOfSetGradient() -> [CGColor] {
        return [colors[currentGradient % colors.count].cgColor,colors[(currentGradient+1) % colors.count].cgColor]
    }
    
    fileprivate func animate() {
        currentGradient += 1
        let animation = CABasicAnimation(keyPath: "colors")
        animation.toValue = currentOfSetGradient()
        animation.delegate = self
        animation.isRemovedOnCompletion = false  // ??
        animation.fillMode = kCAFillModeForwards  // ??
        animation.duration = animationDuration
        gradient.add(animation, forKey: nil)
    }
    
    
    
}

extension GentlerView:CAAnimationDelegate {
    public func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        guard flag else { return }
        currentGradient += 1
        animate()
    }
}
