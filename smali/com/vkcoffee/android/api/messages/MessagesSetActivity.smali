.class public Lcom/vkcoffee/android/api/messages/MessagesSetActivity;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "MessagesSetActivity.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "peerID"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "messages.setActivity"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSetActivity;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "typing"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesSetActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    return-void
.end method
