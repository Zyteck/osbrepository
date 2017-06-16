xquery version "1.0" encoding "utf-8";

declare namespace ns2="http://interbank.com.pe/bus/admin/interface/getMensaje";
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/sp/dbReference";
declare namespace xf="http://www.tempuri.com/funciones";

declare variable $BodyRequest as element(ns2:BodyRequest) external;

declare function xf:funcPrepararRespuesta($OutputParameters as element(ns1:OutputParameters)) 
as element(ns2:BodyResponse){
    <ns2:BodyResponse>
        <respuesta>1</respuesta>
        <descripcionRespuesta>{"EJECUCION CON EXITO"}</descripcionRespuesta>
        <ListaMensajes>
            <Mensaje>
                <id>{fn:data($BodyRequest/ListadoId/id)}</id>
                <tipo>{fn:data($BodyRequest/tipo)}</tipo>
                <dato>{fn:data($OutputParameters/ns1:CUR_MENSAJE/ns1:Row/ns1:Column)}</dato>
                <datoError/>
            </Mensaje>
        </ListaMensajes>
    </ns2:BodyResponse>
};

declare variable $OutputParameters as element(ns1:OutputParameters) external;
xf:funcPrepararRespuesta($OutputParameters)
