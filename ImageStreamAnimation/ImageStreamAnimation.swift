//
//  ImageStreamAnimation.swift
//  ImageStreamAnimation
//
//  Created by mohamed hashem on 9/23/20.
//  Copyright © 2020 mohamed hashem. All rights reserved.
//

import UIKit

open class ImageStreamAnimation {

    public init(itHorizontal: Bool, drawingIn: UIView, image: UIImage ) {
        handleTap(itHorizontal: itHorizontal, view: drawingIn, image: image)
    }

    private func handleTap(itHorizontal: Bool, view: UIView, image: UIImage ) {
        (0...10).forEach { _ in
            generationViewAnimation(itHorizontal: itHorizontal, view: view, image: image)
        }
    }

   private func generationViewAnimation(itHorizontal: Bool, view: UIView, image: UIImage ) {
        let imageForCurve = UIImageView(image: image)
        let dimension = 20 + drand48() * 10
        imageForCurve.frame = CGRect(x: 0, y: 0, width: dimension, height: dimension)

        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.path = faceBookLiveStreamAnimation(itHorizontal: itHorizontal, view: view).cgPath
        animation.duration = 4 + drand48() * 3
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.timingFunctions = .init(arrayLiteral: .init(name: .easeOut))

        imageForCurve.layer.add(animation, forKey: nil)
        view.addSubview(imageForCurve)
    }

  private  func faceBookLiveStreamAnimation(itHorizontal: Bool, view: UIView) ->  UIBezierPath {
        let path = UIBezierPath()

        if itHorizontal {
            path.move(to: CGPoint(x: 0, y: 200))

              let endPoint = CGPoint(x: 400, y: 200)

              let randomY = 200 + drand48() * 300
              let cp1 = CGPoint(x: 100, y: 100 - randomY)
              let cp2 = CGPoint(x: 200, y: 300 + randomY)
              path.addCurve(to: endPoint, controlPoint1: cp1, controlPoint2: cp2)

              return path
        } else {
            path.move(to: CGPoint(x: view.frame.width / 2, y: view.frame.height))

            let endPoint = CGPoint(x: view.frame.width / 2, y: -200)

            let randomX = 200 + drand48() * 300
            let cp1 = CGPoint(x: 100 - randomX, y: Double(view.frame.height) / 2 + 100)
            let cp2 = CGPoint(x: 100 + randomX, y: Double(view.frame.height) / 2 - 100)
            path.addCurve(to: endPoint, controlPoint1: cp1, controlPoint2: cp2)
            return path
        }
    }

}
