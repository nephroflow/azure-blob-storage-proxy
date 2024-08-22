module github.com/cirruslabs/azure-blob-storage-proxy

go 1.23

replace github.com/cirruslabs/azure-blob-storage-proxy/http_proxy => ./http_proxy

require (
	github.com/Azure/azure-sdk-for-go/sdk/storage/azblob v1.4.0
	github.com/cirruslabs/azure-blob-storage-proxy/http_proxy v0.0.0
)

require (
	github.com/Azure/azure-sdk-for-go/sdk/azcore v1.14.0 // indirect
	github.com/Azure/azure-sdk-for-go/sdk/internal v1.10.0 // indirect
	golang.org/x/net v0.28.0 // indirect
	golang.org/x/text v0.17.0 // indirect
)
