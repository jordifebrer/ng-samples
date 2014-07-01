angular.module('iframeApp', [])


.controller 'iframeCtrl', ($scope, $sce) ->

  $scope.websites = [
    {
      1:
        name: "Scotland JS"
        visibility: false
        url: $sce.trustAsResourceUrl "http://scotlandjs.com/"
    },
    {
      2:
        name: "AngularJS Docs"
        visibility: false
        url: $sce.trustAsResourceUrl "https://docs.angularjs.org/"
    },
    {
      3:
        name: "AngularJS Daily"
        visibility: false
        url: $sce.trustAsResourceUrl "http://www.angularjsdaily.com/"
    }
  ]

  $scope.setVisibility = (id, value) ->
    $scope.websites[id].visibility = value
