class ItrcClient < Client
  def list_apps(page = 1, per_page = 20)
    get 'itrc/list_apps', page: page, per_page: per_page
  end

  def find_app(id)
    get 'itrc/find_app', id: id
  end

  def list_app_groups(page = 1, per_page = 20)
    get 'itrc/list_app_groups', page: page, per_page: per_page
  end

  def find_app_group(id)
    get 'itrc/find_app_group', id: id
  end

  def list_business_units(page = 1, per_page = 20)
    get 'itrc/list_business_units', page: page, per_page: per_page
  end

  def find_business_unit(id)
    get 'itrc/find_business_unit', id: id
  end

  def list_departments(page = 1, per_page = 20)
    get 'itrc/list_departments', page: page, per_page: per_page
  end

  def find_department(id)
    get 'itrc/find_department', id: id
  end
end
