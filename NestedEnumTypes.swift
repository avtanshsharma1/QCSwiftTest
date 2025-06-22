// NestedEnumTypes.swift – nested structs and enums with associated values

import Foundation

struct Network {
    enum Response {
        case success(Data)
        case failure(Error)
    }

    struct APIError: Error {
        let code: Int
        let message: String
    }

    static func parse(_ data: Data?) -> Response {
        guard let data = data else {
            return .failure(APIError(code: -1, message: "No data"))
        }
        return .success(data)
    }
}

// Example nested enum pattern matching
func handle(response: Network.Response) {
    switch response {
    case .success(let data):
        print("Received \(data.count) bytes")
    case .failure(let error):
        print("Error: \(error)")
    }
} 