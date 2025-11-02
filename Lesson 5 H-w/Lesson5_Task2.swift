//import UIKit 

class DownloadTask {
    var fileName: String
    var progress: Int {
        willSet{
            print("progress will move to \(newValue)%")
        }
        didSet{
            print("Progress changed by \(progress - oldValue)%")
        }
    }

    lazy var completionMessage: String = "\(fileName) download completed!"

    init(fileName: String, progress: Int = 0){
        self.fileName = fileName
        self.progress = progress
    }

    func start() {
        progress = 100 
        print(completionMessage)
    }

}

let download = DownloadTask(fileName: "homework-swift.playground.zip")
download.start()