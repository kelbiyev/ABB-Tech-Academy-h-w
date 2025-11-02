class Downloader {
    var fileName: String
    var onFinish: (() -> Void)?
    
    init(fileName: String) { self.fileName = fileName }
    func start() {
        onFinish = { [weak self] in
        guard let self else { return }
            print("Download finished for \(self.fileName)")
        }
    }
    deinit { print("\(fileName) deinited") }
}

func test() {
    var manager: Downloader? = Downloader(fileName: "video.mp4")
    manager?.start()
    manager = nil
}

test()