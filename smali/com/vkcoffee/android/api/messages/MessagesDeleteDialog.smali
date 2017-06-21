.class public Lcom/vkcoffee/android/api/messages/MessagesDeleteDialog;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "MessagesDeleteDialog.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "peer"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "messages.deleteDialog"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "peer_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesDeleteDialog;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    return-void
.end method
