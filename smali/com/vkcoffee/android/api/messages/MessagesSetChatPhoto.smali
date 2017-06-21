.class public Lcom/vkcoffee/android/api/messages/MessagesSetChatPhoto;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "MessagesSetChatPhoto.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "chatID"    # I
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string/jumbo v0, "messages.setChatPhoto"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "chat_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSetChatPhoto;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "file"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/messages/MessagesSetChatPhoto;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSetChatPhoto;->parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
