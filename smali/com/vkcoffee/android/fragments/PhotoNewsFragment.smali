.class public Lcom/vkcoffee/android/fragments/PhotoNewsFragment;
.super Lcom/vkcoffee/android/fragments/PostListFragment;
.source "PhotoNewsFragment.java"


# instance fields
.field private from:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/PhotoNewsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PhotoNewsFragment;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->from:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/PhotoNewsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PhotoNewsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->from:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 33
    new-instance v1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;

    if-nez p1, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    const/4 v2, -0x4

    invoke-direct {v1, v0, p2, v2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/fragments/PhotoNewsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/PhotoNewsFragment;Landroid/app/Fragment;)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 42
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->from:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getListReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected isPhotosMode()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 18
    const v0, 0x7f0802f2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->setEmptyText(I)V

    .line 19
    return-void
.end method
