//
//  EdgeInsets.swift
//  Gooey
//
//  Created by Ryan Wachowski on 3/14/18.
//  Copyright © 2018 Duet Health. All rights reserved.
//

import Foundation

/// An inset value parameterized by its affected axes.
public struct EdgeInsets<A: LayoutAxis> {

    public static var zero: EdgeInsets<A> {
        return EdgeInsets<A>(uiInsets: .zero)
    }

    let uiInsets: UIEdgeInsets

    @available(iOS 11.0, *)
    var nsInsets: NSDirectionalEdgeInsets {
        return NSDirectionalEdgeInsets(top: uiInsets.top, leading: uiInsets.left, bottom: uiInsets.bottom, trailing: uiInsets.right)
    }

}

public extension EdgeInsets where A == HorizontalAxis {

    public static func both(_ value: CGFloat) -> EdgeInsets<HorizontalAxis> {
        return self.init(uiInsets: UIEdgeInsets(top: 0, left: value, bottom: 0, right: value))
    }

    public static func at(left: CGFloat = 0, right: CGFloat = 0) -> EdgeInsets<HorizontalAxis> {
        return self.init(uiInsets: UIEdgeInsets(top: 0, left: left, bottom: 0, right: right))
    }

    public var left: CGFloat {
        return uiInsets.left
    }

    public var right: CGFloat {
        return uiInsets.right
    }

}

public extension EdgeInsets where A == VerticalAxis {

    public static func both(_ value: CGFloat) -> EdgeInsets<VerticalAxis> {
        return self.init(uiInsets: UIEdgeInsets(top: value, left: 0, bottom: value, right: 0))
    }

    public static func at(top: CGFloat = 0, bottom: CGFloat = 0) -> EdgeInsets<VerticalAxis> {
        return self.init(uiInsets: UIEdgeInsets(top: top, left: 0, bottom: bottom, right: 0))
    }

    public var top: CGFloat {
        return uiInsets.top
    }

    public var bottom: CGFloat {
        return uiInsets.bottom
    }

}

public extension EdgeInsets where A == Bounds {

    public static func all(_ value: CGFloat) -> EdgeInsets<Bounds> {
        return self.init(uiInsets: UIEdgeInsets(top: value, left: value, bottom: value, right: value))
    }

    public static func at(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> EdgeInsets<Bounds> {
        return self.init(uiInsets: UIEdgeInsets(top: top, left: left, bottom: bottom, right: right))
    }

    public var left: CGFloat {
        return uiInsets.left
    }

    public var right: CGFloat {
        return uiInsets.right
    }

    public var top: CGFloat {
        return uiInsets.top
    }

    public var bottom: CGFloat {
        return uiInsets.bottom
    }

}