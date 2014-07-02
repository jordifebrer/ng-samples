angular.module('previewApp', [])


.controller 'previewCtrl', ($scope, $sce) ->

  $scope.nickname = 'John Doe'
  $scope.$watch 'nickname', () ->
    $scope.nickname = $scope.nickname.toLowerCase().replace /\s+/g, ''
