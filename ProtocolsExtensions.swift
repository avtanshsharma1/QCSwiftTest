// ProtocolsExtensions.swift – protocol with default implementations & extensions

protocol Describable {
    var description: String { get }
    func printDescription()
}

extension Describable {
    func printDescription() {
        print(description)
    }
}

struct Book: Describable {
    let title: String
    var description: String { "Book: \(title)" }
}

extension Array where Element: Describable {
    func describeAll() {
        forEach { $0.printDescription() }
    }
}

// Example usage (ignored by QC)
let books = [Book(title: "1984"), Book(title: "Brave New World")]
books.describeAll() 