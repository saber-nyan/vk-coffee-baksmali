.class public Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "PostSubscriptionsUserListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;-><init>()V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->setActionable(Z)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallGetSubscriptions;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/wall/WallGetSubscriptions;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallGetSubscriptions;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 34
    return-void
.end method

.method public onActionClick(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 38
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallSubscribe;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/wall/WallSubscribe;-><init>(IZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment$1;

    invoke-direct {v1, p0, p0, p1}, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/UserProfile;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallSubscribe;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 48
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->onAttach(Landroid/app/Activity;)V

    .line 25
    const v0, 0x7f0804bb

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->setTitle(I)V

    .line 26
    const v0, 0x7f0804bc

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->setEmptyText(I)V

    .line 27
    return-void
.end method
