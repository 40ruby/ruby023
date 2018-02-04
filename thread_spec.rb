require './thread_success.rb'

describe Thread do
    describe "#test_thread" do
        subject {test_thread}
        it {is_expected.to eq 5}
    end
end
