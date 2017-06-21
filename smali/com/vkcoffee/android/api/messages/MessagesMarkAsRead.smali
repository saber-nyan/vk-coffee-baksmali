.class public Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "MessagesMarkAsRead.java"


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "peer"    # I
    .param p2, "mid"    # I

    .prologue
    .line 17
    const-string/jumbo v0, "messages.markAsRead"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "message_ids"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "peer_id"

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "messages.markAsRead"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "message_ids"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void
.end method
