.class final synthetic Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF2Int;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)Lcom/vkcoffee/android/functions/VoidF2Int;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    check-cast p1, Lcom/vkcoffee/android/api/FriendRequest;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;->accept(Lcom/vkcoffee/android/api/FriendRequest;ZI)V

    return-void
.end method
