/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webServiceSOAP;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Gonza
 */
@WebService(serviceName = "calculaComparaFechas")
public class calculaComparaFechas {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "calculaComparaFecha")
    public boolean calculaComparaFecha(@WebParam(name = "fecha") String fecha,@WebParam(name = "dia") String dia) throws ParseException {
        
        return comparaDiaSemana(fecha, dia);
    }
    
    public static String calcularDiaDeLaSemana(String fecha) throws ParseException {

        //Transformamos el input de String a Date
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-M-yyyy");
        Date newDate = new Date();
        newDate = dateFormat.parse(fecha);

        //Calculamos el dia de la semana
        GregorianCalendar cal = new GregorianCalendar();
        cal.setTime(newDate);
        int diaSemanaEntero = cal.get(Calendar.DAY_OF_WEEK);

        String diaSemana = "";

        switch (diaSemanaEntero) {
            case 1:
                diaSemana = "Domingo";
                break;
            case 2:
                diaSemana = "Lunes";
                break;
            case 3:
                diaSemana = "Martes";
                break;
            case 4:
                diaSemana = "Miercoles";
                break;
            case 5:
                diaSemana = "Jueves";
                break;
            case 6:
                diaSemana = "Viernes";
                break;
            case 7:
                diaSemana = "Sabado";
                break;

        }

        return diaSemana;
    }
    
    public static boolean comparaDiaSemana(String fecha,String diaIntroducido) throws ParseException{
        String diaCalculado = calcularDiaDeLaSemana(fecha);
        return diaCalculado.equals(diaIntroducido);
    }
    
}
