/**
 *  CodeRunnerClI
 *  Copyright (c) Mateusz Zając 2017
 *  Licensed under the MIT license. See LICENSE file.
 */

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
