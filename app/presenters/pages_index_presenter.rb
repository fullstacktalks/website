class PagesIndexPresenter

  def next_event
    @next_event ||= Event.next || NullEvent.new
  end

end
