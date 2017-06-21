.class Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "FriendsImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->addFriend(Lcom/vkcoffee/android/UserProfile;I)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

.field final synthetic val$position:I

.field final synthetic val$user:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/UserProfile;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;->val$user:Lcom/vkcoffee/android/UserProfile;

    iput p4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;->val$position:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 190
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->access$300(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->access$400(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemRemoved(I)V

    .line 193
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;->success(Ljava/lang/Integer;)V

    return-void
.end method
