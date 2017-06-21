.class public Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "PickVKVideoFragment.java"

# interfaces
.implements Lcom/vk/attachpicker/SupportExternalToolbarContainer;
.implements Lcom/vkcoffee/android/fragments/BackListener;


# static fields
.field private static final INNER_FRAGMENT_TAG:Ljava/lang/String; = "INNER_VIDEO_FRAGMENT"


# instance fields
.field private mAddedVideosFragment:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

.field private mCurrentPos:I

.field mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTaggedVideosFragment:Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

.field mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadedVideosFragment:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

.field private mVideoAlbumsFragment:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

.field private needRecreateInnerFragment:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0300c7

    invoke-direct {p0, v0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>(I)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mCurrentPos:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->needRecreateInnerFragment:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mAddedVideosFragment:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mAddedVideosFragment:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;
    .param p1, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->ensureFragmentProvidesNoToolbar(Landroid/app/Fragment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mUploadedVideosFragment:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mUploadedVideosFragment:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTaggedVideosFragment:Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;)Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTaggedVideosFragment:Lcom/vkcoffee/android/fragments/videos/TaggedVideosFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mVideoAlbumsFragment:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mVideoAlbumsFragment:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->updateSpinnerItems()Z

    move-result v0

    return v0
.end method

.method private ensureFragmentProvidesNoToolbar(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 276
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 277
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v1, "__is_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 281
    return-void
.end method

.method static synthetic lambda$onViewCreated$300(Landroid/view/View;Landroid/view/View;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;Z)V
    .locals 3
    .param p3, "expanded"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 141
    if-eqz p3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 142
    if-eqz p3, :cond_2

    :goto_1
    invoke-static {p1, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 143
    if-nez p3, :cond_0

    .line 144
    invoke-virtual {p2}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->reset()V

    .line 146
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 141
    goto :goto_0

    :cond_2
    move v2, v1

    .line 142
    goto :goto_1
.end method

.method private updateSpinnerItems()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTitles:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTitles:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->setSpinnerItems(Ljava/util/List;)V

    .line 264
    iget v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mCurrentPos:I

    if-ltz v0, :cond_0

    .line 265
    iget v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mCurrentPos:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->setSelectedNavigationItem(I)V

    .line 268
    :cond_0
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected doLoadData()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGetTabs;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetTabs;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$2;-><init>(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetTabs;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 258
    return-void
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->loadData()V

    .line 75
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    const v0, 0x7f030172

    iput v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->spinnerViewResourceId:I

    .line 81
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f10027a

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    .line 161
    .local v0, "fragment":Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->onBackPressed()Z

    move-result v1

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setExpanded(Z)V

    .line 166
    const/4 v1, 0x1

    .line 168
    :cond_1
    return v1
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    const v0, 0x7f03008c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "view":Landroid/view/View;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onDestroyView()V

    .line 205
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "INNER_VIDEO_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 207
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 211
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->needRecreateInnerFragment:Z

    .line 212
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method protected onSpinnerItemSelected(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 179
    iget v3, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mCurrentPos:I

    if-ne p1, v3, :cond_0

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->needRecreateInnerFragment:Z

    if-nez v3, :cond_0

    .line 195
    :goto_0
    return v5

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mTabs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 184
    .local v2, "selectedFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 185
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 187
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const v3, 0x7f100200

    const-string/jumbo v4, "INNER_VIDEO_FRAGMENT"

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 189
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 191
    iput p1, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mCurrentPos:I

    .line 193
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->needRecreateInnerFragment:Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f10027a

    const/4 v6, 0x1

    .line 100
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 104
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->updateSpinnerItems()Z

    move-result v1

    .line 107
    .local v1, "haveSpinnerItems":Z
    const v7, 0x7f1001be

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "contentWrap":Landroid/view/View;
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 110
    .local v3, "searchWrap":Landroid/view/View;
    if-nez v1, :cond_0

    .line 111
    const v7, 0x7f08059b

    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "searchFragment"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    .line 115
    .local v5, "tempF":Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
    if-nez v5, :cond_2

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->newInstance(Z)Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    move-result-object v2

    .line 117
    .local v2, "searchFragment":Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
    :goto_0
    if-nez v5, :cond_3

    move v4, v6

    .line 119
    .local v4, "shouldAdd":Z
    :goto_1
    new-instance v7, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$1;

    invoke-direct {v9, p0, v2}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$1;-><init>(Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;)V

    const/16 v10, 0x190

    invoke-direct {v7, v8, v9, v10}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V

    iput-object v7, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 140
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v3, v0, v2}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment$$Lambda$1;->lambdaFactory$(Landroid/view/View;Landroid/view/View;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setStateListener(Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;)V

    .line 148
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v2, v7}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->setSearchView(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V

    .line 151
    if-eqz v4, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const-string/jumbo v8, "searchFragment"

    invoke-virtual {v7, v11, v2, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 154
    :cond_1
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->setHasOptionsMenu(Z)V

    .line 155
    return-void

    .end local v2    # "searchFragment":Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
    .end local v4    # "shouldAdd":Z
    :cond_2
    move-object v2, v5

    .line 115
    goto :goto_0

    .line 117
    .restart local v2    # "searchFragment":Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/attachmentspicker/PickVKVideoFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method
