//import UIKit

func downloadFile(
    from fileName: String,
    onProgress: (Int) -> Void,
    onComplete: () -> Void
) {
    print("Starting download of \(fileName)...")
    
    for progress in stride(from: 0, through: 100, by: 50) {
        onProgress(progress)
    }
    
    onComplete()
}

downloadFile(
    from: "myVideo.mp4",
    onProgress: { percent in
        print("Progress: \(percent)%")
    },
    onComplete: {
        print("Download complete!")
    }
)
