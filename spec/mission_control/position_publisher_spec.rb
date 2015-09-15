module MissionControl
  describe PositionPublisher do
    describe '#publish' do
      let(:output) { double('output', puts: nil) }

      let(:position) { double('position') }

      let(:rover) { double('rover', position: position) }

      subject { described_class.new([rover], output: output).publish }

      it 'publishes the position of the rover' do
        expect(output).to receive(:puts).with(position)

        subject
      end
    end
  end
end
