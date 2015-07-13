class S3provider

  def s3_access_token
    {
      policy:    s3_upload_policy,
      signature: s3_upload_signature,
      key:       ENV["AWS_KEY"]
    }
  end

  protected

  def s3_upload_policy
    @policy ||= create_s3_upload_policy
  end

  def create_s3_upload_policy
    Base64.encode64(
      {
        "expiration" => 1.hour.from_now.utc.xmlschema,
        "conditions" => [
          { "bucket" =>  ENV["AWS_BUCKET"] },
          [ "starts-with", "$key", "" ],
          [ "starts-with", "$filename", "" ],
          { "acl" => "public-read" },
          [ "starts-with", "$Content-Type", "" ],
          [ "content-length-range", 0, 10 * 1024 * 1024 ]
        ]
      }.to_json).gsub(/\n/,'')
  end

  def s3_upload_signature
    Base64.encode64(OpenSSL::HMAC.digest(OpenSSL::Digest::Digest.new('sha1'), ENV["AWS_SECRET"], s3_upload_policy)).gsub("\n","")
  end

end
