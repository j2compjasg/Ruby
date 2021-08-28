Class Cliente

    initialize ()
        @@newid +=
        @id = newid
        @razsoc = ''
        @correo = ''
        @rut = ''
    end

    def getRazsoc
        @razsoc
    end

    def setRazsoc(raz)
        @razsoc = raz
    end

    def getRut
        @rut
    end

    def setRut(r)
        @rut = r
    end

    def getCorreo
        @correo
    end

    def setCorreo (c)
        @correo = c
    end

    def getId
        @id
    end


end