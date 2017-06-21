.class public Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;
.super Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
.source "VideoAlbumFragment.java"


# instance fields
.field mAlbumId:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mAlbumId:I

    .line 29
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$1;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static newInstance(Lcom/vkcoffee/android/api/VideoAlbum;Z)Lcom/vkcoffee/android/navigation/Navigator;
    .locals 3
    .param p0, "album"    # Lcom/vkcoffee/android/api/VideoAlbum;
    .param p1, "select"    # Z

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "album_id"

    iget v2, p0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/vkcoffee/android/api/VideoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method deleteVideo(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 5
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 103
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoRemoveFromAlbum;

    iget v1, p1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getOwnerID()I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mAlbumId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/api/video/VideoRemoveFromAlbum;-><init>(IIII)V

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$2;

    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$2;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoRemoveFromAlbum;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 112
    return-void
.end method

.method protected getRequest(II)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 2
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
    .line 85
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getOwnerID()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mAlbumId:I

    invoke-static {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/video/VideoGet;->get(IIII)Lcom/vkcoffee/android/api/video/VideoGet;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$showDeleteDialog$303(Lcom/vkcoffee/android/api/VideoFile;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->deleteVideo(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "album_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mAlbumId:I

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mTitle:Ljava/lang/String;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.VIDEO_MOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onDestroy()V

    .line 80
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method showDeleteDialog(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 90
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08012b

    .line 91
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080128

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;Lcom/vkcoffee/android/api/VideoFile;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 99
    return-void
.end method
