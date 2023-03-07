package org.migna;
import java.io.*;
import java.util.Scanner;
public class Practica3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        try {
            File f = new File("archivo.txt");
            if(!f.exists()){
                f.createNewFile();
            }
            input.useDelimiter("\n");
            System.out.print("Ingresa tu nombre completo: ");
            String Nombre = input.next();
            System.out.print("Ingresa tu CURP: ");
            String Curp = input.next();
            System.out.print("Ingresa tu edad: ");
            String Edad = input.next();
            System.out.print("Ingresa tu matricula: ");
            String Matricula = input.next();
            System.out.print("Ingresa tu carrera: ");
            String Carrera = input.next();
            System.out.print("Ingresa tu hobbie: ");
            String Hobbie = input.next();
            PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter(f,true)));
            pw.println("Nombre Completo: "+Nombre);
            pw.println("Curp: "+Curp);
            pw.println("Edad: "+Edad);
            pw.println("Matricula: "+Matricula);
            pw.println("Carrera: "+Carrera);
            pw.println("Hobbie: "+Hobbie);
            input.close();
            pw.close();
            System.out.println("Se pudo escribir sin problemas");
        } catch (IOException ioe){
            System.out.println("Ocurrio un problema");
            ioe.printStackTrace();
        }
    }
}