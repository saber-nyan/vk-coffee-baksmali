.class public Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$3;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendsFragment$$Lambda$3"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V
    .locals 0
    .param p1, "friendsFragment"    # Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .line 515
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "friendsFragment"    # Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .prologue
    .line 518
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$3;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->lambda$doLoadData$350()V

    .line 523
    return-void
.end method
