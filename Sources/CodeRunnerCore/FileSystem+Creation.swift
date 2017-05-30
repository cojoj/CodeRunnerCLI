import Foundation
import Files

@available(OSX 10.11, *)
extension FileSystem {
    func createItem(at path: String) throws -> String {
        let kind = try itemKind(atPath: path)
        
        switch kind {
        case .file:
            return try createFileIfNeeded(at: path).path
        case .folder:
            return try createFolderIfNeeded(at: path).path
        }
    }
    
    private func itemKind(atPath path: String) throws -> Kind {
        guard let item = URL(string: path) else {
            throw CLTError.cannotCreateURL(path: path)
        }
        
        return item.hasDirectoryPath ? .folder : .file
    }
}
