.class Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "FriendRequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    const-string/jumbo v7, "com.vkcoffee.android.ACTION_FRIEND_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 41
    const-string/jumbo v7, "id"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, "id":I
    const-string/jumbo v7, "status"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 43
    .local v4, "status":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->access$000(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->access$100(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 45
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->access$200(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/api/FriendRequest;

    .line 46
    .local v3, "request":Lcom/vkcoffee/android/api/FriendRequest;
    iget-object v7, v3, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v7, v2, :cond_3

    .line 47
    if-eq v4, v6, :cond_0

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    :cond_0
    move v5, v6

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/vkcoffee/android/api/FriendRequest;->sent:Ljava/lang/Boolean;

    .line 48
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->access$300(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    .line 49
    .local v0, "adapter":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/GridFragment<Lcom/vkcoffee/android/api/FriendRequest;>.GridAdapter<*>;"
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyDataSetChanged()V

    .line 57
    .end local v0    # "adapter":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/GridFragment<Lcom/vkcoffee/android/api/FriendRequest;>.GridAdapter<*>;"
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v3    # "request":Lcom/vkcoffee/android/api/FriendRequest;
    .end local v4    # "status":I
    :cond_2
    return-void

    .line 44
    .restart local v1    # "i":I
    .restart local v2    # "id":I
    .restart local v3    # "request":Lcom/vkcoffee/android/api/FriendRequest;
    .restart local v4    # "status":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
