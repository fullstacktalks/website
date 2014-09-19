class PagesIndexPresenter

  def next_event
    @next_event ||= Event.next || NullEvent.new
  end

  def past_events
    @past_events ||= Event.past
  end

end
