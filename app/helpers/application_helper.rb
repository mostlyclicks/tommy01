module ApplicationHelper
  def main_nav
  	presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
  	presenter.menu_tag = "div class=\"collapse navbar-collapse navbar-inverse\" id=\"main-nav-collapse\""
    presenter.list_tag = "ul class=\"nav navbar-nav\""
  	presenter.max_depth = 0
  	presenter
  end
end
