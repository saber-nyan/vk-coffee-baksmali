.class Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "FriendsRecommPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$2:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

.field final synthetic val$needSubscribe:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->this$2:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

    iput-boolean p3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->val$needSubscribe:Z

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->this$2:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$1200(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->val$needSubscribe:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->this$2:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->this$2:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$1300(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->bind(Ljava/lang/Object;)V

    .line 174
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 175
    return-void

    .line 172
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->this$2:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$900(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->val$needSubscribe:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->this$2:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->this$2:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$1000(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->bind(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->this$2:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->access$1100(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/cache/NewsfeedCache;->replaceOne(Lcom/vkcoffee/android/NewsEntry;)V

    .line 168
    return-void

    .line 165
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;->success(Ljava/lang/Integer;)V

    return-void
.end method
