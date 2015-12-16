
@bakery.controller 'PictureNewCtrl', ['$scope', '$http', '$routeParams', '$timeout', '$compile', 'Upload', '$location',($scope, $http, $routeParams, $timeout, $compile, Upload, $location) ->
  $scope.myImage = ''
  $scope.myCroppedImage = ''
  $scope.type = 'square'

  $http.get("./desserts/#{$routeParams.name}/pictures/new.json").success((data) ->
    $scope.item = data
  )

  handleFileSelect = (evt) ->
    file = evt.currentTarget.files[0]
    reader = new FileReader()
    reader.onload = (evt) ->
      $scope.$apply( ($scope) ->
        $scope.myImage = evt.target.result
      )
    reader.readAsDataURL(file)
  angular.element(document.querySelector('#fileInput')).on('change', handleFileSelect)

  uploadS3 = (file) ->
    $http.get('./uploader/new.json').success((data) ->
      Upload.upload({
        url: 'https://tatianasbakery.s3.amazonaws.com/',
        method: 'POST',
        fields: {
          key: file.name,
          AWSAccessKeyId: 'AKIAJCD6BQBFJEQSXBNQ',
          acl: 'public-read',
          'Content-Type': 'image/jpeg',
          filename: file.name,
          policy: data.policy,
          signature: data.signature
        },
        withCredentials: false,
        file: file,
      })
    ).success( (data, status, headers, config) ->
      console.log($scope.item.picture_url)
      $http.post("./desserts/#{$routeParams.name}/pictures.json", $scope.item)
      $location.url "/admin_console"

    )

  dataURItoBlob = (dataURI) ->
    binary = atob(dataURI.split(',')[1])
    mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0]
    array = []
    for i in [0...binary.length]
      array.push binary.charCodeAt i
    new Blob([new Uint8Array(array)], {type:mimeString})

  upload = (dataURI) ->
    $scope.errorMsg = null
    blob = dataURItoBlob dataURI
    blob.name = Math.floor((Math.random() * 900000) + 1)
    $scope.item.picture_url = "https://s3.amazonaws.com/tatianasbakery/" + blob.name
    uploadS3 blob

  $scope.uploadPic = (files) ->
    upload files if files isnt null

  # $scope.createItem = () ->
  #   console.log("From Pictures controller")
  #   console.log($scope.item)

  # readBlob = (blob) ->
  #   reader = new FileReader
  #   reader.readAsDa

  # $scope.testCropObj = (dataURI) ->
  #   blob = dataURItoBlob dataURI
  #   blob.name = Math.floor((Math.random() * 100000) + 1)
  #   console.log(blob)

  # $scope.testPicObj = (file) ->
  #   console.log(file[0])

  # createBlob = (file) ->
  #   reader = new FileReader
  #   reader.onload = () ->
  #     reader.result
  #   reader.readAsDataURL(file)

]
