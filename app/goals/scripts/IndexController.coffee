angular
  .module('goals')
  .controller 'IndexController', ($scope, supersonic) ->
    supersonic.ui.tabs.hide()
    # Controller functionality here
    $scope.user = JSON.parse window.localStorage.getItem('user')
    $scope.goals1 = [{name: 'Home', icon: 'icon-home'}, {name: 'Education', icon: 'icon-book'}, {name: 'Shopping', icon: 'icon-shopping-bag'}]
    $scope.goals2 = [{name: 'Travel', icon: 'icon-compass'}, {name: 'Rewards', icon: 'icon-present'}, {name: 'Grocery', icon: 'icon-shopping-cart'}]
    $scope.goals3 = [{name: 'New Phone', icon: 'icon-phone'}, {name: 'Investment', icon: 'icon-star'}, {name: 'Add your own', icon: 'icon-plus'}]
    
    $scope.showGoal = () ->
      supersonic.ui.layers.push "goals#show"