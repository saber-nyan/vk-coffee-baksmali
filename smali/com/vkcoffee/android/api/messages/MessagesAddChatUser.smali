.class public Lcom/vkcoffee/android/api/messages/MessagesAddChatUser;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "MessagesAddChatUser.java"


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "chatID"    # I
    .param p2, "userID"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "messages.addChatUser"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "chat_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesAddChatUser;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    return-void
.end method
