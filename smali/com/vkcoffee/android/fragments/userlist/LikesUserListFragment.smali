.class public Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "LikesUserListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 9
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v6, 0x0

    .line 11
    new-instance v0, Lcom/vkcoffee/android/api/wall/LikesGetList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ltype"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "lptype"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 12
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "oid"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "item_id"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 13
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "friends_only"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "filter"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/api/wall/LikesGetList;-><init>(IIIIIIZLjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/LikesGetList;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 16
    return-void
.end method
