"use strict"
exec = require('child_process').exec

DEFAULT_TASK_NAMES = ['watch','jade','public']

module.exports = (grunt) ->

  grunt.registerTask 'watch', "编译coffee文件(-> src/coffee/* && app.nw/site/)", () ->
    exec("coffee -b -o app.nw/site/ -c src/coffee/")

  grunt.registerTask 'jade', "编译jade文件(-> src/jade/* app.nw/)", () ->
    exec("jade src/jade --out app.nw/")

  grunt.registerTask 'public', "更新html页面", () ->
    exec("cp -Rv ./public/package.json ./public/js ./public/css ./public/images app.nw/")

  grunt.registerTask 'default', "watch jade public 依次执行", () ->
    grunt.task.run DEFAULT_TASK_NAMES

