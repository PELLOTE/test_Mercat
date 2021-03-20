# module
module Books
  # class
  class Rent
    include Interactor

    delegate :params, to: :context
    def call
      create_rent
    end

    private

    def create_rent
      data = []
      user_id = params[:user_id].to_i
      book_ids = JSON.parse(params[:book_ids])
      book_ids.each do |book_id|
        data << RentBook.create(user_id: user_id,
                                book_id: book_id,
                                rent_at: Time.now, return_at: Time.now + 1.week
                               )
      end
      context.rent = data
    end
  end
end
