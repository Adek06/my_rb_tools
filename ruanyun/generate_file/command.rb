#!/usr/bin/env ruby

require 'optparse'

options = {}
option_parser = OptionParser.new do |opts|
    # 这里是这个命令行工具的帮助信息
    opts.banner = 'here is help messages of the command line tool.'

    # Option 作为switch，不带argument，用于将 switch 设置成 true 或 false
    options[:code] = false
    # 下面第一项是 Short option（没有可以直接在引号间留空），第二项是 Long option，第三项是对 Option 的描述
    opts.on('-c', '--code', 'generate code') do
    # 这个部分就是使用这个Option后执行的代码
    options[:code] = true
    end

    options[:file] = false
    opts.on('-f', '--file', 'generate file') do
    # 这个部分就是使用这个Option后执行的代码
    options[:file] = true
    end

    # Option 作为 flag，带argument，用于将argument作为数值解析，比如"name"信息
    #下面的“value”就是用户使用时输入的argument
    opts.on('-n NAME', '--name Name', 'if use -f, Pass-in file name') do |value|
    options[:name] = value
    end
end.parse!

if options[:file]
    require_relative "gener_file.rb"
    main(options[:name])
end
