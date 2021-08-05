# Copyright (c) 2021 Microsoft Corporation
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT


# This script is used for downloading jar package from storage blob and upload to file share.
$BlobUri = 'https://storagewrx.blob.core.windows.net/fixtures/echo-app-0.0.1-SNAPSHOT.jar'
$storageAccountName = 'storagewrx'
# $localFilePath = 'C:\Users\ruowan\work\scripts\a.jar'
$localFilePath = '/mnt/azscripts/azscriptoutput/a.jar'
function DownloadJarFromBlob([string]$blobUri, [string]$storageAccountName, [string]$storageAccountKey, [string]$localOutputFilePath) {

	$StorageCredentials = [Microsoft.WindowsAzure.Storage.Auth.StorageCredentials]::new($storageAccountName, $storageAccountKey)
	$BlobFile = [Microsoft.WindowsAzure.Storage.Blob.CloudBlob]::new($BlobUri, $StorageCredentials)
	$DownLoadTask = $BlobFile.DownloadToFileAsync($localOutputFilePath, 4)
	$DownLoadTask
}

function UploadToFileShare([string]$uploadUrl, [string]$localFilePath) {
	$Uri = [System.Uri]::New($uploadUrl.Split('?')[0])

	$SasToken = $uploadUrl.Split('?')[-1]
	$StorageCredentials = [Microsoft.WindowsAzure.Storage.Auth.StorageCredentials]::New($SasToken)
	$CloudFile = [Microsoft.WindowsAzure.Storage.File.CloudFile]::New($Uri, $StorageCredentials)

	$UploadTask = $CloudFile.UploadFromFileAsync($localFilePath)
	$UploadTask
}

Connect-AzAccount -Identity
# Set-AzContext 4e7b30e5-96b6-4d26-ae34-bd0b75fdafb4
# Set-AzContext db5eb68e-73e2-4fa8-b18a-46cd1be4cce5
$storageAccountKey = Get-AzKeyVaultSecret -VaultName 'ruowan-valut'  -Name 'storageAccountKey' -AsPlainText
$uploadUrl = Get-AzKeyVaultSecret -VaultName "ruowan-valut" -Name "uploadUri" -AsPlainText
DownloadJarFromBlob $BlobUri $storageAccountName $storageAccountKey $localFilePath
UploadToFileShare $uploadUrl $localFilePath

