Meteor.subscribe("messages");

Template.messages_count.count = function(){
  return Messages.find().count();
}

Template.messages_view.messages = function(){
  return Messages.find().map(function(e){
    if(e.author === Session.get('username')){
      e.my_message = true;
    }else{
      e.my_message = false;
    }
    return e;
  });
}

Template.message_input.events({
    'click #add_message': function(e,template){
      var author,body;
      author = template.find('#username').value;
      body = template.find('#body').value;
      Session.set("username",author);
      if(author && body){
        Messages.insert({author: author, body: body});
        template.find('#body').value = '';
        template.find('#username').value = author;
      }
    },
  'keypress #body': function(e,template){
      if (e.keyCode == 13){
          e.preventDefault();
          var author,body;
          author = template.find('#username').value;
          body = template.find('#body').value;
          Session.set("username",author);
          if(author && body){
            Messages.insert({author: author, body: body});
            template.find('#body').value = '';
            template.find('#username').value = author;
          }
      }
    }
  }
)
