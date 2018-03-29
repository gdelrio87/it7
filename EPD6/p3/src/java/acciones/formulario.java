/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.ConversionErrorFieldValidator;
import com.opensymphony.xwork2.validator.annotations.DateRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.DoubleRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.FieldExpressionValidator;
import com.opensymphony.xwork2.validator.annotations.IntRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RegexFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.ShortRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import com.opensymphony.xwork2.validator.annotations.UrlValidator;
import java.util.Date;

/**
 *
 * @author Gonza
 */
public class formulario extends ActionSupport {
    
    private Date fecha;
    private Double ingresos;
    private Double retencion;
    private Double neto;
    private String e_mail;
    private Integer edad;
    private String nombre;
    private String page;
    private Short hora_laboral;
    private Integer telefono;
    private Integer experiencia;
    
    public formulario() {
    }
    
    public String execute() throws Exception {
        return SUCCESS;
    }

    public Date getFecha() {
        return fecha;
    }

    @DateRangeFieldValidator(min = "01/01/60" , max = "01/01/00",key="fecha.date")
    @ConversionErrorFieldValidator(key = "fecha.conversion")
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Double getIngresos() {
        return ingresos;
    }

    @DoubleRangeFieldValidator(minInclusive = "700,55" ,maxExclusive = "1500,66",key="ingresos.double")
    @ConversionErrorFieldValidator(key = "ingresos.conversion")
    public void setIngresos(Double ingresos) {
        this.ingresos = ingresos;
    }

    public String getE_mail() {
        return e_mail;
    }

    @EmailValidator(key="e_mail.email")
    @ConversionErrorFieldValidator(key = "e_mail.conversion")
    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }

    public Integer getEdad() {
        return edad;
    }

    @RequiredFieldValidator(key = "edad.required")
    @IntRangeFieldValidator(min = "18",max="58",key="edad.int")
    @ConversionErrorFieldValidator(key = "edad.conversion")
    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public String getNombre() {
        return nombre;
    }

    @RequiredStringValidator(key="nombre.requiredstring")
    @StringLengthFieldValidator(minLength = "4" , maxLength = "12",key="nombre.stringlength")
    @ConversionErrorFieldValidator(key = "nombre.conversion")
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPage() {
        return page;
    }

    @RegexFieldValidator(regex = "^(?:http(s)?:\\/\\/)?[\\w.-]+(?:\\.[\\w\\.-]+)+[\\w\\-\\._~:/?#[\\]@!\\$&'\\(\\)\\*\\+,;=.]+$",key="page.url")
    @ConversionErrorFieldValidator(key = "page.conversion")
    public void setPage(String page) {
        this.page = page;
    }

    public Short getHora_laboral() {
        return hora_laboral;
    }

    @ShortRangeFieldValidator(min = "4",max="8",key="hora_laboral.short")
    public void setHora_laboral(Short hora_laboral) {
        this.hora_laboral = hora_laboral;
    }

    
    public Integer getTelefono() {
        return telefono;
    }

    @ConversionErrorFieldValidator(key = "telefono.conversion")
    @RegexFieldValidator(regexExpression = "[0-9]{9}", key="telefono.regex")
    public void setTelefono(Integer telefono) {
        this.telefono = telefono;
    }

    public Double getRetencion() {
        return retencion;
    }

    @DoubleRangeFieldValidator(minInclusive = "2" ,maxExclusive = "18",key="retencion.double")
    public void setRetencion(Double retencion) {
        this.retencion = retencion;
    }

    public Double getNeto() {
        return neto;
    }

    @FieldExpressionValidator(expression = "neto eq (ingresos + (ingresos*(retencion/100)))",key="neto.fieldexpression")
    public void setNeto(Double neto) {
        this.neto = neto;
    }   

    public Integer getExperiencia() {
        return experiencia;
    }

    @RequiredFieldValidator(key = "experiencia.required")
    @IntRangeFieldValidator(min = "2",key="experiencia.int")
    @ConversionErrorFieldValidator(key = "experiencia.conversion")
    public void setExperiencia(Integer experiencia) {
        this.experiencia = experiencia;
    }

}
