Feature: CRUD Operation on Jsonplaceholder application
	Scenario: Get all posts
	Given I have a base URI of "https://jsonplaceholder.typicode.com"
	When I send a GET request to "/posts"
	Then the response status code should be 200
	
	Scenario: Get One post
	Given I have a base URI of "https://jsonplaceholder.typicode.com"
	When I send a GET request to "/posts/1"
	Then the response status code should be 200
	
	Scenario Outline: Create post
	Given I have a base URI of "https://jsonplaceholder.typicode.com"
	When I send a POST request to "/posts" with body as "<RequestBody>"
	Then the response time less then 5000
	
	Scenario Outline: Put post
	Given I have a base URI of "https://jsonplaceholder.typicode.com"
	When I send a PUT request to "/posts/1" with body as "<RequestBody>"
	And the response time less than 5000
	
	Scenario Outline: Delete post
	Given I have a base URI of "https://jsonplaceholder.typicode.com"
	When I send a DELETE request to "/posts/1"
	Then the response status code should be 200
	
	Examples:
	|RequestBody                                                       | 
	|{ \\"title\\": \\"foo\\", \\"body\\": \\"bar\\", \\"userId\\": 1 }|
	|{ \\"title\\": \\"Updated Title\\", \\"body\\": \\"Updated body content\\", \\"userId\\": 1 }|