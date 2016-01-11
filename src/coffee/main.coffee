###
# webkit 项目的main
# 独立的context中运行。
###

#通过外部浏览器打开指定地址
openExternal = (url) ->
  gui = require("nw.gui")
  gui.Shell.openExternal(url)
  event.preventDefault()
