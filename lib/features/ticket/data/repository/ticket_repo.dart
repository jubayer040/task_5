import 'package:task_5/core/util/my_enum.dart';
import 'package:task_5/features/ticket/data/models/ticket_item.dart';

class TicketRepo {
  final tickets = [
    TicketItem(
      id: 012141442,
      currentStatus: TickerStatus.newStatus,
      name: "Michale",
      details:
          "Search view, which can display dynamic suggestions, is the focues state of enery that draws people's attention for sure",
      date: DateTime.now(),
      ticketPriority: TicketPriority.low,
    ),
    TicketItem(
      id: 02141442,
      currentStatus: TickerStatus.responseOverdue,
      name: "Noah",
      details: "Have to update UI. looks good, could be better with green",
      date: DateTime.now(),
      ticketPriority: TicketPriority.low,
    ),
    TicketItem(
      id: 302141442,
      currentStatus: TickerStatus.customerResponded,
      name: "Jason",
      details:
          "Search view, which can display dynamic suggestions, is the focues state of enery that draws people's attention for sure",
      date: DateTime.now(),
      ticketPriority: TicketPriority.low,
    ),
    TicketItem(
      id: 402141442,
      currentStatus: TickerStatus.upcomingStatus,
      name: "Linkon",
      details:
          "Search view, which can display dynamic suggestions, is the focues state of enery that draws people's attention for sure",
      date: DateTime.now(),
      ticketPriority: TicketPriority.low,
    ),
  ];
}
