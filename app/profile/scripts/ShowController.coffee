angular
  .module('profile')
  .controller 'ShowController', ($scope, supersonic) ->
    userData = {firstName: 'Savannah', lastName: 'Lee', username: 'saviuser', age: '20', avatar: 'http://f1.pepst.com/c/B8B40F/133834/ssc3/home/004/all.quality.zone/albums/21_indian_girl.jpg_480_480_0_64000_0_1_0.jpg'}
    window.localStorage.setItem('user', JSON.stringify userData)

    $scope.user = JSON.parse window.localStorage.getItem('user')