.class Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$2;
.super Lcom/vkcoffee/android/api/SimpleListCallback;
.source "FriendRequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleListCallback",
        "<",
        "Lcom/vkcoffee/android/api/FriendRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .prologue
    .line 67
    .local p2, "fragment":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<Lcom/vkcoffee/android/api/FriendRequest;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/FriendRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleListCallback;->success(Lcom/vkcoffee/android/data/VKList;)V

    .line 71
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/LongPollService;->setNumFriendRequests(I)V

    .line 72
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumFriendRequests()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->notifyRequestsChanged(I)V

    .line 73
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$2;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
