# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
AngulaRails.controller "TacoOrderController", ($scope) ->
	$scope.tacos = []
	$scope.taco = {}
	$scope.fillings = ["Beef", "Chicken", "Fish", "Carnitas"]
	$scope.extras = [{name: "Sour Cream"}, {name: "Guac"}]
	$scope.clear = () ->
		$scope.taco = {}
		for extra in $scope.extras
			extra.checked = false
	$scope.getExtras = () ->
		extras = []
		for extra in $scope.extras
			if extra.checked == true
				extras.push(extra.name)
	$scope.addTaco = () ->
		$scope.taco.extras = $scope.getExtras()
		$scope.tacos.push($scope.taco)
		$scope.clear()