class PagesController < ActionController::Base
	def benefitṔanel
	end

	def reportspannel

		@obra = Obra.new
		#@asformulary = Asformulary.new

		#puts params[:obra][:id]
		
		
	end


	def logBeneficiosCheckAsistencia
		@logbenefitsfinal = Logbenefitsfinal.new
		@assignbenefit = Assignbenefit.where(benefit_id: params[:benefit][:benefit_id], idobra: params[:centrocosto][:centrocosto_id])

		if params[:benefit][:benefit_id] == ""
			@assignbenefit = Assignbenefit.where(idobra: params[:centrocosto][:centrocosto_id])
		end


		if params[:centrocosto][:centrocosto_id] == ""
			@assignbenefit = Assignbenefit.where(benefit_id: params[:benefit][:benefit_id])

		end
	end


	def indexBenefitPerName


		@assignbenefit = Assignbenefit.where(benefit_id: params[:benefit][:benefit_id], idobra: params[:centrocosto][:centrocosto_id])
		Rails.application.config.ab = Assignbenefit.where(benefit_id: params[:benefit][:benefit_id], idobra: params[:centrocosto][:centrocosto_id])

		if params[:benefit][:benefit_id] == ""
			@assignbenefit = Assignbenefit.where(idobra: params[:centrocosto][:centrocosto_id])
			Rails.application.config.ab = Assignbenefit.where(idobra: params[:centrocosto][:centrocosto_id])
		end


		if params[:centrocosto][:centrocosto_id] == ""
			@assignbenefit = Assignbenefit.where(benefit_id: params[:benefit][:benefit_id])
			Rails.application.config.ab = Assignbenefit.where(benefit_id: params[:benefit][:benefit_id])

		end

		

    	
    	respond_to do |format|
        
        format.pdf {
          render pdf: "Reporte",
          template: "layouts/reporteLog"
        }
        format.html




          
		#@assignbenefit = Assignbenefit.find

	end

	def download_pdf
		@assignbenefit = Rails.application.config.ab
    	
        pdf = WickedPdf.new.pdf_from_string(
		render_to_string('layouts/reporteLog.pdf.erb', layout: false)
		)

		send_data pdf, :filename => "resume.pdf", :type => "application/pdf",:disposition => "attachment"

    	end




	end


end