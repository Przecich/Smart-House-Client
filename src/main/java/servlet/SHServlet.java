package servlet;
import house.House;
import house.HouseService;
import house.Room;


import java.io.IOException;

import javax.servlet.RequestDispatcher;

        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;

@WebServlet(
        name = "SmartHouse",
        urlPatterns = {"/smartHouse"}
)
public class SHServlet extends HttpServlet {





        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String action = req.getParameter("searchAction");

            if (action!=null){

                searchRoomByName(req, resp);


            }else{
                Room room=new Room("Null");
                forwardRoom(req, resp, room);

            }
        }
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Double temp = Double.parseDouble(request.getParameter("temp"));
            Boolean window = Boolean.parseBoolean(request.getParameter("windows"));
            Boolean lights = Boolean.parseBoolean(request.getParameter("light"));

            Room room=new Room(HouseService.currentRoom);
            System.out.println(temp+" ");
            room.setTemp(temp);
            room.setWindowOpen(window);
            room.setLightsOn(lights);

            HouseService.sendRoom(room);

            forwardRoom(request,response,room);
        }



        private void searchRoomByName(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {
            String roomName = req.getParameter("room");
            Room room = HouseService.getRoom(roomName);
            forwardRoom(req, resp, room);

        }

        private void forwardRoom(HttpServletRequest req, HttpServletResponse resp, Room room )
                throws ServletException, IOException {
            String nextJSP = "/jsp/test2.jsp";
            HouseService.currentRoom=room;
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
            req.setAttribute("room",room);
            System.out.println(room.getName());
            dispatcher.forward(req, resp);

        }


    }


