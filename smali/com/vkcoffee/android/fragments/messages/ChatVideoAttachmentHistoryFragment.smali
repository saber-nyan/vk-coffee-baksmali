.class public Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;
.super Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
.source "ChatVideoAttachmentHistoryFragment.java"


# instance fields
.field private nextFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getOwnerID()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "news"

    return-object v0
.end method

.method protected getRequest(II)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 44
    const-class v1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "peer_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0, p2}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->create(Ljava/lang/Class;ILjava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 1
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/VideoFile;>;"
    invoke-static {p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->nextFrom(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;->nextFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1, v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
