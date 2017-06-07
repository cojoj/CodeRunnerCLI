/**
 *  CodeRunnerClI
 *  Copyright (c) Mateusz Zając 2017
 *  Licensed under the MIT license. See LICENSE file.
 */

import Foundation
import XCTest
import Files
import Require

fileprivate let testFolderName: String = "CodeRunnerCLITests"

extension XCTestCase {
    func createTestFolder() -> Folder {
        let parentFolder = (try? Folder.home.createSubfolderIfNeeded(withName: testFolderName)).require(hint: "Could not set up '\(testFolderName)' root folder")
        
        try! parentFolder.empty(includeHidden: true)
        return parentFolder
    }
    
    func removeTestFolder(_ folder: Folder) {
        try! folder.delete()
    }
}
