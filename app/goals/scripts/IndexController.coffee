angular
  .module('goals')
  .controller 'IndexController', ($scope, supersonic) ->
    supersonic.ui.tabs.hide()
    # Controller functionality here
    $scope.user = JSON.parse window.localStorage.getItem('user')
    $scope.goals1 = [{name: 'Home', avatar: ''}, {name: 'Education', avatar: ''}, {name: 'Shopping', avatar: ''}]
    $scope.goals2 = [{name: 'Travel', avatar: ''}, {name: 'Rewards', avatar: ''}, {name: 'Grocery', avatar: ''}]
    $scope.goals3 = [{name: 'New Phone', avatar: ''}, {name: 'Investment', avatar: ''}, {name: 'Add your own', avatar: ''}]