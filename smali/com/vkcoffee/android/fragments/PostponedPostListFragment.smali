.class public Lcom/vkcoffee/android/fragments/PostponedPostListFragment;
.super Lcom/vkcoffee/android/fragments/PostListFragment;
.source "PostponedPostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/PostponedPostListFragment$Builder;
    }
.end annotation


# instance fields
.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/PostponedPostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostponedPostListFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 49
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallGet;

    iget v1, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->uid:I

    const-string/jumbo v2, "postponed"

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/vkcoffee/android/api/wall/WallGet;-><init>(IIILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostponedPostListFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/PostponedPostListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/PostponedPostListFragment;Landroid/app/Fragment;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 57
    return-void
.end method

.method protected getListReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "postponed"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->uid:I

    .line 32
    const v0, 0x7f0803b2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->setTitle(I)V

    .line 33
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    const v0, 0x7f0802f6

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->setEmptyText(I)V

    .line 35
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/fragments/PostponedPostListFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/PostponedPostListFragment$2;-><init>(Lcom/vkcoffee/android/fragments/PostponedPostListFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 73
    return-void
.end method
