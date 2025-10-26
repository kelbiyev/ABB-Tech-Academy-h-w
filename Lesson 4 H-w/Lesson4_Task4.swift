//import UIKit

func closureRecall(_ action: () -> Void) 
{
    action()
    action()
}

closureRecall
{
    print("Hello, Swift!")
}
