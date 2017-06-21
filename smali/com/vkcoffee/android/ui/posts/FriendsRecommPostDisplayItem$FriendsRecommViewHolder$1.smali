.class Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;
.super Ljava/lang/Object;
.source "FriendsRecommPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;-><init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

.field final synthetic val$this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->val$this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x2

    .line 148
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$200(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$300(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-ne v1, v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$400(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-nez v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$500(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iput v3, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 154
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$600(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->bind(Ljava/lang/Object;)V

    .line 155
    const/4 v0, 0x1

    .line 161
    .local v0, "needSubscribe":Z
    :goto_1
    new-instance v2, Lcom/vkcoffee/android/api/execute/SetSubscriptionStatus;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$1400(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v2, v1, v0}, Lcom/vkcoffee/android/api/execute/SetSubscriptionStatus;-><init>(IZ)V

    new-instance v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1$1;-><init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;Landroid/content/Context;Z)V

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/api/execute/SetSubscriptionStatus;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 157
    .end local v0    # "needSubscribe":Z
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$700(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iput v2, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 158
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->access$800(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->bind(Ljava/lang/Object;)V

    .line 159
    const/4 v0, 0x0

    .restart local v0    # "needSubscribe":Z
    goto :goto_1
.end method
