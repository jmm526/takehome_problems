# frozen_string_literal: true

require_relative 'scoring'
require_relative 'scoringHash'

# Tests for when class is initialized every time

RSpec.describe Scoring do
  describe '#score_letter' do
    context 'in English' do
      subject { described_class.new(:english) }   # Test for English letters
      %w[A E I O U L N R S T].each do |letter|
        it "scores a #{letter} as 1 point" do
          expect(subject.score_letter(letter))
              .to eq 1
        end
      end

      %w[D G].each do |letter|
        it "scores a #{letter} as 2 point" do
          expect(subject.score_letter(letter))
              .to eq 2
        end
      end

      %w[B C M P].each do |letter|
        it "scores a #{letter} as 3 point" do
          expect(subject.score_letter(letter))
              .to eq 3
        end
      end

      %w[F H V W Y].each do |letter|
        it "scores a #{letter} as 4 point" do
          expect(subject.score_letter(letter))
              .to eq 4
        end
      end

      %w[K].each do |letter|
        it "scores a #{letter} as 5 point" do
          expect(subject.score_letter(letter))
              .to eq 5
        end
      end

      %w[J X].each do |letter|
        it "scores a #{letter} as 8 point" do
          expect(subject.score_letter(letter))
              .to eq 8
        end
      end

      %w[Q Z].each do |letter|
        it "scores a #{letter} as 10 point" do
          expect(subject.score_letter(letter))
              .to eq 10
        end
      end

      %w[RR].each do |letter|                     # Test incorrect letter
        it "scores a #{letter} as 0 points" do
          expect(subject.score_letter(letter))
              .to eq 0
        end
      end
    end

    context 'in Spanish' do
      subject { described_class.new(:Spanish) } # Test spanish letters, also for capitalization
      %w[A E O S I U N L R T].each do |letter|
        it "scores a #{letter} as 1 point" do
          expect(subject.score_letter(letter))
              .to eq 1
        end
      end

      %w[C D G].each do |letter|
        it "scores a #{letter} as 2 point" do
          expect(subject.score_letter(letter))
              .to eq 2
        end
      end

      %w[B M P].each do |letter|
        it "scores a #{letter} as 3 point" do
          expect(subject.score_letter(letter))
              .to eq 3
        end
      end

      %w[F H V Y].each do |letter|
        it "scores a #{letter} as 4 point" do
          expect(subject.score_letter(letter))
              .to eq 4
        end
      end

      %w[J].each do |letter|
        it "scores a #{letter} as 6 point" do
          expect(subject.score_letter(letter))
              .to eq 6
        end
      end

      %w[K LL Ñ Q RR W X].each do |letter|
        it "scores a #{letter} as 8 point" do
          expect(subject.score_letter(letter))
              .to eq 8
        end
      end

      %w[z].each do |letter|              # Test for lower case letter
        it "scores a #{letter} as 10 point" do
          expect(subject.score_letter(letter))
              .to eq 10
        end
      end
    end

    context 'in Wrong Language' do
      subject { described_class.new(:Japanese) } # Test for incorrect language
      %w[A].each do |letter|
        it "scores a #{letter} as 0 points" do
          expect(subject.score_letter(letter))
              .to eq 0
        end
      end
    end
  end
end


RSpec.describe ScoringHash do
  describe '#score_letter' do
    context 'in English' do
      subject { described_class.new(:english) }   # Test for English letters
      %w[A E I O U L N R S T].each do |letter|
        it "scores a #{letter} as 1 point" do
          expect(subject.score_letter(letter))
              .to eq 1
        end
      end

      %w[D G].each do |letter|
        it "scores a #{letter} as 2 point" do
          expect(subject.score_letter(letter))
              .to eq 2
        end
      end

      %w[B C M P].each do |letter|
        it "scores a #{letter} as 3 point" do
          expect(subject.score_letter(letter))
              .to eq 3
        end
      end

      %w[F H V W Y].each do |letter|
        it "scores a #{letter} as 4 point" do
          expect(subject.score_letter(letter))
              .to eq 4
        end
      end

      %w[K].each do |letter|
        it "scores a #{letter} as 5 point" do
          expect(subject.score_letter(letter))
              .to eq 5
        end
      end

      %w[J X].each do |letter|
        it "scores a #{letter} as 8 point" do
          expect(subject.score_letter(letter))
              .to eq 8
        end
      end

      %w[Q Z].each do |letter|
        it "scores a #{letter} as 10 point" do
          expect(subject.score_letter(letter))
              .to eq 10
        end
      end

      %w[RR].each do |letter|                     # Test incorrect letter
        it "scores a #{letter} as 0 points" do
          expect(subject.score_letter(letter))
              .to eq 0
        end
      end
    end

    context 'in Spanish' do
      subject { described_class.new(:Spanish) } # Test spanish letters, also for capitalization
      %w[A E O S I U N L R T].each do |letter|
        it "scores a #{letter} as 1 point" do
          expect(subject.score_letter(letter))
              .to eq 1
        end
      end

      %w[C D G].each do |letter|
        it "scores a #{letter} as 2 point" do
          expect(subject.score_letter(letter))
              .to eq 2
        end
      end

      %w[B M P].each do |letter|
        it "scores a #{letter} as 3 point" do
          expect(subject.score_letter(letter))
              .to eq 3
        end
      end

      %w[F H V Y].each do |letter|
        it "scores a #{letter} as 4 point" do
          expect(subject.score_letter(letter))
              .to eq 4
        end
      end

      %w[J].each do |letter|
        it "scores a #{letter} as 6 point" do
          expect(subject.score_letter(letter))
              .to eq 6
        end
      end

      %w[K LL Ñ Q RR W X].each do |letter|
        it "scores a #{letter} as 8 point" do
          expect(subject.score_letter(letter))
              .to eq 8
        end
      end

      %w[z].each do |letter|              # Test for lower case letter
        it "scores a #{letter} as 10 point" do
          expect(subject.score_letter(letter))
              .to eq 10
        end
      end
    end

    context 'in Wrong Language' do
      subject { described_class.new(:Japanese) } # Test incorrect language
      %w[A].each do |letter|
        it "scores a #{letter} as 0 points" do
          expect(subject.score_letter(letter))
              .to eq 0
        end
      end
    end
  end
end
