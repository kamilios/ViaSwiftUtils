//
//  MutableCollection+Shuffle.swift
//  ViaSwiftUtils
//
//  Copyright 2017 Viacom, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import Foundation

public extension MutableCollection where Index == Int {

    /// implements [FisherYates](https://en.wikipedia.org/wiki/Fisher–Yates_shuffle) to shuffle elements in place
    mutating func shuffleInPlace() {
        if count <= 1 { return }
        
        for index in indices.dropLast() {
            let jValue = (index..<endIndex).arc4random
            if index == jValue { continue }
            self.swapAt(index, jValue)
        }
    }
}
