.class Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "FriendRequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->accept(Lcom/vkcoffee/android/api/FriendRequest;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

.field final synthetic val$agree:Z

.field final synthetic val$position:I

.field final synthetic val$request:Lcom/vkcoffee/android/api/FriendRequest;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/FriendRequest;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;->val$request:Lcom/vkcoffee/android/api/FriendRequest;

    iput-boolean p4, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;->val$agree:Z

    iput p5, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;->val$position:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 122
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->decreaseRequests()V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;->val$request:Lcom/vkcoffee/android/api/FriendRequest;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;->val$agree:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/api/FriendRequest;->sent:Ljava/lang/Boolean;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->access$500(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemChanged(I)V

    .line 127
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$3;->success(Ljava/lang/Integer;)V

    return-void
.end method
