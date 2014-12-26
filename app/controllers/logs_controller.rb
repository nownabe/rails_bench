class LogsController < ApplicationController
  def create
    @log = Log.new
    @log.ip = request.env["HTTP_X_FORWARDED_FOR"] || request.remote_ip
    @log.save!
    render "show", formats: [:json], handlers: [:jbuilder]
  end
end
