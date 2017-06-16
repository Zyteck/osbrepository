xquery version "1.0" encoding "utf-8";

declare namespace ns1="http://ws.soap.com";
declare namespace ns2="http://www.examples.com/wsdl/ConsultaDrogaService.wsdl";
declare namespace xf="http://www.tempuri.com/funciones";

declare function xf:funcPrepararRespuesta($obtenerDrogaResponse as element(ns1:obtenerDrogaResponse)) 
as element(ns2:ConsultaDrogaResponse){
    <ns2:ConsultaDrogaResponse>
        <drug>
            <name>{fn:data($obtenerDrogaResponse/ns1:obtenerDrogaReturn/ns1:nombre)}</name>
            <description>{fn:data($obtenerDrogaResponse/ns1:obtenerDrogaReturn/ns1:descripcion)}</description>
            <type>{fn:data($obtenerDrogaResponse/ns1:obtenerDrogaReturn/ns1:tipoDroga)}</type>
            <classification>{fn:data($obtenerDrogaResponse/ns1:obtenerDrogaReturn/ns1:clasificacion)}</classification>
        </drug>
    </ns2:ConsultaDrogaResponse>
};

declare variable $obtenerDrogaResponse as element(ns1:obtenerDrogaResponse) external;
xf:funcPrepararRespuesta($obtenerDrogaResponse)
