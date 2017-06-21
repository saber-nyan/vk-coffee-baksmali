.class public Lcom/vkcoffee/android/fragments/videos/VideosFragment;
.super Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;
.source "VideosFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;
.implements Lcom/vk/attachpicker/SupportExternalToolbarContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;
    }
.end annotation


# static fields
.field static final CREATE_RESULT:I = 0x68

.field static final VIDEO_EXISTING_RESULT:I = 0xeb

.field static final VIDEO_NEW_RESULT:I = 0xea


# instance fields
.field private mAddedVideosFragment:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

.field mAdmin:Z

.field mCanUploadVideo:Z

.field mOwnerId:I

.field mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field mSelectMode:Z

.field private mTaggedVideosFragment:Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

.field final mTimerHandler:Landroid/os/Handler;

.field mTitle:Ljava/lang/String;

.field private mUploadedVideosFragment:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

.field private mVideoAlbumsFragment:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mTimerHandler:Landroid/os/Handler;

    .line 66
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    .line 83
    const v0, 0x7f030182

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->setTabsLayout(I)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->setTabsAutoLoad(Z)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mAddedVideosFragment:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mAddedVideosFragment:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mUploadedVideosFragment:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mUploadedVideosFragment:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mTaggedVideosFragment:Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mTaggedVideosFragment:Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mVideoAlbumsFragment:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mVideoAlbumsFragment:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->disableRefreshIfNeeded()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->showContent()V

    return-void
.end method

.method private disableRefreshIfNeeded()V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mAddedVideosFragment:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mAddedVideosFragment:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;->disableRefresh()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mUploadedVideosFragment:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mUploadedVideosFragment:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->disableRefresh()V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mVideoAlbumsFragment:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mVideoAlbumsFragment:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->disableRefresh()V

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mTaggedVideosFragment:Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mTaggedVideosFragment:Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;->disableRefresh()V

    .line 319
    :cond_3
    return-void
.end method

.method private isInContextOfAttachActivity()Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vk/attachpicker/AttachActivity;

    return v0
.end method

.method static synthetic lambda$onViewCreated$615(Landroid/view/View;Landroid/view/View;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;Z)V
    .locals 3
    .param p3, "expanded"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 291
    if-eqz p3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 292
    if-eqz p3, :cond_2

    :goto_1
    invoke-static {p1, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 293
    if-nez p3, :cond_0

    .line 294
    invoke-virtual {p2}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->reset()V

    .line 296
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 291
    goto :goto_0

    :cond_2
    move v2, v1

    .line 292
    goto :goto_1
.end method


# virtual methods
.method addVideoByLink(Ljava/lang/String;)V
    .locals 2
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 343
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;-><init>(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;->execPool([Ljava/lang/Object;)Lcom/vkcoffee/android/background/AsyncTask;

    .line 344
    return-void
.end method

.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method createAlbum()V
    .locals 2

    .prologue
    .line 347
    iget v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->create(I)Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 348
    return-void
.end method

.method protected doLoadData()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGetTabs;

    iget v1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetTabs;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$1;-><init>(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetTabs;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 130
    return-void
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->hasNavigationDrawer()Z

    move-result v0

    goto :goto_0
.end method

.method synthetic lambda$showAddLinkDialog$616(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 339
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->addVideoByLink(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->loadData()V

    .line 171
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 205
    sparse-switch p1, :sswitch_data_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 208
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/vkcoffee/android/SendActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 210
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    invoke-static {v3}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080165

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 218
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v4, "owner_id"

    iget v5, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :sswitch_1
    const-string/jumbo v4, "album"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoAlbum;

    .line 225
    .local v0, "album":Lcom/vkcoffee/android/api/VideoAlbum;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/vkcoffee/android/fragments/videos/Videos;->notifyAlbumCreated(Landroid/content/Context;Lcom/vkcoffee/android/api/VideoAlbum;)V

    goto :goto_0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_1
        0xea -> :sswitch_0
        0xeb -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f10027a

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    .line 325
    .local v0, "fragment":Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->onBackPressed()Z

    move-result v1

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setExpanded(Z)V

    .line 330
    const/4 v1, 0x1

    .line 332
    :cond_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    .line 136
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "can_upload_video"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mCanUploadVideo:Z

    .line 137
    iget v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->isGroupAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mAdmin:Z

    .line 138
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    const v2, 0x7f08059b

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mTitle:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSelectMode:Z

    .line 140
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v3, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 153
    :cond_0
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mAdmin:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mCanUploadVideo:Z

    if-eqz v3, :cond_3

    :cond_1
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSelectMode:Z

    if-nez v3, :cond_3

    .line 154
    const v3, 0x7f110014

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    const v3, 0x7f1000a2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 156
    .local v0, "add":Landroid/view/MenuItem;
    if-eqz v0, :cond_3

    .line 157
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    .line 158
    .local v1, "subMenu":Landroid/view/SubMenu;
    const v3, -0x54504d

    invoke-static {v1, v3}, Lcom/vkcoffee/android/ViewUtils;->colorizeSubmenu(Landroid/view/SubMenu;I)V

    .line 159
    const v3, 0x7f10045c

    invoke-interface {v1, v3}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    if-gez v4, :cond_4

    iget v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mOwnerId:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v4

    if-lt v4, v2, :cond_4

    :cond_2
    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    .end local v0    # "add":Landroid/view/MenuItem;
    .end local v1    # "subMenu":Landroid/view/SubMenu;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 163
    return-void

    .line 159
    .restart local v0    # "add":Landroid/view/MenuItem;
    .restart local v1    # "subMenu":Landroid/view/SubMenu;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 198
    :goto_0
    return v4

    .line 177
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.sizeLimit"

    const-wide v2, 0x80000000L

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    const/16 v1, 0xea

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 183
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "media_type"

    const/16 v2, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string/jumbo v1, "single_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    const/16 v1, 0xeb

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 190
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->showAddLinkDialog()V

    goto :goto_0

    .line 194
    :pswitch_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->createAlbum()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x7f100459
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f10027a

    const v7, 0x7f0f0012

    const/4 v6, -0x1

    .line 250
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    const v4, 0x7f1003c7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "contentWrap":Landroid/view/View;
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 255
    .local v2, "searchWrap":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->isInContextOfAttachActivity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    const v4, 0x7f100110

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout;

    .line 261
    .local v3, "tabLayout":Landroid/support/design/widget/TabLayout;
    invoke-virtual {v3, v6}, Landroid/support/design/widget/TabLayout;->setBackgroundColor(I)V

    .line 262
    const-string/jumbo v4, "#B9CDE3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/TabLayout;->setTabTextColors(II)V

    .line 263
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 264
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->disableRefreshIfNeeded()V

    .line 267
    .end local v3    # "tabLayout":Landroid/support/design/widget/TabLayout;
    :cond_0
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSelectMode:Z

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->newInstance(Z)Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    move-result-object v1

    .line 269
    .local v1, "searchFragment":Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
    new-instance v4, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/fragments/videos/VideosFragment$2;

    invoke-direct {v6, p0, v1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$2;-><init>(Lcom/vkcoffee/android/fragments/videos/VideosFragment;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;)V

    const/16 v7, 0x190

    invoke-direct {v4, v5, v6, v7}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 290
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v2, v0, v1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;->lambdaFactory$(Landroid/view/View;Landroid/view/View;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setStateListener(Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;)V

    .line 298
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    iput-object v4, v1, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 299
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v8, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 300
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->setHasOptionsMenu(Z)V

    .line 301
    return-void
.end method

.method public provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method

.method showAddLinkDialog()V
    .locals 2

    .prologue
    .line 336
    new-instance v0, Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/dialogs/PromptDialog;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->setTitle(I)Lcom/vkcoffee/android/dialogs/PromptDialog;

    move-result-object v0

    const v1, 0x7f08007b

    .line 337
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->setHint(I)Lcom/vkcoffee/android/dialogs/PromptDialog;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/vkcoffee/android/dialogs/PromptDialog;->requireText()Lcom/vkcoffee/android/dialogs/PromptDialog;

    move-result-object v0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/VideosFragment;)Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;

    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->setInputListener(Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;)Lcom/vkcoffee/android/dialogs/PromptDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/dialogs/PromptDialog;->show()V

    .line 340
    return-void
.end method
