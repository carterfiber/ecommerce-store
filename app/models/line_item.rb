class LineItem < ApplicationRecord
	belongs_to :product
	belongs_to :order, optional: true

	# def destroy
 #    @LineItem.destroy
 #    respond_to do |format|
 #      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
 #      format.json { head :no_content }
 #    end
 #  end

end
