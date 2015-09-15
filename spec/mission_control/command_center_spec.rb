module MissionControl
  describe CommandCenter do
    describe '#execute' do
      let(:commands) { double('commands') }

      let(:communicator) { double('communicator', communicate: online_rovers)}

      let(:online_rovers) { double('online_rovers') }

      let(:publisher) { double('publisher', publish: nil)}

      subject{ described_class.new(commands).execute }

      before do
        allow(Communicator).to receive(:new).with(commands).and_return(communicator)
        allow(PositionPublisher).to receive(:new).with(online_rovers).and_return(publisher)
      end

      it 'publishes the positions of the rovers' do
        expect(publisher).to receive(:publish)

        subject
      end
    end
  end
end
