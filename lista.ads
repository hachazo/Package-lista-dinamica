generic
   
   type Tipoelemento is private;
   
   package Lista is
      
      type Tipolista is private;
         
         function Vacia(Lista: Tipolista) return Boolean;
         function Esta(Lista: Tipolista; Elem: Tipoelemento) return Boolean;
		 
		 procedure Crear (Lista: out TipoLista);
         procedure Insertar(Lista: in out Tipolista; Elem: in Tipoelemento);
		 procedure Insertarfinal(Lista:in out Tipolista; Elem: in Tipoelemento);
         procedure Suprimir(Lista: in out Tipolista; Elem: Tipoelemento);
         procedure Limpiar(Lista: in out Tipolista);
         
         function Info(Lista: Tipolista) return Tipoelemento;
         function Sig(Lista: Tipolista) return Tipolista;
         
         Listavacia: exception;
         
         private
            
         type tiponodo;
         type Tipolista is access Tiponodo;
         
         type Tiponodo is record
            Info: Tipoelemento;
            Sig: Tipolista;
         end record;
         
      end lista;
-- package Listainc is new Lista(Tiporegistro);
-- use Listainc;
-- Lista:Tipolista;