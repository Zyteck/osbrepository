xquery version "1.0" encoding "utf-8";

declare namespace ns2="http://ws.soap.com";
declare namespace ns1="http://www.examples.com/wsdl/ConsultaDrogaService.wsdl";

declare namespace xf="http://www.tempuri.com/funciones";


declare function xf:funcPrepararSolicitud($ConsultaDrogaRequest as element(ns1:ConsultaDrogaRequest)) 
as element(ns2:obtenerDroga){
    <ns2:obtenerDroga>
        <ns2:nombre>{fn:data($ConsultaDrogaRequest/name)}</ns2:nombre>
    </ns2:obtenerDroga>
};

declare variable $ConsultaDrogaRequest as element(ns1:ConsultaDrogaRequest) external;
xf:funcPrepararSolicitud($ConsultaDrogaRequest)
