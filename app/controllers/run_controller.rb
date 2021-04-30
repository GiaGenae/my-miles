class RunController < ApplicationController

    #create
    get '/runs/new' do
        erb :'/runs/new'
    end

    post '/runs' do #process form
        @run = Run.create(
            date: params[:date],
            distance: params[:distance],
            duration: params[:duration]
        )
        redirect "/runs/#{@run.id}"
    end

    #read

    get '/runs/:id' do
        @run = Run.find(params[:id])
        erb :'/runs/show'
    end

    #update

    #delete
end