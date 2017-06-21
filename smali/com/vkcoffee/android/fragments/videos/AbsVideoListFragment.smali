.class public abstract Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "AbsVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoHolder;,
        Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;"
    }
.end annotation


# static fields
.field static final VIDEO_EDIT:I = 0x2068


# instance fields
.field private mOffset:I

.field private mOwnerId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSelectMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 50
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOwnerId:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOffset:I

    .line 52
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOffset:I

    return v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOffset:I

    return p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method addVideo(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 287
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoAdd;

    iget v1, p1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/video/VideoAdd;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;

    .line 288
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$4;-><init>(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoAdd;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 297
    return-void
.end method

.method copyLink(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 4
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 265
    .local v0, "cm":Landroid/text/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://vk.com/video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080290

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 267
    return-void
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">.GridAdapter<*>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$VideoAdapter;-><init>(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$1;)V

    return-object v0
.end method

.method deleteVideo(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->deleteVideoFile(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 248
    return-void
.end method

.method final deleteVideoFile(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 4
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 251
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallDelete;

    iget v1, p1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/wall/WallDelete;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$3;

    .line 252
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$3;-><init>(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 259
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 260
    return-void
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOffset:I

    .line 129
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOffset:I

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getRequest(II)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$2;

    invoke-direct {v1, p0, p0, p2}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$2;-><init>(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;Landroid/app/Fragment;I)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 145
    return-void
.end method

.method protected getColumnsCount()I
    .locals 4

    .prologue
    .line 92
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 93
    .local v1, "listWidth":I
    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->scrW:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x43800000    # 256.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    .line 94
    .local v0, "columnWidth":I
    :goto_0
    div-int v2, v1, v0

    return v2

    .end local v0    # "columnWidth":I
    :cond_0
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method protected getOwnerID()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOwnerId:I

    return v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOwnerId:I

    if-ltz v0, :cond_0

    const-string/jumbo v0, "videos_user"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "videos_group"

    goto :goto_0
.end method

.method protected abstract getRequest(II)Lcom/vkcoffee/android/api/VKAPIRequest;
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
.end method

.method synthetic lambda$showVideoFileDeleteDialog$302(Lcom/vkcoffee/android/api/VideoFile;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->deleteVideo(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 241
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->loadData()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->dataLoaded()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->loaded:Z

    if-eqz v2, :cond_0

    .line 109
    const-string/jumbo v2, "video"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/VideoFile;

    .line 110
    .local v1, "video":Lcom/vkcoffee/android/api/VideoFile;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/api/VideoFile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x2068
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "select"

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mSelectMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mSelectMode:Z

    .line 71
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOwnerId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOwnerId:I

    .line 72
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.POST_DELETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    return-void
.end method

.method protected onCreatePopupMenu(Lcom/vkcoffee/android/api/VideoFile;Landroid/view/Menu;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-boolean v0, p1, Lcom/vkcoffee/android/api/VideoFile;->canEdit:Z

    if-eqz v0, :cond_0

    .line 201
    const v0, 0x7f10044a

    const v1, 0x7f08013d

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getOwnerID()I

    move-result v0

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    if-gez v0, :cond_2

    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 204
    :cond_1
    const v0, 0x7f100446

    const v1, 0x7f080119

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 206
    :cond_2
    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getOwnerID()I

    move-result v0

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v1, :cond_3

    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v0, :cond_3

    .line 207
    const v0, 0x7f1000a2

    const v1, 0x7f080049

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 209
    :cond_3
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v0, :cond_4

    .line 210
    const v0, 0x7f100004

    const v1, 0x7f080586

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 212
    :cond_4
    const v0, 0x7f10000e

    const v1, 0x7f080101

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 213
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v0, :cond_5

    .line 214
    const v0, 0x7f100219

    const v1, 0x7f080437

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 216
    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDestroy()V

    .line 101
    return-void
.end method

.method protected onItemClick(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "file"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 159
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mSelectMode:Z

    if-eqz v1, :cond_0

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 167
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->openVideo(Lcom/vkcoffee/android/api/VideoFile;)V

    goto :goto_0
.end method

.method protected onPopupItemSelected(Lcom/vkcoffee/android/api/VideoFile;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 170
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 196
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 172
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->showEditDialog(Lcom/vkcoffee/android/api/VideoFile;)V

    goto :goto_0

    .line 176
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->showDeleteDialog(Lcom/vkcoffee/android/api/VideoFile;)V

    goto :goto_0

    .line 180
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->addVideo(Lcom/vkcoffee/android/api/VideoFile;)V

    goto :goto_0

    .line 184
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->showAddToAlbumDialog(Lcom/vkcoffee/android/api/VideoFile;)V

    goto :goto_0

    .line 188
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->copyLink(Lcom/vkcoffee/android/api/VideoFile;)V

    goto :goto_0

    .line 192
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->share(Lcom/vkcoffee/android/api/VideoFile;)V

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100004 -> :sswitch_3
        0x7f10000e -> :sswitch_4
        0x7f1000a2 -> :sswitch_2
        0x7f100219 -> :sswitch_5
        0x7f100446 -> :sswitch_1
        0x7f10044a -> :sswitch_0
    .end sparse-switch
.end method

.method openVideo(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "entry"

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VideoFile;->convertToPost()Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 221
    const-string/jumbo v1, "referer"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-class v1, Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method prepend(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 2
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 283
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemInserted(I)V

    .line 284
    return-void
.end method

.method removeItem(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "vid"    # I

    .prologue
    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/VideoFile;

    .line 272
    .local v1, "item":Lcom/vkcoffee/android/api/VideoFile;
    iget v2, v1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    if-ne v2, p1, :cond_1

    iget v2, v1, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    if-ne v2, p2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemRemoved(I)V

    .line 275
    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOffset:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->mOffset:I

    .line 279
    .end local v1    # "item":Lcom/vkcoffee/android/api/VideoFile;
    :cond_0
    return-void

    .line 270
    .restart local v1    # "item":Lcom/vkcoffee/android/api/VideoFile;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method share(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Auth;->ensureLoggedIn(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "post"

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VideoFile;->convertToPost()Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->startActivity(Landroid/content/Intent;)V

    .line 229
    :cond_0
    return-void
.end method

.method showAddToAlbumDialog(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 2
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 300
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getOwnerID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->showAlbumsDialog(ILcom/vkcoffee/android/api/VideoFile;)V

    .line 301
    return-void
.end method

.method showDeleteDialog(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->showVideoFileDeleteDialog(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 233
    return-void
.end method

.method showEditDialog(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 2
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 304
    invoke-static {p1}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->edit(Lcom/vkcoffee/android/api/VideoFile;)Lcom/vkcoffee/android/navigation/Navigator;

    move-result-object v0

    const/16 v1, 0x2068

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 305
    return-void
.end method

.method final showVideoFileDeleteDialog(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 236
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08012a

    .line 237
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080128

    .line 238
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;Lcom/vkcoffee/android/api/VideoFile;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 244
    return-void
.end method
