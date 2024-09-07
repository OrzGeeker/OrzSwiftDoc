// The Swift Programming Language
// https://docs.swift.org/swift-book
// https://swiftlang.github.io/swift-docc-plugin/documentation/swiftdoccplugin/

/// 符号简要描述
///
/// 段落1
/// 段落1内容：空行把注释内容分隔成不同的段落
///
/// 段落2
/// 段落2内容
///
/// - Parameters:
///     - arg1: 参数1描述
///     - arg2: 参数2描述
///
/// - Returns: 返回值描述。DocC仅支持一个Returns段落
///
/// - Throws: 异常情况描述。 DocC仅支持一个Throws段落
public func singleLineCommentDemo(_ arg1: String, arg2: String) throws -> Int {
    return 0
}

/**
 符号简要描述
 
 段落1
 段落1内容：空行把注释内容分隔成不同的段落
 
 段落2
 段落2内容
 
 - Parameter arg1: 参数1描述
 - Parameter arg2: 参数2描述
 
 - Returns: 返回值描述。DocC仅支持一个Returns段落
 
 - Throws: 异常情况描述。 DocC仅支持一个Throws段落
 */
public func multiLineCommentDemo(_ arg1: String, arg2: String) throws -> Int {
    return 0
}


/// 颜色枚举
///
/// 用来表示交通灯的三种颜色
public enum TrafficLightColor {
    /// 红灯
    case red
    /// 绿灯
    case green
    /// 黄灯
    case yellow
}

public struct Color: Sendable {
    public var red, green, blue: Double
}

extension Color {
    public static let red    = Color(red: 1.0, green: 0.0, blue: 0.0)
    public static let purple = Color(red: 0.5, green: 0.0, blue: 0.5)
    public static let blue   = Color(red: 0.0, green: 0.0, blue: 1.0)
}


import Foundation

/// Person 信息类，可在 Swift <-> ObjC 之间互相使用
@objc(OCPerson) public class SwiftPerson: NSObject {
    
    /// 人名
    let name: String
    
    /// 年龄
    let age: Int
    
    /// 身高
    let height: Float
    
    /// 初始化方法
    /// - Parameters:
    ///   - name: 名字
    ///   - age: 年龄
    ///   - height: 身高
    @objc public init(name: String, age: Int, height: Float) {
        self.name = name
        self.age = age
        self.height = height
    }
}
