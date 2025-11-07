//import UIKit

var isLoggedIn = true
var isAdmin = false

if isLoggedIn && !isAdmin
{
	print("Access granted")
} 
else
{
	print("Access denied")	
}

var hasPermission = true

if hasPermission || isAdmin
{
	print("Access granted")
}
else
{
	print("Access denied")
}
