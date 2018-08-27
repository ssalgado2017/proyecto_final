ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
        column do
            panel 'Ultimas cotizaciones' do
                ul do
                    Quotation.last(5).map do |quotation|
                        li link_to(quotation.title, admin_quotation_path(quotation))
                    end
                end
            end
        end
        column do
            panel 'Cotizaciones más antiguas' do
                ul do
                    Quotation.first(5).map do |quotation|
                        li link_to(quotation.title, admin_quotation_path(quotation))
                    end
                end
            end
        end
        column do
            panel 'Usuarios' do
                ul do
                    li "Usuarios registrados: #{User.count}"
                    li "Administradores registrados: #{AdminUser.count}"
                end
            end
        end
   end
   panel 'Gráfico' do
    render 'shared/chart'
end 
  end # content
end
