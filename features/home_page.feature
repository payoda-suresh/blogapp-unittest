Feature: Home page
	
	Scenario: viewing application's home page
		Given there's a post titled "My first" with "Hello, BDD world!" body
		When I am on the homepage
		Then I should see the "My first" post

