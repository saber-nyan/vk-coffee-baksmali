.class final synthetic Lcom/vkcoffee/android/fragments/friends/FriendsFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$$Lambda$3;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->lambda$doLoadData$350()V

    return-void
.end method
