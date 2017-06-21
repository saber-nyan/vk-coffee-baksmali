.class public Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "AdminedGroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;,
        Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">;"
    }
.end annotation


# instance fields
.field mRequiredLevel:I

.field mSelectMode:Z

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->mRequiredLevel:I

    .line 50
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->doLoadData()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">.GridAdapter<*>;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$1;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    iget v1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->mRequiredLevel:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Groups;->getAdminedGroups(Ljava/util/ArrayList;I)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 89
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->setRefreshEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "select"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->mSelectMode:Z

    .line 70
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "required_level"

    iget v3, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->mRequiredLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->mRequiredLevel:I

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDestroy()V

    .line 111
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V

    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f08025f

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->setTitle(I)V

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->loadData()V

    .line 82
    return-void
.end method

.method openGroupDetails(Lcom/vkcoffee/android/api/Group;)V
    .locals 2
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 150
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 151
    return-void
.end method
