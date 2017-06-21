.class public Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "RequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestHolder;,
        Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/api/FriendRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 44
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetRequests;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/groups/GroupsGetRequests;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetRequests;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 65
    return-void
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->adapter:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->adapter:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->adapter:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 38
    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->setTitle(I)V

    .line 39
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->loadData()V

    .line 40
    return-void
.end method
