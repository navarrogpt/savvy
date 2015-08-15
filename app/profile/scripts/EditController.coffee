angular
  .module('profile')
  .controller 'EditController', ($scope, supersonic) ->
    $scope.user = JSON.parse window.localStorage.getItem('user')