module MissionControl
  describe Rover do
    describe '#move' do
      let(:x) { 1 }

      let(:y) { 2 }

      let(:instance) { described_class.new(x: x, y: y, direction: direction) }

      context 'when a L command is issued' do
        before do
          instance.move('L')
        end

        subject{ instance.direction }

        context 'when the direction is N' do
          let(:direction) { 'N' }

          it 'changes the direction to W' do
            expect(subject).to eq 'W'
          end
        end

        context 'when the direction is W' do
          let(:direction) { 'W' }

          it 'changes the direction to S' do
            expect(subject).to eq 'S'
          end
        end

        context 'when the direction is S' do
          let(:direction) { 'S' }

          it 'changes the direction to E' do
            expect(subject).to eq 'E'
          end
        end

        context 'when the direction is E' do
          let(:direction) { 'E' }

          it 'changes the direction to N' do
            expect(subject).to eq 'N'
          end
        end
      end

      context 'when a R command is issued' do
        before do
          instance.move('R')
        end

        subject{ instance.direction }

        context 'when the direction is N' do
          let(:direction) { 'N' }

          it 'changes the direction to E' do
            expect(subject).to eq 'E'
          end
        end

        context 'when the direction is E' do
          let(:direction) { 'E' }

          it 'changes the direction to S' do
            expect(subject).to eq 'S'
          end
        end

        context 'when the direction is S' do
          let(:direction) { 'S' }

          it 'changes the direction to W' do
            expect(subject).to eq 'W'
          end
        end

        context 'when the direction is W' do
          let(:direction) { 'W' }

          it 'changes the direction to N' do
            expect(subject).to eq 'N'
          end
        end
      end

      context 'when a M command it issued' do
        before do
          instance.move('M')
        end

        subject{ instance.position }

        context 'when the direction is N' do
          let(:direction) { 'N' }

          it 'moves the y coordinate 1 forward' do
            expect(subject).to eq "#{x} #{y + 1} N"
          end
        end

        context 'when the direction is E' do
          let(:direction) { 'E' }

          it 'moves the x coordinate 1 forward' do
            expect(subject).to eq "#{x + 1} #{y} E"
          end
        end

        context 'when the direction is S' do
          let(:direction) { 'S' }

          it 'moves the y coordinate 1 backward' do
            expect(subject).to eq "#{x} #{y - 1} S"
          end
        end

        context 'when the direction is W' do
          let(:direction) { 'W' }

          it 'moves the x coordinate 1 backward' do
            expect(subject).to eq "#{x - 1} #{y} W"
          end
        end
      end
    end
  end
end
