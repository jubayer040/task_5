import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';

enum TicketPriority{low,medium,high,urgent}
enum TickerStatus{ newStatus,responseOverdue,customerResponded,upcomingStatus }

extension StatusExtension on TicketPriority {
  Color get color {
    switch (this) {
      case TicketPriority.low:
        return MyColor.activeStatusColor;
      case TicketPriority.medium:
        return Colors.yellow;
      case TicketPriority.high:
        return Colors.orange;
      default:
        return MyColor.failedColor;
    }
  }

  String get label {
    switch (this) {
      case TicketPriority.low:
        return "Low";
      case TicketPriority.medium:
        return "Medium";
      case TicketPriority.high:
        return "High";
      default:
        return "Urgent";
    }
  }
}

extension StatusExtension2 on TickerStatus {
  Color get color {
    switch (this) {
      case TickerStatus.newStatus:
        return MyColor.skyPrimary;
      case TickerStatus.responseOverdue:
        return Colors.deepOrange;
      case TickerStatus.customerResponded:
        return Colors.deepPurple;
      default:
        return MyColor.activeStatusColor;
    }
  }

  String get label {
    switch (this) {
      case TickerStatus.newStatus:
        return "New";
      case TickerStatus.responseOverdue:
        return "First Respond Overdue";
      case TickerStatus.customerResponded:
        return "Customer Responded";
      default:
        return "Upcoming";
    }
  }
}

