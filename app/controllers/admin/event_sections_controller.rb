class Admin::EventSectionsController < AdminController
  before_action :find_event

   def index
     @sections = @event.sections
   end

   def new
     @section = @event.sections.new
   end

   def create
     @section = @event.sections.new(section_params)
     if @section.save
       redirect_to admin_event_sections_path(@event)
     else
       render "new"
     end
   end

   def edit
     @section = @event.sections.find(params[:id])
   end

   def update
     @section = @event.sections.find(params[:id])

     if @section.update(section_params)
       redirect_to admin_event_sections_path(@event)
     else
       render "edit"
     end
   end

   def destroy
     @section = @event.sections.find(params[:id])
     @section.destroy

     redirect_to admin_event_sections_path(@event)
   end

   protected

   def find_event
     @event = Event.find_by_friendly_id!(params[:event_id])
   end

   def section_params
     params.require(:section).permit(:name)
   end
end
