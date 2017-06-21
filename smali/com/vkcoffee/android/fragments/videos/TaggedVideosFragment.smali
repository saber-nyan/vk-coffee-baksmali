.class public Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;
.super Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
.source "TaggedVideosFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;
    .locals 4
    .param p0, "ownerId"    # I
    .param p1, "select"    # Z

    .prologue
    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "album_id"

    const/16 v3, -0x3e9

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    const-string/jumbo v2, "select"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    new-instance v1, Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;-><init>()V

    .line 24
    .local v1, "result":Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v1
.end method


# virtual methods
.method public disableRefresh()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;->setRefreshEnabled(Z)V

    .line 41
    return-void
.end method

.method protected getOwnerID()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected getRequest(II)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 1
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
    .line 31
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getOwnerID()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/video/VideoGet;->getUserVideos(III)Lcom/vkcoffee/android/api/video/VideoGet;

    move-result-object v0

    return-object v0
.end method
