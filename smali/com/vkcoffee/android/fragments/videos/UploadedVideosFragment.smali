.class public Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;
.super Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;
.source "UploadedVideosFragment.java"


# instance fields
.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;-><init>(Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;
    .locals 4
    .param p0, "ownerId"    # I
    .param p1, "select"    # Z

    .prologue
    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "album_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string/jumbo v2, "select"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    new-instance v1, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;-><init>()V

    .line 34
    .local v1, "result":Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method deleteVideo(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->deleteVideoFile(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 94
    return-void
.end method

.method public disableRefresh()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->setRefreshEnabled(Z)V

    .line 98
    return-void
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
    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->getOwnerID()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/video/VideoGet;->getUploaded(III)Lcom/vkcoffee/android/api/video/VideoGet;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.UPLOAD_DONE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->onDestroy()V

    .line 77
    return-void
.end method

.method showDeleteDialog(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->showVideoFileDeleteDialog(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 89
    return-void
.end method
