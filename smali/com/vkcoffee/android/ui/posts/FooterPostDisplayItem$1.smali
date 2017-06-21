.class Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;
.super Ljava/lang/Object;
.source "FooterPostDisplayItem.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->like(ZLandroid/view/View;)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

.field final synthetic val$lOid:I

.field final synthetic val$lPid:I

.field final synthetic val$liked:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;Landroid/view/View;IIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$lOid:I

    iput p4, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$lPid:I

    iput-boolean p5, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$liked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$lOid:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$lPid:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-eq v0, v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$liked:Z

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v2, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$liked:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 214
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->access$102(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;Z)Z

    .line 215
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$view:Landroid/view/View;

    invoke-static {p0, v1}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 213
    goto :goto_2
.end method

.method synthetic lambda$fail$716(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->bindView(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method synthetic lambda$success$714(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->access$200(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;ZLandroid/view/View;)V

    return-void
.end method

.method synthetic lambda$success$715(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->bindView(Landroid/view/View;)V

    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V
    .locals 3
    .param p1, "res"    # Lcom/vkcoffee/android/api/wall/WallLike$Result;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->access$102(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;Z)Z

    .line 187
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$view:Landroid/view/View;

    const v2, 0x7f10006f

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 188
    .local v0, "_e":Lcom/vkcoffee/android/NewsEntry;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$lOid:I

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$lPid:I

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-eq v1, v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;->likes:I

    iput v2, v1, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 192
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$liked:Z

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;->retweets:I

    iput v2, v1, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$liked:Z

    if-eq v1, v2, :cond_3

    .line 197
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$view:Landroid/view/View;

    invoke-static {p0, v2}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->val$view:Landroid/view/View;

    invoke-static {p0, v2}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 183
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V

    return-void
.end method
