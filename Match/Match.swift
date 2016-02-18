//
//  Match.swift
//  Match
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

//public protocol SelfMatchable
//{
//    func ~~ (lhs: Self, rhs: Self) -> Bool
//}
//
//
//public protocol Matchable
//{
//    func ~~ <Unknown>(lhs: Self, rhs: Unknown) -> Bool
//    func !~ <Unknown>(lhs: Self, rhs: Unknown) -> Bool
//}


/// Matches operator, it may be declared for various entities that can be said to "match" in some way
infix operator ~~ { associativity left precedence 160 }

/// The inverse of the _matches operator_
infix operator !~ { associativity left precedence 160 }

//public func !~ <M:Matchable, Unknown> (lhs: M, rhs: Unknown) -> Bool
//{
//    return !(lhs ~~ rhs)
//}

/// Default matches to equals
public func ~~ <E:Equatable> (lhs: E, rhs: E) -> Bool
{
    return lhs == rhs
}

public func !~ <E:Equatable> (lhs: E, rhs: E) -> Bool
{
    return lhs != rhs
}


/// Example matching functions

public func ~~ (string: String, any: Any) -> Bool
{
    return string == "\(any)"
}

public func !~ (string: String, any: Any) -> Bool
{
    return !(string ~~ any)
}

public func ~~ (string: String, number: Int) -> Bool
{
    return string == String(number)
}

public func ~~ <CSC: CustomStringConvertible>(string: String, convertible: CSC) -> Bool
{
    return string == "\(convertible)"
}


