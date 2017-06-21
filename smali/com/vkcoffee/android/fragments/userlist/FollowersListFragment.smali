.class public Lcom/vkcoffee/android/fragments/userlist/FollowersListFragment;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "FollowersListFragment.java"


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
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 11
    new-instance v0, Lcom/vkcoffee/android/api/users/UsersGetFollowers;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/FollowersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "uid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/users/UsersGetFollowers;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/users/UsersGetFollowers;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/FollowersListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/FollowersListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 14
    return-void
.end method
