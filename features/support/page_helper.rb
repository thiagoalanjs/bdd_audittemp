Dir[File.join(File.dirname(__FILE__),
'../pages/*_page.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Pages
    def login
        @login ||= Login.new
    end
    
    def cadastro
        @cadastro ||= Cadastro.new
    end
end
