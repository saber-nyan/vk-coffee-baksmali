.class Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6$1;
.super Ljava/lang/Object;
.source "SuggestFriendsNearbyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6;->success(Lcom/vkcoffee/android/data/VKList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->access$400(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V

    .line 263
    return-void
.end method
