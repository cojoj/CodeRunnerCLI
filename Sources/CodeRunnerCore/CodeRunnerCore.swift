import Foundation

@available(OSX 10.11, *)
public final class CommandLineTool {
    private let arguments: [String]
    
    private var path: String {
        return arguments[1]
    }
    
    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }
    
    public func run() throws {
        do {
            let kind = try itemKind(atPath: path)
            
            switch kind {
            case .file:
                print("We have file")
            case .folder:
                print("We have folder")
            }
        }
    }
    
    public func itemKind(atPath path: String) throws -> Kind {
        guard let item = URL(string: path) else {
            throw CLTError.cannotCreateURL(path: path)
        }
        
        return item.hasDirectoryPath ? .folder : .file
    }
}

