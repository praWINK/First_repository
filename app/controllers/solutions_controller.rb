class SolutionsController < ApplicationController

  before_action only: [:new, :create]

  def create
    find_question
    @solution = @question.solutions.build(solution_params.merge({model_user_id: @question.model_user_id}))
    if @solution.save
      redirect_to question_path(@question), notice: 'solution was successfully created.'
    else
      render :new
    end
  end


  def edit
    find_question
    @solution = @question.solutions.where(:id => params[:id]).first
    p @solution
    puts "LLLLLLLLLLLLLLLLLLLLLLLLL"
  end

  def destroy
    find_question
    @solution = @question.solutions.where(:id => params[:id]).first
    @solution.destroy
    respond_to do |format|
      format.html { redirect_to @question, notice: 'solution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    find_question
    @solution = @question.solutions.where(:id => params[:id]).first
    respond_to do |format|
      if @solution.update(solution_params)
        format.html { redirect_to  @question, notice: 'solution was successfully updated.' }
        format.json { render :show, status: :ok, location:  @question }
      else
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    find_question
    @solution = @question.solutions.find(params[:id])
  end

  def index
    @solutions = Solution.all
  end

  def new
    find_question
    @solution = @question.solutions.build
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_solution
    @solution = solution.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def solution_params
    params.require(:solution).permit(:solution, :model_user_id)
  end

  def find_question
    @question = Question.find params[:question_id]
  end


end
