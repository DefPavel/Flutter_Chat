part of 'messages_bloc.dart';

abstract class MessagesEvent extends Equatable {
  const MessagesEvent();

  @override
  List<Object> get props => [];
}

class MessagesStartFetching extends MessagesEvent {
  final User user;
  MessagesStartFetching(this.user)
      : assert(user != null, "поле должно иметь значение ");
  List<Object> get props => [user];
}

class NewMessagesFetched extends MessagesEvent {
  final List<Message> messages;
  const NewMessagesFetched(this.messages)
      : assert(messages != null, "поле должно иметь значение ");
  @override
  List<Object> get props => [messages];
}

class MoreMessagesFetched extends MessagesEvent{
  final int messagesLength ;
  final double scrollposition ;

  MoreMessagesFetched(this.scrollposition, this.messagesLength);
  List<Object> get props => [scrollposition];

}

class MessageSent extends MessagesEvent {
  final String message;
  final String friendId;
  MessageSent({@required this.message, @required this.friendId})
      : assert(message != null, "поле должно иметь значение "),
        assert(friendId != null, "поле должно иметь значение ");
  List<Object> get props => [message, friendId];
}
