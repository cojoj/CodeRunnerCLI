//
//  CodeRunnerCLI
//
//  Copyright (c) Mateusz Zając 2017
//  Licensed under the MIT license. See LICENSE file.
//

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
    
    // MARK: File creation
    
    func testCreatingFileWithExtension() throws {
        let fileName = "TestFile.md"
        let expectedPath = testFolder.path + fileName
        let createdFilePath = try fileSystem.createItem(at: fileName)
        
        XCTAssertNotNil(createdFilePath)
        XCTAssert(testFolder.containsFile(named: fileName))
        XCTAssert(createdFilePath == expectedPath)
    }
    
    func testCreatingFileWithoutExtension() throws {
        let fileName = "TestFile"
        let expectedPath = testFolder.path + fileName
        let createdFilePath = try fileSystem.createItem(at: fileName)
        
        XCTAssertNotNil(createdFilePath)
        XCTAssert(testFolder.containsFile(named: fileName))
        XCTAssert(createdFilePath == expectedPath)
    }
    
    func testCreatingFileInSubfolder() throws {
        let filePath = "sub1/sub2/TestFile.md"
        let expectedPath = testFolder.path + filePath
        let createdFilePath = try fileSystem.createItem(at: filePath)
        
        XCTAssertNotNil(createdFilePath)
        XCTAssert(testFolder.containsFile(named: filePath))
        XCTAssert(createdFilePath == expectedPath)
    }
    
    // MARK: Folder creation
    
    func testCreatingFolder() throws {
        let folderPath = "SomeFolder/"
        let expectedPath = testFolder.path + folderPath
        let createdFolderPath = try fileSystem.createItem(at: folderPath)
        
        XCTAssertNotNil(createdFolderPath)
        XCTAssert(testFolder.containsSubfolder(named: folderPath))
        XCTAssert(createdFolderPath == expectedPath)
    }
    
}
