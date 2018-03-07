class StaticController < ApplicationController
  def homepage
    if admin_types.include?(current_user.type)
      @pending_approvals = Post.where(status: 'submitted').page(params[:page]).per(9)
      @recent_audit_items = AuditLog.last(9)
    else
      #something else
    end
  end
end