package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.Ticket;
import domain.Train;
import service.TicketService;

import java.util.List;

/**
 * Created by Administrator on 2016/9/21.
 */
public class SearchTicketAction extends ActionSupport {
    public Ticket ticket;
    List<Train> trains;
    TicketService ticketService;

    public String searchTrain() {
        ticketService = new TicketService();
        trains = ticketService.searchTrain(ticket.getStart_station(), ticket.getArrive_station());
        return SUCCESS;
    }


    public String checkOrder() {

        return SUCCESS;
    }

    public List<Train> getTrains() {
        return trains;
    }

    public void setTrains(List<Train> trains) {
        this.trains = trains;
    }

    public Ticket getTicket() {
        return ticket;
    }

    public void setTicket(Ticket ticket) {
        this.ticket = ticket;
    }


    public TicketService getTicketService() {
        return ticketService;
    }

    public void setTicketService(TicketService ticketService) {
        this.ticketService = ticketService;
    }
}
