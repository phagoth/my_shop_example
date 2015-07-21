class ItemsController < ApplicationController
  def index
    # @items = Item.all
    # render text: @items.map { |i| "#{i.name}: #{i.price}" }.join("<br/>")
    @items = Item.all
  end

  # /items/1 GET
  def show
    if @item = Item.where(id: params[:id]).first
      render "items/show" # Можно не указывать для стандартных методов
    else
      render text: "Page not found", status: 404
    end
  end

  # /items/new GET
  def new
  end

  # /items/1/edit GET
  def edit
  end

  # /items/ POST
  def create
    @item = Item.create(params[:item])
    p params
    render text: "#{@item.id}: #{@item.name} (#{!@item.new_record?})"
  end

  # /items/1 PUT
  def update
  end

  # /items/1 DELETE
  def destroy
  end
end
