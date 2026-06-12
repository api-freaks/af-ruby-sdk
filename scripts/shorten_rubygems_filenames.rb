# frozen_string_literal: true

require "fileutils"
require "digest"

files = Dir.glob("lib/**/*.rb").select do |path|
  File.basename(path).bytesize > 100 || path.bytesize > 256
end

mapping = {}

files.each do |path|
  dir = File.dirname(path)
  old_base = File.basename(path, ".rb")

  digest = Digest::SHA1.hexdigest(old_base)[0, 10]

  prefix = old_base.byteslice(0, 70).to_s
  prefix = prefix.sub(/_?[^_]*\z/, "")
  prefix = "type" if prefix.empty?

  new_base = "#{prefix}_#{digest}"
  new_base = new_base.byteslice(0, 95)

  new_path = File.join(dir, "#{new_base}.rb")

  counter = 1
  while File.exist?(new_path)
    new_base = "#{prefix}_#{digest}_#{counter}"
    new_base = new_base.byteslice(0, 95)
    new_path = File.join(dir, "#{new_base}.rb")
    counter += 1
  end

  FileUtils.mv(path, new_path)
  mapping[old_base] = new_base

  puts "#{path} -> #{new_path}"
end

# Important: replace longer names first to avoid abc_item corrupting abc_item_model.
ordered_mapping = mapping.sort_by { |old_base, _new_base| -old_base.length }

Dir.glob("{lib,test}/**/*.rb") do |rb_file|
  text = File.read(rb_file)
  updated = text.dup

  ordered_mapping.each do |old_base, new_base|
    updated.gsub!(old_base, new_base)
  end

  File.write(rb_file, updated) if updated != text
end

puts "Renamed #{mapping.size} files"
