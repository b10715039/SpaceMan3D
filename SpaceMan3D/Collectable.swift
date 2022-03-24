//
//  Collectable.swift
//  SpaceMan3D
//
//  Created by mac12 on 2022/3/24.
//

import Foundation
import SceneKit

class Collectable {
    class func pyramidNode() -> SCNNode {
        let pyramid = SCNPyramid(width: 31.6, height: 20, length: 30)
        let pyramidNode = SCNNode(geometry: pyramid)
        pyramidNode.name = "pyramid"
        let position = SCNVector3Make(30, 0, -40)
        pyramidNode.position = position
        pyramidNode.geometry?.firstMaterial?.diffuse.contents = "boxSide3"
        pyramidNode.geometry?.firstMaterial?.shininess = 1.0
        return pyramidNode
    }
    
    class func sphereNode() -> SCNNode {
        let sphere = SCNSphere(radius: 30.0)
        let sphereNode = SCNNode(geometry: sphere)
        sphere.name = "sphere"
        let position = SCNVector3Make(0, 40, 100)
        sphereNode.position = position
        sphereNode.geometry?.firstMaterial?.diffuse.contents = "earthDiffuse"
        let action = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 10, z: 0, duration: 5))
        sphereNode.runAction(action)
        return sphereNode
    }
}
