Feature: User Login
![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
Simple calculator for adding **two** numbers

Link to a feature: [Calculator](SpecFlowProject1/Features/Calculator.feature)
***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**

﻿Feature: LoginFeature

@Valid
Scenario: Valid Login
	Given the username is "Sivakumar"
	And the password is "@123"
	When I try to login
	Then the message should be "Login Successful" 

@ProvideUserName
Scenario: Provide Username
	Given the username is "null"
	And the password is "@123"
	When I try to login
	Then the message should be "Provide Username" 

@ProvidePassword
Scenario: Provide Password
	Given the username is "Sivakumar"
	And the password is "null"
	When I try to login
	Then the message should be "Provide Password"
	
@InvalidLogin
Scenario: InValid Login
	Given the username is "InvalidUsername"
	And the password is "InvalidPassword"
	When I try to login
	Then the message should be "Login Failed" 

@ProvideBoth
Scenario: Provide Username and Password
	Given the username is "null"
	And the password is "null"
	When I try to login
	Then the message should be "Provide Username and Password" 