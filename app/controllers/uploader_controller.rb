class UploaderController < ApplicationController

  def new
    token = S3provider.new.s3_access_token
    render :json => token, :status => :ok
  end
end
