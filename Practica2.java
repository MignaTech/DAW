package org.migna;
import java.util.Scanner;
public class Practica2 {
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    String Nombre,Nacionalidad;
    int A_oNacimiento,i=0;
    input.useDelimiter("\n");
    System.out.print("Ingresa tu nombre completo: ");
    Nombre = input.next();
    String[] partes = Nombre.split(" ");
    input.nextLine();
    System.out.print("Ingresa tu Nacionalidad: ");
    Nacionalidad = input.nextLine();
    System.out.print("Ingresa tu año de nacimiento: ");
    A_oNacimiento = input.nextInt();
    System.out.println("\nNombre Completo: "+Nombre);
    System.out.print("Nombre: ");
    while(i <= partes.length-3)
      System.out.print(partes[i++]+" ");
    System.out.println("\nApellido Paterno: "+partes[partes.length-2]);
    System.out.println("Apellido Materno: "+partes[partes.length-1]);
    System.out.println("Nacionalidad: "+Nacionalidad);
    System.out.println("Año de nacimiento: "+A_oNacimiento);
    input.close();
  }
}