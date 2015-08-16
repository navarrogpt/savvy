angular
  .module('expenses')
  .controller 'NewController', ($scope, supersonic) ->
    supersonic.ui.tabs.hide()
    $scope.expense = {}
    $scope.total = 0
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
    
    $scope.createExpense = (expense) ->
      expenseTotal = parseFloat(expense.amount)
      $scope.total += expenseTotal
      window.localStorage.setItem('total', $scope.total)