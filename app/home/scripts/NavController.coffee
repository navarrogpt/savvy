angular
  .module('home')
  .controller 'NavController', ($scope, supersonic) ->
    # Controller functionality here
    $scope.user = JSON.parse window.localStorage.getItem('user')
    
    $scope.showGoals = () ->
      supersonic.ui.drawers.close().then ->
        view = new supersonic.ui.View "goals#index"
        view.start("goals#index").then (startedView) ->
          supersonic.ui.layers.replace startedView
          
    $scope.showExpenses = () ->
      supersonic.ui.drawers.close().then ->
        view = new supersonic.ui.View "expenses#index"
        view.start("expenses#index").then (startedView) ->
          supersonic.ui.layers.replace startedView