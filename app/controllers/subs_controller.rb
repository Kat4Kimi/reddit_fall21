# class SubsController < ApplicationController
#   # Controller traffic directors, take from the routes and 
#   # lead into the actions, run the methods
#   # All of our actions need to return html, xml, json, or redirect to a method

#   # actions CRUD, functions we are able to either view or do in the application
#   # with each action there will be a corresponding method. 
#   # The name should match the action
#   # each of the actions will respond to the the correcsponding request? NOT SURE IF I HEARD THAT CORRECTLY
#   # ACTIONS       HTTP VERBS
#   # #create       post
#   # read          get
#   # update        put/patch
#   # destroy       delete

#   # logic will be in the model

#   # CONTROLLER PATTERN

#   #--ACTIONS--
# # INDEX - show all reacords in table, takes you to a page where you display all records in table
# # SHOW - takes in ID, and shows a single records, page/logic to show a single record
# # NEW - pages, new form, this will take us to a page that is a form to fill out a new object itself. / Fill out fields for a new object, create in memory. It won't save to dataase unless they hit save.
# # EDIT - pages, needs an ID, edit for, to fill out fields that the ID records return. It will pull in existing sub so you can fill the boxes out
# # CREATE - applies to the db, creates the record in the db, uses info from new form NEW takes you to the form but create saves it to the database.
# # UPDATE - applies to the db, update the records in the db, uses info from the edit form
# # DESTROY - appies to the db, deletes a single record when it passes through the ID


# # Once we have VIEW working we can see the form and the info passed to the user
# # CONTROLLER PATTERN
# # need your model name (it will be plural))

# # --EXAMPLE--
#   # def index
#   #   @model_names = Model.all
#   #   render components: 'ModelNames', props: { model_names: @model_names 
#   # end

#   # def show
#   #   @model_name = Model_name.find(params[:id])
#   #   render components: 'ModelName', props: { model_name: @model_name }
#   # end

#   # def new
#   #   @model_name = Model_name.newrender components: 'ModelNameNew', props: { model_name: @model_name }
# #   # end

# #   def create 
# #     @model_name = Model_name.new(model_name_params)
# #     if @model_name.save
# #       # got to helper
# #     else
# #       render compeonents: 'ModelNameNew', props: { model_name: @model_name }
# #     end
# #   end
# #   private
# #   def model_name_params
# #     params,require(:model_name).permit(:atrr, :attr2)


# #   def edit
# #     @model_name = Model_name.find(params[:id])
# #     render components: 'ModelNameEdit', props: { model_name: @model_name }

# #   end

# #   def update 
# #     @model_name = Model_name.find(params[:id])
# #     if @model_name.update(model_name_params)
# #       # take to another helper
# #     else
# #       render components: 'ModelNameEdit', props: { model_name: @model_name }
# #   end
# # end

# # # The reason it is destroy is because that is the action listed on the http: 300 site

# # def destroy
# #   @model_name = Model_name.find(params[:id])
# #   @model_name.destroy
# #   #send to another action
# #   #or
# #   Model_name.find(params[:id]).destroy 
# # end

# def index
# @subs = Sub.allrender 
# component: 'Subs', props: { subs: @subs }
# end

# def show
# @sub = Sub.find(params[:id])
# render component: 'Sub', props: { sub: @sub }
# end

# def new
# @sub = Sub.new
# render component: 'Sub', props: { sub: @sub }
# end

# def create
#   @sub = Sub.new(sub_params)
#   if @sub.save
#     redirect_to subs_path
#   else
#     render coponent: 'SubNew', propls: { sub: @sub }
#   end
# end

# def edit
#   @sub = Sub.find(params[:id])
#   render component: 'SubEdit', props: { sub: @sub }
# end

# def update
#   @sub = Sub.find(params[:id])
#   if @sub.update(sub_params)
#   redirect_to subs_path
#   else
#     render component: 'SubEdit', props: { sub: @ sub }
#   end
# end


# private
# { sub:{name: 'food'} } #the name here goes into name below in sub_params
# { sub:{name: 'food', age:2} } #tthis won't work because we aren't permitting that
# { sub:{name: 'food', SELECT*CCNUM} } #this help tackle hackers - go back to video to listen again
# { sub:{name: 'food', SELECT*CCNUM, SELECT*CCNUM} } #this help tackle hackers - go back to video to listen again

# # FIRST STOP INSIDE OF PRIVATE AND SUB PARAMS IN MODEL STRONGLY RECCOMENDS WRITING VALIDATIONS
# def sub_params
#     params.require(:sub).permit(:name)
#   end
# end


# class SubsController < ApplicationController
#   # Controller traffic directors, take from the routes and 
#   # lead into the actions, run the methods

#   # actions CRUD, functions we are able to view, do in the app
#   # with each action they will have a method to it. name should match action 
#   # actions      http verbs
#   # Create       Post 
#   # read         Get
#   # update       put/patch
#   # destroy      delete

#   # logic will be in the model 

#   # actions 
#   # index - show all records in table, take to a page
#   # show - takes in a id, and show a single record , page/logic to show a single record
#   # new - pages, new form, to fill out fields for a new object, create in memo
#   # edit - pages, need id, edit form, to fill out fields that the id records return
#   # Create - apply to the db, create the record in the db, uses info from new form
#   # update - apply to the db, update the record in the db, uses info from the edit form
#   # destroy - apply to the db, delete a single record with passed id

#   # controller pattern 




#   def index
#   end

#   def show
#   end

#   def new
#   end

#   def edit
#   end
# end
# white_check_mark
# eyes
# raised_hands::skin-tone-3






# Henry Doan  8:31 PM
# class SubsController < ApplicationController
#   # Controller traffic directors, take from the routes and 
#   # lead into the actions, run the methods
#   # return html, xml, json, or redirect to a method that does

#   # actions CRUD, functions we are able to view, do in the app
#   # with each action they will have a method to it. name should match action 
#   # actions      http verbs
#   # Create       Post 
#   # read         Get
#   # update       put/patch
#   # destroy      delete

#   # logic will be in the model 

#   # actions 
#   # index - show all records in table, take to a page
#   # show - takes in a id, and show a single record , page/logic to show a single record
#   # new - pages, new form, to fill out fields for a new object, create in memo
#   # edit - pages, need id, edit form, to fill out fields that the id records return
#   # Create - apply to the db, create the record in the db, uses info from new form
#   # update - apply to the db, update the record in the db, uses info from the edit form
#   # destroy - apply to the db, delete a single record with passed id

#   # controller pattern 
#   # def index
#   #   @model_names = Model_name.all
#   #   render components: 'ModelNames', props: { model_names: @model_names }
#   # end

#   # def show 
#   #   @model_name = Model_name.find(params[:id])
#   #   render components: 'ModelName', props: { model_name: @model_name }
#   # end

#   # def new 
#   #   @model_name = Model_name.new
#   #   render components: 'ModelNameNew', props: { model_name: @model_name }
#   # end

#   # def create
#   #   @model_name = Model_name.new(model_name_params)
#   #   if @model_name.save 
#   #     # go to a helper 
#   #   else
#   #     render components: 'ModelNameNew', props: { model_name: @model_name }
#   #   end
#   # end

#   # private 
#   #   def model_name_params
#   #     params.require(:model_name).permit(:attr, :attr2)
#   #   end

#   # def edit 
#   #   @model_name = Model_name.find(params[:id])
#   #   render components: 'ModelNameEdit', props: { model_name: @model_name }
#   # end

#   # def update
#   #   @model_name = Model_name.find(params[:id])
#   #   if @model_name.update(model_name_params)
#   #     # take to another helper
#   #   else
#   #     render components: 'ModelNameEdit', props: { model_name: @model_name }
#   #   end
#   # end

#   # def destroy
#   #   @model_name = Model_name.find(params[:id])
#   #   @model_name.destroy
#   #   # send to another action
#   #   #or 
#   #   Model_name.find(params[:id]).destroy
#   # end


#   def index
#     @subs = Sub.all
#     render component: 'Subs', props: { subs: @subs }
#   end

#   def show
#     @sub = Sub.find(params[:id])
#     render component: 'Sub', props: { sub: @sub }
#   end

#   def new
#     @sub = Sub.new
#     render component: 'SubNew', props: { sub: @sub }
#   end

#   def create 
#     @sub = Sub.new(sub_params)
#     if @sub.save 
#       redirect_to subs_path
#     else
#       render component: 'SubNew', props: { sub: @sub }
#     end
#   end

#   def edit
#     @sub = Sub.find(params[:id])
#     render component: 'SubEdit', props: { sub: @sub }
#   end

#   def update 
#     @sub = Sub.find(params[:id])
#     if @sub.update(sub_params)
#       redirect_to subs_path
#     else
#       render component: 'SubEdit', props: { sub: @sub }
#     end
#   end

#   def destroy
#     @sub = Sub.find(params[:id])
#     @sub.destroy
#     redirect_to subs_path

#     # or 
#     # Sub.find(params[:id]).destroy
#     # redirect_to subs_path
#   end

#   private 
#       # { sub:  {name: 'food'} }
#       # { sub:  {name: 'food', age: 2} }
#       # { sub:  {name: 'food', SELECT*CCNUM} }
#       # { sub:  {name: 'SELECT*CCNUM', SELECT*CCNUM} }
#       # to make sure the fields are valid going in
#     def sub_params
#       params.require(:sub).permit(:name)
#     end
# end

# class SubsController < ApplicationController
#   # Controller traffic directors, take from the routes and 
#   # lead into the actions, run the methods

#   # actions CRUD, functions we are able to view, do in the app
#   # with each action they will have a method to it. name should match action 
#   # actions      http verbs
#   # Create       Post 
#   # read         Get
#   # update       put/patch
#   # destroy      delete

#   # logic will be in the model 

#   # actions 
#   # index - show all records in table, take to a page
#   # show - takes in a id, and show a single record , page/logic to show a single record
#   # new - pages, new form, to fill out fields for a new object, create in memo
#   # edit - pages, need id, edit form, to fill out fields that the id records return
#   # Create - apply to the db, create the record in the db, uses info from new form
#   # update - apply to the db, update the record in the db, uses info from the edit form
#   # destroy - apply to the db, delete a single record with passed id

#   # controller pattern 




#   def index
#   end

#   def show
#   end

#   def new
#   end

#   def edit
#   end
# end
# white_check_mark
# eyes
# raised_hands::skin-tone-3






Henry Doan  8:31 PM
class SubsController < ApplicationController
  # Controller traffic directors, take from the routes and 
  # lead into the actions, run the methods
  # return html, xml, json, or redirect to a method that does

  # actions CRUD, functions we are able to view, do in the app
  # with each action they will have a method to it. name should match action 
  # actions      http verbs
  # Create       Post 
  # read         Get
  # update       put/patch
  # destroy      delete

  # logic will be in the model 

  # actions 
  # index - show all records in table, take to a page
  # show - takes in a id, and show a single record , page/logic to show a single record
  # new - pages, new form, to fill out fields for a new object, create in memo
  # edit - pages, need id, edit form, to fill out fields that the id records return
  # Create - apply to the db, create the record in the db, uses info from new form
  # update - apply to the db, update the record in the db, uses info from the edit form
  # destroy - apply to the db, delete a single record with passed id

  # controller pattern 
  # def index
  #   @model_names = Model_name.all
  #   render components: 'ModelNames', props: { model_names: @model_names }
  # end

  # def show 
  #   @model_name = Model_name.find(params[:id])
  #   render components: 'ModelName', props: { model_name: @model_name }
  # end

  # def new 
  #   @model_name = Model_name.new
  #   render components: 'ModelNameNew', props: { model_name: @model_name }
  # end

  # def create
  #   @model_name = Model_name.new(model_name_params)
  #   if @model_name.save 
  #     # go to a helper 
  #   else
  #     render components: 'ModelNameNew', props: { model_name: @model_name }
  #   end
  # end

  # private 
  #   def model_name_params
  #     params.require(:model_name).permit(:attr, :attr2)
  #   end

  # def edit 
  #   @model_name = Model_name.find(params[:id])
  #   render components: 'ModelNameEdit', props: { model_name: @model_name }
  # end

  # def update
  #   @model_name = Model_name.find(params[:id])
  #   if @model_name.update(model_name_params)
  #     # take to another helper
  #   else
  #     render components: 'ModelNameEdit', props: { model_name: @model_name }
  #   end
  # end

  # def destroy
  #   @model_name = Model_name.find(params[:id])
  #   @model_name.destroy
  #   # send to another action
  #   #or 
  #   Model_name.find(params[:id]).destroy
  # end


  def index
    @subs = Sub.all
    render component: 'Subs', props: { subs: @subs }
  end

  def show
    @sub = Sub.find(params[:id])
    render component: 'Sub', props: { sub: @sub }
  end

  def new
    @sub = Sub.new
    render component: 'SubNew', props: { sub: @sub }
  end

  def create 
    @sub = Sub.new(sub_params)
    if @sub.save 
      redirect_to subs_path
    else
      render component: 'SubNew', props: { sub: @sub }
    end
  end

  def edit
    @sub = Sub.find(params[:id])
    render component: 'SubEdit', props: { sub: @sub }
  end

  def update 
    @sub = Sub.find(params[:id])
    if @sub.update(sub_params)
      redirect_to subs_path
    else
      render component: 'SubEdit', props: { sub: @sub }
    end
  end

  def destroy
    @sub = Sub.find(params[:id])
    @sub.destroy
    redirect_to subs_path

    # or 
    # Sub.find(params[:id]).destroy
    # redirect_to subs_path
  end

  private 
      # { sub:  {name: 'food'} }
      # { sub:  {name: 'food', age: 2} }
      # { sub:  {name: 'food', SELECT*CCNUM} }
      # { sub:  {name: 'SELECT*CCNUM', SELECT*CCNUM} }
      # to make sure the fields are valid going in
    def sub_params
      params.require(:sub).permit(:name)
    end
end