/**
 *  CodeRunnerClI
 *  Copyright (c) Mateusz Zając 2017
 *  Licensed under the MIT license. See LICENSE file.
 */

import XCTest
import Files
@testable import CodeRunnerCore

@available(OSX 10.11, *)
class CreationTests: XCTestCase {
    
    fileprivate var testFolder: Folder!
    fileprivate let fileSystem = FileSystem()
    
    override func setUp() {
        super.setUp()
        testFolder = createTestFolder()
        FileManager.default.changeCurrentDirectoryPath(testFolder.path)
    }
    
    override func tearDown() {
        removeTestFolder(testFolder)
        super.tearDown()
    }
    
    func testCreatingFileWithExtension() throws {
        let fileName = "TestFile.md"
        let expectedPath = testFolder.path + fileName
        let createdFilePath = try fileSystem.createItem(at: fileName)
        
        XCTAssertNotNil(createdFilePath)
        XCTAssert(testFolder.containsFile(named: fileName))
        XCTAssert(createdFilePath == expectedPath)
    }
    
}
