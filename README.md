# kong-plugin-upstream-url-penetrate

> 如果前端请求uris配置为`/api/activemap/(?<id>\d+)`，上游转发upstream_uri配置为`http://192.168.1.3:10000/test/activemap/{id}`。该插件将会捕获`uris`的`id`值，去替换`upstream_uri`里面的`{id}`字符串，也适用于多个值的捕获与替换。

#### 下载

``` bash
$ git clone https://github.com/xiaomastack/kong-plugin-upstream-url-penetrate.git
```

#### 安装

``` bash
$ cd kong-plugin-upstream-url-penetrate
$ luarocks make
kong-plugin-upstream-url-penetrate 1.0.0-1 is now installed in /usr/local (license: Apache-2.0)

```

#### 配置kong.conf

``` bash
$ vi /etc/kong/kong.conf
plugins = bundled, upstream-url-penetrate
```

#### restart kong

``` bash
$ kong restart
```

####  示例
开启插件后，例如前端请求为

``` bash
$ curl "http://192.168.1.3:8000/api/activemap/1/"
```

上游的upstream_uri将会被渲染为

``` bash
http://192.168.1.3:10000/test/activemap/1/
```

前端请求为

``` bash
$ curl "http://192.168.1.3:8000/api/activemap/2/"
```
上游的upstream_uri将会被渲染为

``` bash
http://192.168.1.3:10000/test/activemap/2/
```

#### 其它
<a href="https://www.xiaomastack.com/2019/01/19/kong-plugin-upstream-url-penetrate/" target="_blank">插件相关文章</a>

