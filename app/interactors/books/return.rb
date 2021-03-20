module Books
  class Return
    include Interactor

    delegate :params, to: :context
    def call
      create_return
    end

    private

    def create_return
      data = []
      user_id = params[:user_id].to_i
      book_ids = JSON.parse(params[:book_ids])
      byebug
      book_ids.each do |book_id|
        book = RentBook.find_by(user_id: user_id, book_id: book_id)
        book.must_return_at = Time.now
        context.fail!(error: rent.errors.full_messages) unless book.save
        data << book
      end
      context.rent = data
    end
  end
end
