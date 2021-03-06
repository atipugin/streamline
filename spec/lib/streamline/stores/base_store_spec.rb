module Streamline
  module Stores
    RSpec.describe BaseStore do
      %w(save_event find_event find_subsequent_events).each do |method_name|
        describe method_name do
          it 'fails' do
            expect { subject.send(method_name) }
              .to raise_error(NotImplementedError)
          end
        end
      end
    end
  end
end
