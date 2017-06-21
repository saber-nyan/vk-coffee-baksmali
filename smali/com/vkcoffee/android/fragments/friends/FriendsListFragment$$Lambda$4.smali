.class final synthetic Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$4;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    check-cast p2, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->lambda$setData$354(Lcom/vkcoffee/android/UserProfile;Lcom/vkcoffee/android/UserProfile;)I

    move-result v0

    return v0
.end method
