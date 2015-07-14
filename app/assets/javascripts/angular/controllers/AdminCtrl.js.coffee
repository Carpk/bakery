@bakery.controller 'AdminCtrl', ['$scope', '$http', '$timeout', '$compile', 'Upload', ($scope, $http, $timeout, $compile, Upload) ->
  $scope.myFiles = ''

  $scope.myImage = ''
  $scope.myCroppedImage = ''
  $scope.type = 'square'

  tokens = {}


  handleFileSelect = (evt) ->
    file = evt.currentTarget.files[0]
    reader = new FileReader()
    reader.onload = (evt) ->
      $scope.$apply( ($scope) ->
        $scope.myImage = evt.target.result
      )
    reader.readAsDataURL(file)
  angular.element(document.querySelector('#fileInput')).on('change', handleFileSelect)


  # $scope.$watch('files', () ->
  #     $scope.upload($scope.files)
  # )

  uploadS3 = (file) ->
    console.log file
    $http.get('./desserts/new.json').success((data) ->
      Upload.upload({
        url: 'https://tatianasbakery.s3.amazonaws.com/', ## S3 upload url including bucket name
        method: 'POST',
        fields: {
          key: file.name, ##file.name, ## the key to store the file on S3, could be file name or customized
          AWSAccessKeyId: 'AKIAJCD6BQBFJEQSXBNQ',
          acl: 'public-read', ## sets the access to the uploaded file in the bucket: private or public
          'Content-Type': 'image/jpeg', ## content type of the file (NotEmpty)
          filename: file.name, ## this is needed for Flash polyfill IE8-9
          policy: data.policy, ## base64-encoded json policy (see article below)
          signature: data.signature ## base64-encoded signature based on policy string (see article below)
        },
        withCredentials: false,
        file: file,
      })
    ).success( (data, status, headers, config) ->
      console.log("success!")
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



  readBlob = (blob) ->
    reader = new FileReader
    reader.readAsDa


  $scope.testCropObj = (dataURI) ->
    blob = dataURItoBlob dataURI
    # blob.name = 'smiley'
    # data = readBlob blob
    console.log(blob)

  $scope.testPicObj = (file) ->
    console.log(file[0])

  $scope.upload = (dataURI) ->
    $scope.errorMsg = null
    blob = dataURItoBlob dataURI
    blob.name = 'smiley' # create random string?
    uploadS3 blob


  $scope.uploadPic = (files) ->
    $scope.upload files if files isnt null


]
