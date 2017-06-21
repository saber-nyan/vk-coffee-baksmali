.class public Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "VideoAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;,
        Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/VideoAlbum;",
        ">;"
    }
.end annotation


# static fields
.field static final EDIT_RESULT:I = 0x67

.field static final SELECT_RESULT:I = 0x66


# instance fields
.field mCanEdit:Z

.field mOwnerId:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mSelectMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 62
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static newInstance(IZ)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
    .locals 3
    .param p0, "ownerId"    # I
    .param p1, "select"    # Z

    .prologue
    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "owner_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    const-string/jumbo v2, "select"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    new-instance v1, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;-><init>()V

    .line 58
    .local v1, "result":Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method


# virtual methods
.method copyLink(Lcom/vkcoffee/android/api/VideoAlbum;)V
    .locals 4
    .param p1, "album"    # Lcom/vkcoffee/android/api/VideoAlbum;

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 194
    .local v0, "cm":Landroid/text/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://vk.com/videos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?section=album_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080290

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 196
    return-void
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/api/VideoAlbum;",
            ">.GridAdapter<*>;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAdapter;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;)V

    return-object v0
.end method

.method deleteAlbum(Lcom/vkcoffee/android/api/VideoAlbum;I)V
    .locals 3
    .param p1, "album"    # Lcom/vkcoffee/android/api/VideoAlbum;
    .param p2, "position"    # I

    .prologue
    .line 179
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoDeleteAlbum;

    iget v1, p1, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    iget v2, p1, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/video/VideoDeleteAlbum;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;

    .line 180
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/VideoAlbum;I)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoDeleteAlbum;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 190
    return-void
.end method

.method public disableRefresh()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->setRefreshEnabled(Z)V

    .line 208
    return-void
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 115
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGetAlbums;

    iget v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mOwnerId:I

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/video/VideoGetAlbums;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$2;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;Landroid/app/Fragment;II)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetAlbums;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 123
    return-void
.end method

.method editAlbum(Lcom/vkcoffee/android/api/VideoAlbum;)V
    .locals 2
    .param p1, "album"    # Lcom/vkcoffee/android/api/VideoAlbum;

    .prologue
    .line 164
    invoke-static {p1}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->edit(Lcom/vkcoffee/android/api/VideoAlbum;)Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 165
    return-void
.end method

.method protected getColumnsCount()I
    .locals 4

    .prologue
    .line 132
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 133
    .local v1, "listWidth":I
    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->scrW:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x43800000    # 256.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    .line 134
    .local v0, "columnWidth":I
    :goto_0
    div-int v2, v1, v0

    return v2

    .end local v0    # "columnWidth":I
    :cond_0
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method synthetic lambda$showDeleteDialog$308(Lcom/vkcoffee/android/api/VideoAlbum;ILandroid/content/DialogInterface;I)V
    .locals 0
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->deleteAlbum(Lcom/vkcoffee/android/api/VideoAlbum;I)V

    .line 173
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->loadData()V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->showContent()V

    .line 102
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->updateList()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 139
    if-ne p2, v3, :cond_0

    .line 140
    packed-switch p1, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->loaded:Z

    if-eqz v2, :cond_0

    .line 148
    const-string/jumbo v2, "album"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoAlbum;

    .line 149
    .local v0, "album":Lcom/vkcoffee/android/api/VideoAlbum;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/api/VideoAlbum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 149
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "owner_id"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mOwnerId:I

    .line 88
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "select"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mSelectMode:Z

    .line 89
    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mOwnerId:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mOwnerId:I

    if-gez v2, :cond_1

    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mOwnerId:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    if-lt v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mCanEdit:Z

    .line 90
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.RELOAD_VIDEO_ALBUMS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.VIDEO_ALBUM_CREATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDestroy()V

    .line 109
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    return-void
.end method

.method openAlbum(Lcom/vkcoffee/android/api/VideoAlbum;)V
    .locals 2
    .param p1, "album"    # Lcom/vkcoffee/android/api/VideoAlbum;

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mSelectMode:Z

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->newInstance(Lcom/vkcoffee/android/api/VideoAlbum;Z)Lcom/vkcoffee/android/navigation/Navigator;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->newInstance(Lcom/vkcoffee/android/api/VideoAlbum;Z)Lcom/vkcoffee/android/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method showDeleteDialog(Lcom/vkcoffee/android/api/VideoAlbum;I)V
    .locals 3
    .param p1, "album"    # Lcom/vkcoffee/android/api/VideoAlbum;
    .param p2, "position"    # I

    .prologue
    .line 168
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    .line 169
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080129

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;Lcom/vkcoffee/android/api/VideoAlbum;I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 176
    return-void
.end method
