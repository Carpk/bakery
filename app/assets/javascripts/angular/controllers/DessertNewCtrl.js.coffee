
@bakery.controller 'DessertNewCtrl', ['$scope', '$http', '$timeout', '$compile', 'Upload', ($scope, $http, $timeout, $compile, Upload) ->
  $scope.myImage = ''
  $scope.myCroppedImage = ''
  $scope.type = 'square'


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
    $http.get('./desserts/new.json').success((data) ->
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
      console.log(config)
    )

  createBlob = (file) ->
    reader = new FileReader
    reader.onload = () ->
      reader.result
    reader.readAsDataURL(file)

  dataURItoBlob = (dataURI) ->
    binary = atob(dataURI.split(',')[1])
    mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0]
    array = []
    for i in [0...binary.length]
      array.push binary.charCodeAt i
    new Blob([new Uint8Array(array)], {type:mimeString})

  # readBlob = (blob) ->
  #   reader = new FileReader
  #   reader.readAsDa

  # $scope.testCropObj = (dataURI) ->
  #   blob = dataURItoBlob dataURI
  #   blob.name = Math.floor((Math.random() * 100000) + 1)
  #   console.log(blob)

  # $scope.testPicObj = (file) ->
  #   console.log(file[0])

  $scope.upload = (dataURI) ->
    $scope.errorMsg = null
    blob = dataURItoBlob dataURI
    blob.name = Math.floor((Math.random() * 100000) + 1)
    uploadS3 blob

  $scope.uploadPic = (files) ->
    $scope.upload files if files isnt null

]
