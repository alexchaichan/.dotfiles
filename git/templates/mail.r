# microsoft ####
# library(Microsoft365R) ###

# create environment for outlok account
outl <- Microsoft365R::get_personal_outlook()
#outlb <- get_business_outlook()

# list the most recent emails in your Inbox
outl$list_emails()


# get some common folders
inbox <- outl$get_inbox()
drafts <- outl$get_drafts()
sent <- outl$get_sent_items()
deleted <- outl$get_deleted_items()

# get a specific folder by name
folder <- outl$get_folder("myfolder")


# alternatively, use method chaining to achieve the same thing
em <- outl$
  create_email()$
  set_subject("Hello")$                                  #betreff
  set_body("Hello from R")$                              #
  set_recipients(to="aleksejchaichan@posteo.de", cc="", bcc="")         #empfänger

em <- em$add_attachment()
em$send()
