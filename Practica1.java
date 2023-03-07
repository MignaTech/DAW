package org.migna;
import java.util.Scanner;
public class Practica1 {
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    String Nombre,apPat,apMat,Nacionalidad;
    int A_oNacimiento;
    input.useDelimiter("\\s+");
    System.out.println("Ingresa tu nombre completo si tiene más de 1 nombre separelo con un -");
    System.out.print("Nombre completo: ");
    Nombre = input.next();
    apPat = input.next();
    apMat = input.next();
    Nombre = Nombre.replace('-', ' ');
    input.nextLine();
    System.out.print("Ingresa tu Nacionalidad: ");
    Nacionalidad = input.nextLine();
    System.out.print("Ingresa tu año de nacimiento: ");
    A_oNacimiento = input.nextInt();
    System.out.println("\nNombre Completo: "+Nombre+" "+apPat+" "+apMat);
    System.out.println("Nombre: "+Nombre);
    System.out.println("Apellido Paterno: "+apPat);
    System.out.println("Apellido Materno: "+apMat);
    System.out.println("Nacionalidad: "+Nacionalidad);
    System.out.println("Año de nacimiento: "+A_oNacimiento);
    input.close();
  }
}