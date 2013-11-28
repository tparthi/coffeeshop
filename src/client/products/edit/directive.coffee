angular.module('coffeeshop').directive "productEdit", ()->
	{
		restrict: "A"
		scope: {
			product: "@"
			save: "&"
		}
		templateUrl: "products/edit/widget"
		replace: true
		transclude: false
		link: (scope, element, attrs, controller)->
			console.log "productEdit Directive Link Function!"
			console.log scope, element, attrs, controller
		controller: ($scope, storage)->
			console.log "Directive ctrl"
			storage.ready.then (products)->
				console.log "Storage rdy"
				if !$scope.product
					console.log "prod was null"
					$scope.product = storage.build "Product", {}
					console.log $scope.product
			console.log "end of product edit directive ctrl."
	}
