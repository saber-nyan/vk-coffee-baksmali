.class public Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "FriendRequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/FriendRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF2Int",
            "<",
            "Lcom/vkcoffee/android/api/FriendRequest;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 34
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->mProfileListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 35
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Lcom/vkcoffee/android/functions/VoidF2Int;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    .line 37
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->mProfileListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Lcom/vkcoffee/android/functions/VoidF2Int;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/vkcoffee/android/api/FriendRequest;ZI)V
    .locals 7
    .param p1, "request"    # Lcom/vkcoffee/android/api/FriendRequest;
    .param p2, "agree"    # Z
    .param p3, "position"    # I

    .prologue
    .line 117
    if-eqz p2, :cond_0

    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsAdd;

    iget-object v1, p1, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/friends/FriendsAdd;-><init>(ILjava/lang/String;)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/FriendRequest;ZI)V

    .line 119
    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 130
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsDelete;

    iget-object v1, p1, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsDelete;-><init>(I)V

    goto :goto_0
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/api/FriendRequest;",
            ">.GridAdapter<",
            "Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$1;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;-><init>(IIZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 76
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->loadData()V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->dataLoaded()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.ACTION_FRIEND_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDestroy()V

    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f08049d

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->setTitle(I)V

    .line 94
    return-void
.end method

.method public openUserDetails(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 133
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 134
    return-void
.end method
