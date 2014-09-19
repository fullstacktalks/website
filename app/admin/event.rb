ActiveAdmin.register Event do

  form :html => { :enctype => 'multipart/form-data' } do |f|
    f.inputs 'Event Details' do
      f.input :starts_at, as: :datepicker
      f.input :description
      f.input :url
    end
    f.actions
  end

end
