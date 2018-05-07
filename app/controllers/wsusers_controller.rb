class WsusersController < ApplicationController
soap_service namespace: 'urn:WashOutUser', camelize_wsdl: :lower

  # Check user existence in DB by searching its username...
      soap_action "checkUsername",
                     :args => { :username => :string },
                     :return => { :userValid => :boolean, :userId => :integer}
      def checkUsername
          if (User.exists?(username: params[:username]))
              user = User.where(username: params[:username]).first
              render :soap => { :userValid => true, :userId => user.id}
          else
              render :soap => { :userValid => false, :userId => -1}
          end
      end
end
