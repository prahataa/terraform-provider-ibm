---
layout: "ibm"
page_title: "IBM : object_storage_account"
sidebar_current: "docs-ibm-resource-object-storage-account"
description: |-
  Manages IBM Object Storage Account.
---

# ibm\_object_storage_account

Use this resource to order a Swift/S3 Object Storage instance and to store the account name.

Do not use this resource for managing the lifecycle of an Object Storage instance in IBM. For lifecycle management, see the [Swift API](https://developer.openstack.org/api-ref/object-store/) or [Swift resources](https://github.com/TheWeatherCompany/terraform-provider-swift) or [S3 API](https://ibm-public-cos.github.io/crs-docs/about-compatibility-api)

## Example Usage for Swift object storage account

```hcl
resource "ibm_object_storage_account" "swift-account" {
}
```
## Example Usage for S3 object storage account

```hcl
resource "ibm_object_storage_account" "s3-account" {
  accountType = "S3"
}
```
## Argument Reference

* `accountType` - (Required, string) 
   * Allowed values are "S3" or "SWIFT".
   * Default value is "SWIFT". If we do not provide accountType, the resource would provision Swift Object Storage account by default. 

* `tags` - (Optional, array of strings) Tags associated with the object storage account instance.
  **NOTE**: `Tags` are managed locally and not stored on the IBM Cloud service endpoint at this moment.

## Computed Fields

The following attributes are exported:

* `id` - The Object Storage account name, which you can use with Swift/S3 resources.
