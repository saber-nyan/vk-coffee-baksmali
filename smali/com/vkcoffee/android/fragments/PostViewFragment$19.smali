.class Lcom/vkcoffee/android/fragments/PostViewFragment$19;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->like(Z)V
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
        "Lcom/vkcoffee/android/api/wall/WallLike$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final synthetic val$liked:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->val$liked:Z

    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 5

    .prologue
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const/4 v2, 0x0

    .line 1846
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    const/16 v4, 0x8

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->val$liked:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 1848
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->val$liked:Z

    if-eqz v1, :cond_2

    .line 1849
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    .line 1850
    .local v0, "access$000":Lcom/vkcoffee/android/NewsEntry;
    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 1855
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$45(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V

    .line 1856
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$20(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1857
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$20(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$16$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1859
    :cond_0
    return-void

    .line 1846
    .end local v0    # "access$000":Lcom/vkcoffee/android/NewsEntry;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1852
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    .line 1853
    .restart local v0    # "access$000":Lcom/vkcoffee/android/NewsEntry;
    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    goto :goto_1
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V
    .locals 2
    .param p1, "res"    # Lcom/vkcoffee/android/api/wall/WallLike$Result;

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v1, p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;->likes:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 1829
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->val$liked:Z

    if-eqz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v1, p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;->retweets:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 1832
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$26(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    .line 1833
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$45(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V

    .line 1834
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$20(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1835
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->val$liked:Z

    if-eq v0, v1, :cond_2

    .line 1836
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$20(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$16$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1841
    :cond_1
    :goto_0
    return-void

    .line 1838
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$20(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$16$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$19;->success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V

    return-void
.end method
