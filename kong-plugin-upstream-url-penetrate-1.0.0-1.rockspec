package = "kong-plugin-upstream-url-penetrate"
version = "1.0.0-1"
source = {
   url = "git://github.com/xiaomastack/kong-plugin-upstream-url-penetrate.git",
   tag = "1.0.0-1"
}
description = {
   homepage = "https://www.xiaomastack.com/2019/01/17/kong-plugin-upstream-url-penetrate/",
   license = "Apache-2.0"
}
dependencies = {}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.upstream-url-penetrate.handler"] = "kong/plugins/upstream-url-penetrate/handler.lua",
    ["kong.plugins.upstream-url-penetrate.schema"] = "kong/plugins/upstream-url-penetrate/schema.lua",
  }
}
