resource "random_pet" "pet" {
	keepers = {
		val = timestamp()
	}
}

output "pet" {
	value = random_pet.pet.id
}


variable "test_map_var" {
	type = map
	default = {
		key_1 : "default_value_123",
		key_2 : "default_value_456"
	}
}

variable "test_str_var" {
	type = string
	default = "default_str_value123456789"
}

output "test_output" {
  value = "${lookup(var.test_map_var , "key_1")}"
}


output "test_output2" {
  value = "${var.test_str_var}"
}
