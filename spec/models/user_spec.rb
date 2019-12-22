require 'rails_helper'

RSpec.describe User, type: :model do
  context "db" do
    context "indexes" do
      it { should have_db_index(:email).unique(true) }
    end

    context "columns" do
      it { should have_db_column(:email).of_type(:string).with_options(limit: 100, null: false) }
    end
  end

  context "attributes" do
    it "has email" do
      expect(build(:user, email: "user@example.com")).to have_attributes(email: "user@example.com")
    end
  end

  context "validation" do
    let(:user) { build(:user, email: "user@example.com") }

    it "requires unique email" do
      expect(user).to validate_uniqueness_of(:email)
    end

    it "requires email" do
      expect(user).to validate_presence_of(:email)
    end
  end
end
