package cl.praxis.business;
import cl.praxis.models.Habitacion;

import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {

    public List<Habitacion> getHabitaciones(){

        List<Habitacion> habitaciones = new ArrayList<>();

        //Creacion de habitaciones
        habitaciones.add(new Habitacion(1,
                "Simple",
                "Habitacion clasica con cama extra grande con vista al oceano y balcon",
                "https://cf.bstatic.com/xdata/images/hotel/max1024x768/461652305.jpg?k=f69389ee6c4cff5cf622fb7f07c00438c1374d6b76a11226c762739f5dcb7b41&o=&hp=1",
                10000,
                1,
                15));
        habitaciones.add(new Habitacion(2,
                "Doble-Simple",
                "Habitacion clasica con dos camas grande o dobles con vista al oceano y balcon",
                "https://cf.bstatic.com/xdata/images/hotel/max1024x768/470213674.jpg?k=390c613d8502d917e753ec8d33449b5ea6d25abd416c2ef2a5f913a48526c271&o=&hp=1",
                20000,
                2,
                20));
        habitaciones.add(new Habitacion(3,
                "Doble-Normal",
                "Habitación Superior en planta alta con vistas al océano y dos camas dobles",
                "https://cf.bstatic.com/xdata/images/hotel/max1024x768/470189179.jpg?k=cc9760b72f6dd6467cee506361855df1c01a03c0440d46354e613505ca2718e4&o=&hp=1",
                30000,
                3,
                25));
        habitaciones.add(new Habitacion(4,
                "Doble-King",
                "Suite Executive en planta superior con camas extragrade y vistas al océano",
                "https://cf.bstatic.com/xdata/images/hotel/max1024x768/490870106.jpg?k=1e8bf57e408a257e32f4da7f714bf2618ab246e4e50bc31b241630539cd48507&o=&hp=1",
                40000,
                4,
                30));
        habitaciones.add(new Habitacion(5,
                "Doble-King",
                "Suite Executive en planta superior con camas extragrade y vistas al océano",
                "https://cf.bstatic.com/xdata/images/hotel/max1024x768/490870106.jpg?k=1e8bf57e408a257e32f4da7f714bf2618ab246e4e50bc31b241630539cd48507&o=&hp=1",
                50000,
                5,
                30));
        habitaciones.add(new Habitacion(6,
                "Doble-King",
                "Suite Executive en planta superior con camas extragrade y vistas al océano",
                "https://cf.bstatic.com/xdata/images/hotel/max1024x768/490870106.jpg?k=1e8bf57e408a257e32f4da7f714bf2618ab246e4e50bc31b241630539cd48507&o=&hp=1",
                60000,
                6,
                32));
        habitaciones.add(new Habitacion(7,
                 "Doble-King",
                 "Suite Executive en planta superior con camas extragrade y vistas al océano",
                 "https://essencemporium.cl/wp-content/uploads/2021/09/Almohadas-1.png",
                 70000,
                 7,
                 28));
        habitaciones.add(new Habitacion(8,
                "Doble-King",
                "Suite Executive en planta superior con camas extragrade y vistas al océano",
                "https://cf.bstatic.com/xdata/images/hotel/max1024x768/461652305.jpg?k=f69389ee6c4cff5cf622fb7f07c00438c1374d6b76a11226c762739f5dcb7b41&o=&hp=1",
                80000,
                8,
                29));

        return habitaciones;
    }

    public Habitacion getHabitacion(int id){

        Habitacion room = new Habitacion();

        for(Habitacion habitacion : getHabitaciones()){
            if(id == habitacion.getId()){
                room = habitacion;
            }
        }
        return room;
    }

    public String calcFee(String days, int price){
        int numberDays = Integer.parseInt(days);
        int result = numberDays*price;
        return String.valueOf(result);
    }

}
