require_relative 'hooks'

class Configuration
  attr_accessor :aws_access_key_id,
    :aws_secret_access_key,
    :backup_folder,
    :bucket,
    :endpoint,
    :file_suffix,
    :region,
    :remote_path,
    :repository

  attr_reader :hooks

  def initialize(
    aws_access_key_id: '',
    aws_secret_access_key: '',
    backup_folder: 'db/backups',
    bucket: '',
    endpoint: '',
    file_suffix: '',
    region: '',
    remote_path: '_backups/database/',
    repository: 'file system',
    hooks: nil
  )
    @aws_access_key_id = aws_access_key_id
    @aws_secret_access_key = aws_secret_access_key
    @backup_folder = backup_folder
    @bucket = bucket
    @endpoint = endpoint
    @file_suffix = file_suffix
    @region = region
    @remote_path = remote_path
    @repository = repository
    @hooks = Hooks.new(hooks)
  end

  def hooks=(hooks)
    @hooks = Hooks.new(hooks)
  end

  def s3?
    repository.downcase == 's3'
  end
end
