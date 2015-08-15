angular
  .module('profile')
  .controller 'ShowController', ($scope, supersonic) ->
    userData = {firstName: 'Savannah', lastName: 'Lee', username: 'savvyuser', age: '20', avatar: 'http://s3media.247sports.com/Uploads/Assets/23/856/2856023.jpg'}
    window.localStorage.setItem('user', JSON.stringify userData)

    $scope.user = JSON.parse window.localStorage.getItem('user')