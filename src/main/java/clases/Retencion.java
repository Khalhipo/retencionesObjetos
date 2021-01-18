/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author DAW-A
 */
public class Retencion {
    private double salario, retencion, salarioNeto;

    public Retencion(String sueldo) {
        this.salario = Double.parseDouble(sueldo);
        if(this.salario<=1000){
            this.retencion = 0;
        } else if(this.salario > 1000 && this.salario <=3000){
            this.retencion = 10 * this.salario / 100;
        } else if(this.salario > 3000){
            this.retencion = 20 * this.salario / 100;
        }
        this.salarioNeto = this.salario - this.retencion;
    }

    public double getSalario() {
        return salario;
    }

    public double getRetencion() {
        return retencion;
    }

    public double getSalarioNeto() {
        return salarioNeto;
    }
}