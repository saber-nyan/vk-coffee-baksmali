.class public Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;
.super Lcom/vkcoffee/android/fragments/PostListFragment;
.source "FavePostListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    .prologue
    .line 11
    iget v0, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->offset:I

    return v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->offset:I

    return p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    .prologue
    .line 11
    iget v0, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->offset:I

    return v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget p1, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->offset:I

    .line 36
    :goto_0
    new-instance v0, Lcom/vkcoffee/android/api/fave/FaveGetPosts;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/fave/FaveGetPosts;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment$1;

    invoke-direct {v1, p0, p0, p2}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;Landroid/app/Fragment;I)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/fave/FaveGetPosts;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 45
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->offset:I

    goto :goto_0
.end method

.method protected getListReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "fave"

    return-object v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "fave"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 22
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->loadData()V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->dataLoaded()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->setRefreshEnabled(Z)V

    .line 17
    return-void
.end method
