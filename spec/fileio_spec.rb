require 'spec_helper'
require 'webmock/rspec'

describe Fileio do
  it 'has a version number' do
    expect(Fileio::VERSION).not_to be nil
  end

  let(:path) { File.expand_path("../test-data.txt", __FILE__) }

  describe ".upload", :vcr do
    context "without expiration time" do
      it 'returns json of upload' do
        result = Fileio.upload(path)
        expect(result["success"]).to be_truthy
        expect(result["expiry"]).to eq "14 days"
      end
    end

    context "with expiration time" do
      it "returns json of upload" do
        result = Fileio.upload(path, expires: "3d")
        expect(result["success"]).to be_truthy
        expect(result["expiry"]).to eq "3 days"
      end
    end
  end
end
