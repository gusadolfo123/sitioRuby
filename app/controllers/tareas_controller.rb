class TareasController < ApplicationController
    def index
        @tareas = Tarea.all
    end
    def show
        @tarea = Tarea::find(params[:id])
    end
    def new
        @tarea = Tarea.new
    end
    def edit
        @tarea = Tarea::find(params[:id])
    end
    def update
        @tarea = Tarea.find(params[:id])
 
        if @tarea.update(tareas_params)
            redirect_to @tarea
        else
            render 'edit'
        end
    end    
    def create
        # @tarea = Tarea.new( titulo: params[:tarea][:titulo], 
        #                     descripcion: params[:tarea][:descripcion])
        @tarea = Tarea.new(tareas_params)
        if @tarea.save
            redirect_to @tarea
        else    
            render 'new'
        end
        # redirect_to controller: "tareas", action: "show", id: @tarea.id
        
    end
    def destroy
        @tarea = Tarea.find(params[:id])
        @tarea.destroy

        redirect_to tareas_path        
    end

    private
        def tareas_params
            params.require(:tarea).permit(:titulo, :descripcion)
        end
end
