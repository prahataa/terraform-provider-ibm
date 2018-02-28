provider "ibm"{

}

resource "ibm_object_storage_account" "test_foo" {
 accountType = "S3"
}

resource "ibm_object_storage_account" "test_foobar" {
 
}

