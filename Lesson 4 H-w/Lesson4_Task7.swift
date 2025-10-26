//import UIKit

func downloadFile(
    from fileName: String,
    onProgress: (Int) -> Void,
    onComplete: () -> Void
) {
    print("Starting download of \(fileName)...")
    
    for progress in 0...100 {
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
