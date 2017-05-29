import Foundation

// MARK: Helper enums

public enum Kind {
    case file
    case folder
}

// MARK: Errors

public enum CLTError: Error {
    case cannotCreateURL(path: String)
    case missingFileName
    case failedToCreateFile
}
