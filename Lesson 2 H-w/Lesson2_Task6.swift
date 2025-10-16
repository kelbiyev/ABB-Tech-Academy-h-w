//import UIKit

var name: String? = "Elvin"
var age: Int? = nil
var email: String? = "elvin@mail.com" 
print("Name: \(name) , Age: \(age) , Email: \(email)")

print("")

if let names = name
{
	print("Name: \(names)")
}
else
{
	print("Informations about name is not provided")
}

if let ages = age
{
	print("Age: \(ages)")
}
else
{
	print("Informations about age is not provided")
}

if let emails = email
{
	print("Email: \(emails)")
}
else
{
	print("Informations about email is not provided")
}

print("")

email = nil

if let names = name
{
	print("Name: \(names)")
}
else
{
	print("Informations about name is not provided")
}

if let ages = age
{
	print("Age: \(ages)")
}
else
{
	print("Informations about age is not provided")
}

if let emails = email
{
	print("Email: \(emails)")
}
else
{
	print("Informations about email is not provided")
}

print("")

let userEmail = email ?? "No email registered"
print ("User Email: \(userEmail)")

print("")

var nickname: String? = nil 
if let nickName = nickname ?? name
{
	if nickname == nil
	{
		print("Using name as nickname: \(nickName)")
	}
	else
	{
		print("Nickname: \(nickName)")
	}
}
else
{
	print("No name or nickname")
}