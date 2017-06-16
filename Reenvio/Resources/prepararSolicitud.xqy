xquery version "1.0" encoding "utf-8";

declare namespace ns1="http://interbank.com.pe/bus/admin/interface/getMensaje";
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/sp/dbReference";
declare namespace xf="http://www.tempuri.com/funciones";

declare function xf:funcPrepararSolicitud($BodyRequest as element(ns1:BodyRequest)) 
as element(ns2:InputParameters){
    <ns2:InputParameters>
        <ns2:PIV_MSGID>{fn:data($BodyRequest/ListadoId/id)}</ns2:PIV_MSGID>
        <ns2:PIV_OPERACION>{fn:data($BodyRequest/operacion)}</ns2:PIV_OPERACION>
        <ns2:PIV_KEY/>
    </ns2:InputParameters>
};

declare variable $BodyRequest as element(ns1:BodyRequest) external;
xf:funcPrepararSolicitud($BodyRequest)
