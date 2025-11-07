//import UIKit

class FileDownloader {
    enum Status {
        case idle, downloading, completed, failed
    }

    var fileURL: String
    var progress: Double = 0.0 {
        didSet {
            if progress < 100 {
                print("---Downloading... \(Int(progress))%")
            } else {
                status = .completed
                print("<> Download completed!")
                onCompletion?(true)
            }
        }
    }

    var status: Status = .idle
    var onCompletion: ((Bool) -> Void)?

    lazy var startDownload: () -> Void = {
        self.status = .downloading
        print("Starting download from: \(self.fileURL)")

        for i in stride(from: 0, through: 100, by: 20) {
            self.progress = Double(i)
        }
    }

    init(fileURL: String) {
        self.fileURL = fileURL
    }
}

let file = FileDownloader(fileURL: "https://example.com/photo.jpg")
file.onCompletion = { success in
    if success { print("File finished successfully!") }
}
file.startDownload()

let file1 = FileDownloader(fileURL: "https://example.com/file1.zip")
file1.onCompletion = { success in
    print(success ? " File1 Download completed!" : "File1 Download FAILED.")
}
let file2 = FileDownloader(fileURL: "https://example.com/file2.mp4")
file2.onCompletion = { success in
    print(success ? "File2 Download completed!" : " File2 Download FAILED.")
}

file1.startDownload()
file2.startDownload()
