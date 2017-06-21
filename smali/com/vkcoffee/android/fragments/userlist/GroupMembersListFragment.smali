.class public Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "GroupMembersListFragment.java"


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
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 12
    .local v0, "filter":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "filter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/api/groups/GroupsGetMembers;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "gid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2, p1, p2, v0}, Lcom/vkcoffee/android/api/groups/GroupsGetMembers;-><init>(IIILjava/lang/String;)V

    new-instance v2, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 16
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsGetMembers;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 18
    return-void
.end method
