// AsyncConcurrency.swift – demonstrates async/await and Task groups

import Foundation

actor Counter {
    private(set) var value = 0
    func increment() { value += 1 }
}

func fetchNumber(from url: URL) async throws -> Int {
    let (data, _) = try await URLSession.shared.data(from: url)
    return Int(String(decoding: data, as: UTF8.self)) ?? 0
}

func sumNumbers(urls: [URL]) async throws -> Int {
    try await withThrowingTaskGroup(of: Int.self) { group in
        for url in urls {
            group.addTask {
                try await fetchNumber(from: url)
            }
        }
        var total = 0
        for try await num in group {
            total += num
        }
        return total
    }
}

// Entrypoint for playgrounds / scripts (ignored by analysis tools)
@main struct Main {
    static func main() async {
        let urls = [URL(string: "https://example.com/1")!, URL(string: "https://example.com/2")!]
        _ = try? await sumNumbers(urls: urls)
    }
} 