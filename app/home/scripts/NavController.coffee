angular
  .module('home')
  .controller 'NavController', ($scope, supersonic) ->
    # Controller functionality here
    $scope.user = JSON.parse window.localStorage.getItem('user')
    
    $scope.showExpensesNav = false
    
    $scope.showGoals = () ->
      supersonic.ui.drawers.close().then ->
        supersonic.ui.layers.popAll()
        supersonic.ui.layers.push "goals#index"
    
    $scope.showKeyIn = () ->
      supersonic.ui.drawers.close().then ->
        supersonic.ui.layers.popAll()
        supersonic.ui.layers.push "expenses#new"
    
    $scope.showVisualize = () ->
      supersonic.ui.drawers.close().then ->
        supersonic.ui.layers.popAll()
        supersonic.ui.layers.push "expenses#index"
        
    $scope.showTodaysTip = () ->
      supersonic.ui.drawers.close().then ->
        supersonic.ui.layers.popAll()
        supersonic.ui.layers.push "home#tips"

    $scope.showAlerts = () ->
      supersonic.ui.drawers.close().then ->
        supersonic.ui.layers.popAll()
        supersonic.ui.layers.push "home#alerts"

    $scope.showCommunity = () ->
      supersonic.ui.drawers.close().then ->
        supersonic.ui.layers.popAll()
        supersonic.ui.layers.push "home#community"

    $scope.showHelp = () ->
      supersonic.ui.drawers.close().then ->
        supersonic.ui.layers.popAll()
        supersonic.ui.layers.push "home#help"

    $scope.showSettings = () ->
      supersonic.ui.drawers.close().then ->
        supersonic.ui.layers.popAll()
        supersonic.ui.layers.push "home#settings"    
          
    $scope.expensesToggle = () ->
      if $scope.showExpensesNav == false
        $scope.showExpensesNav = true
      else
        $scope.showExpensesNav = false