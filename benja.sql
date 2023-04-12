IF EXTRACT(MONTH FROM i.FECHAC) =: xMes THEN
Create table p_arriendosIPC (
   idpropiedad int NOT NULL,
   FechaProceso date NOT NULL,
   rut varchar2(12) NOT NULL,
   ValorArriendoActual number(12) NOT NULL,
   Incremento number(12) NOT NULL,
   ValorArriendoNuevo number (12) NOT NULL,
   CONSTRAINT FK_arrIPC FOREIGN KEY(idpropiedad) REFERENCES P_propiedades(idpropiedad),
   CONSTRAINT FK_arrIPCCli FOREIGN KEY(rut) REFERENCES P_cliente(rut));

Create table p_Gastoscomunes (
   idpropiedad int NOT NULL,
   FechaGastoComun date NOT NULL,
   Valorgastocomun number (12) NOT NULL,
   CONSTRAINT FK_GastoComun_Pro FOREIGN KEY(idpropiedad) REFERENCES P_propiedades(idpropiedad));


SELECT * FROM P_PROPIEDADES;

SELECT * FROM P_TIPOPROPIEDAD;

SELECT * FROM P_ARRIENDOACTUAL;

SELECT * FROM P_CLIENTE;


VARIABLE xRut varchar2;
EXEC :xRut := '';


DECLARE

 CURSOR IPC is SELECT * FROM P_ARRIENDOACTUAL;
 ValorArriendoActual number(15);
 Incremento number(15);
 ValorArriendoNuevo number(15);

BEGIN






END; 


DECLARE

 CURSOR IPC is SELECT * FROM P_ARRIENDOACTUAL;
 ValorArriendoActual number(15);
 Incremento number(15);
 ValorArriendoNuevo number(15);

BEGIN






END; 