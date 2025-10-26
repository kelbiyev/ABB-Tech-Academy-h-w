//import UIKit

func convertFiles(
    _ files: [String],
    onConvert: (String) -> Void,
    onFinish: () -> Void
) {
    for file in files {
        onConvert(file)
    }
    onFinish()
}

let documents = ["report.docx", "slides.pptx", "invoice.pdf"]

convertFiles(
    documents,
    onConvert: { file in
        print("Converting \(file)...")
    },
    onFinish: {
        print("All files converted!")
    }
)
