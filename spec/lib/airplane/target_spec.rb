module Airplane
  RSpec.describe Target do
    include described_class

    include_context 'event'

    describe '#track_event' do
      it 'invokes Tracker' do
        expect(Airplane.tracker).to receive(:track_event)
        track_event(event_name)
      end
    end
  end
end