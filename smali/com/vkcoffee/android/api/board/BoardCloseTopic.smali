.class public Lcom/vkcoffee/android/api/board/BoardCloseTopic;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "BoardCloseTopic.java"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "tid"    # I
    .param p3, "closed"    # Z

    .prologue
    .line 8
    if-eqz p3, :cond_0

    const-string/jumbo v0, "board.closeTopic"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/board/BoardCloseTopic;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "topic_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "board.openTopic"

    goto :goto_0
.end method
