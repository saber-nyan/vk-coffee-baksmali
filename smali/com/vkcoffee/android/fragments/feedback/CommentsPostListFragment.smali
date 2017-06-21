.class public Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;
.super Lcom/vkcoffee/android/fragments/PostListFragment;
.source "CommentsPostListFragment.java"


# instance fields
.field private from:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->from:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->from:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->from:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected canUnsubscribe()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 32
    new-instance v1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetComments;

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {v1, v0, p2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetComments;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;Landroid/app/Fragment;)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetComments;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 41
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->from:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getListReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "comments"

    return-object v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "news"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method
