.class Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/friends/FriendsGet$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 450
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    .line 451
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$11(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 452
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$12(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 453
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 454
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/friends/FriendsGet$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/vkcoffee/android/api/friends/FriendsGet$Result;

    .prologue
    const/4 v3, 0x0

    .line 442
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;->friends:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setData(Ljava/util/List;)V

    .line 443
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$7(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 444
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$8(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$7(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Friends;->intersect(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 445
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$9(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$7(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$10(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Z

    move-result v2

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setData(Ljava/util/List;ZZZ)V

    .line 446
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$3(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V

    .line 447
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;->success(Lcom/vkcoffee/android/api/friends/FriendsGet$Result;)V

    return-void
.end method
