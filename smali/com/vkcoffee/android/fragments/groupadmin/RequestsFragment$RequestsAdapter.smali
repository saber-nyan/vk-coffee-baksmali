.class Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "RequestsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;",
        ">;",
        "Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)V

    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    const/4 v0, 0x6

    return v0
.end method

.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->access$300(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/FriendRequest;

    iget-object v0, v0, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->access$200(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onCreateViewHolder$380(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "arg"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 79
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$onCreateViewHolder$381(Lcom/vkcoffee/android/api/FriendRequest;Ljava/lang/Boolean;I)V
    .locals 5
    .param p1, "friendRequest"    # Lcom/vkcoffee/android/api/FriendRequest;
    .param p2, "accept"    # Ljava/lang/Boolean;
    .param p3, "adapterPos"    # I

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v1, p1, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v0, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 82
    .local v0, "uid":I
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Lcom/vkcoffee/android/api/groups/GroupsApproveRequest;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/api/groups/GroupsApproveRequest;-><init>(II)V

    invoke-virtual {v1, v4, v4}, Lcom/vkcoffee/android/api/groups/GroupsApproveRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->access$400(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0, p3}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->notifyItemRemoved(I)V

    .line 89
    return-void

    .line 85
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;-><init>(II)V

    invoke-virtual {v1, v4, v4}, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;
    .param p2, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->access$100(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/FriendRequest;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->bind(Lcom/vkcoffee/android/api/FriendRequest;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 79
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestHolder;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;Landroid/view/ViewGroup;)V

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;)Lcom/vkcoffee/android/functions/VoidF2Int;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestHolder;->attach(Lcom/vkcoffee/android/functions/VoidF1;Lcom/vkcoffee/android/functions/VoidF2Int;)Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;

    move-result-object v0

    return-object v0
.end method
