$keyVault = Get-AzKeyVault -VaultName "first-key-vault" -ResourceGroupName "az-203";
$diskEncryptionKeyVaultUrl = $keyVault.VaultUri;
$keyVaultResourceId = $keyVault.ResourceId;
$keyEncryptionKeyUrl = (Get-AzKeyVaultKey -VaultName "first-key-vault" -Name "first-key").Key.kid;

Set-AzVMDiskEncryptionExtension -ResourceGroupName "az-203" `
    -VMName "first" `
    -DiskEncryptionKeyVaultUrl $diskEncryptionKeyVaultUrl `
    -DiskEncryptionKeyVaultId $keyVaultResourceId `
    -KeyEncryptionKeyUrl $keyEncryptionKeyUrl `
    -KeyEncryptionKeyVaultId $keyVaultResourceId