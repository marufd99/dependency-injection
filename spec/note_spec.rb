require './lib/note'

describe Note do
#  describe "#display" do
    it "prints a note with title" do
      formatter_double = double :noteformatter, format: "Title:some-title\nsome-body"
      note = Note.new(formatter_double)
      expect(note.display).to eq "Title:some-title\nsome-body"
    end

  describe NoteFormatter do
    it 'formats a note' do
      note = double(:note, title: "some-title", body: "some-body")
      expect(subject.format(note)).to eq "Title:some-title\nsome-body"
    end
end
end


# smiley_spec.rb
#  describe Smiley do
#    describe "#get" do
#     it "returns a smiley" do
#       smiley = Smiley.new
#       expect(smiley.get).to eq ":)"
#     end
#   end
# end
