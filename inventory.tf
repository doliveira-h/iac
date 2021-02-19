resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  apache_ip = module.apache.public_ip
  mysql_ip = module.mysql.public_ip
 }
 )
 filename = "./playbooks/inventory.ini"
}
