module MissionControl
  describe Communicator do
    describe '#communicate' do
      let(:instance) { described_class.new(commands) }

      before do
        instance.communicate
      end

      context 'when there are rovers' do
        let(:commands) { ['1 2 N', '2 4 E']}

        subject{ instance.rovers }

        it 'creates rovers' do
          expect(subject.length).to be 2
        end
      end

      context 'when there are commands' do
        let(:commands) { ['1 2 N', 'M']}

        subject{ instance.rovers.first }

        it 'moves rovers' do
          expect(subject.position).to eq '1 3 N'
        end
      end
    end
  end
end
