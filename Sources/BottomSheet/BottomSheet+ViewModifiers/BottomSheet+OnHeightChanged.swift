//
//  BottomSheet+OnHeightChanged.swift
//
//  Created by Jukka Hietanen.
//  Copyright © 2022 Lucas Zischka. All rights reserved.
//

import Foundation

public extension BottomSheet {
    
    /// A action that will be performed when the BottomSheet height changes.
    ///
    /// Please note that this function will not be called with 0 value when bottom sheet is dismissed. It's only called when bottom sheet is visible.
    ///
    /// - Parameters:
    ///   - perform: The action to perform when the BottomSheet height changes.
    ///   The `perform` closure’s parametera contain the current BottomSheet height and boolean value indicating if sheet is being dragged (true if dragged).
    ///
    /// - Returns: A BottomSheet with a custom on dismiss action.
    func onHeightChanged(_ perform: @escaping (CGFloat, Bool) -> Void) -> BottomSheet {
        self.configuration.onHeightChanged = perform
        return self
    }
}
