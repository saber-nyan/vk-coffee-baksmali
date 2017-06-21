.class public Lcom/vkcoffee/android/api/messages/MessagesMarkAsReadDialog;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "MessagesMarkAsReadDialog.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "param"    # I

    .prologue
    .line 7
    const-string v0, "messages.markAsRead"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v0, "peer_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsReadDialog;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 9
    return-void
.end method
