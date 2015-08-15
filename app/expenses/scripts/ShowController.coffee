angular
  .module('expenses')
  .controller 'ShowController', ($scope, supersonic) ->
    # Controller functionality here
    $scope.categories = [
      'Food',
      'Rent',
      'Mortgage',
      'Utilities',
      'Clothing',
      'Transportation',
      'Medical',
      'Insurance',
      'Education',
      'Travel',
      'Others'
    ]