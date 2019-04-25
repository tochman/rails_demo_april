
RSpec.describe Article, type: :model do
  it { is_expected.to have_db_column :title}
end
