.class public Lcom/vkcoffee/android/fragments/FriendsOutRequest;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "FriendsOutRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/FriendsOutRequest$GetOutRequests;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;-><init>()V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->setActionable(Z)V

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/FriendsOutRequest;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->refresh()V

    return-void
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 22
    new-instance v0, Lcom/vkcoffee/android/fragments/FriendsOutRequest$GetOutRequests;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/FriendsOutRequest$GetOutRequests;-><init>(Lcom/vkcoffee/android/fragments/FriendsOutRequest;II)V

    new-instance v1, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/FriendsOutRequest$GetOutRequests;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 23
    return-void
.end method

.method public onActionClick(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "var1"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 26
    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsDelete;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsDelete;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/FriendsOutRequest$1;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/FriendsOutRequest$1;-><init>(Lcom/vkcoffee/android/fragments/FriendsOutRequest;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 39
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "var1"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    const-string v0, "\u0418\u0441\u0445\u043e\u0434\u044f\u0449\u0438\u0435 \u0437\u0430\u044f\u0432\u043a\u0438"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    const-string v0, "\u041f\u0440\u0435\u0434\u0430\u0442\u0435\u043b\u0435\u0439 \u0443 \u0412\u0430\u0441 \u043d\u0435\u0442 :)"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
