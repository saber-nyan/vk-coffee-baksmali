.class public Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendsFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V
    .locals 0
    .param p1, "friendsFragment"    # Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .line 483
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "friendsFragment"    # Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .prologue
    .line 486
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->lambda$onViewCreated$348(Lcom/vkcoffee/android/UserProfile;)V

    .line 491
    return-void
.end method
