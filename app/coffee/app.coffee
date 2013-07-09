'use strict'

appName = 'myApp'

angular.module(appName, ["#{appName}.filters", "#{appName}.services", "#{appName}.directives", "#{appName}.controllers"])
	.config [
		'$routeProvider', ($routeProvider) ->
			$routeProvider.when '/view1',
				templateUrl: 'partials/partial1.html', 
				controller: 'MyCtrl1'
			$routeProvider.when '/view2',
				templateUrl: 'partials/partial2.html', 
				controller: 'MyCtrl2'
			$routeProvider.otherwise redirectTo: '/view1'
	]

angular.bootstrap document, [appName]