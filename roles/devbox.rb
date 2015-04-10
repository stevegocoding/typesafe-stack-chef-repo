name "devbox"

override_attributes(
  "java" => {
    "jdk_version" => '7', 
    "install_flavor" => 'oracle',
    "oracle" => { 
      "accept_oracle_download_terms" => true 
    }
  },
  "scala" => {
    "version" => '2.11.6',
    "url" => 'http://downloads.typesafe.com/scala/2.11.6/scala-2.11.6.tgz?_ga=1.146636148.1994524479.1426856063'
  }
)

run_list(
  "recipe[java::oracle]",
  "recipe[scala]",
  "recipe[typesafe-stack]"
)
