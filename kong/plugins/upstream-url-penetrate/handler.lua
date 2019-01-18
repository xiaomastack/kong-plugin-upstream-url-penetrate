local BasePlugin = require "kong.plugins.base_plugin"

local UpstreamUrlPenetrateHandler = BasePlugin:extend()

function UpstreamUrlPenetrateHandler:new()
  UpstreamUrlPenetrateHandler.super.new(self, "upstream-url-penetrate")
end

function UpstreamUrlPenetrateHandler:access()
  UpstreamUrlPenetrateHandler.super.access(self)

  local uri_captures = ngx.ctx.router_matches.uri_captures
  local upstream_uri = ngx.var.upstream_uri

  if type(uri_captures) == "table" then
    for k, v in pairs(uri_captures) do
      if type(k) == "string" then
        local tag_string = string.format("{%s}", k)
        upstream_uri = string.gsub(upstream_uri, tag_string, v)
      end
    end
    ngx.var.upstream_uri = upstream_uri
  end

end

UpstreamUrlPenetrateHandler.PRIORITY = 100

return UpstreamUrlPenetrateHandler