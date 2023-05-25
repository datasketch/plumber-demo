print("Loading plumber.R")

#* Check api status
#* @get /healthz
#* @serializer unboxedJSON
function() {
  list(msg = "Service is healthy")
}

#* Get users
#* @get /users
#* @serializer unboxedJSON
function() {
  list(
    list(id=1,name='david'),
    list(id=2,name='cami'),
    list(id=3,name='jp'),
    list(id=4,name='lucho')
  )
}