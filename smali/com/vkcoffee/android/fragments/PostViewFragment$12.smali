.class Lcom/vkcoffee/android/fragments/PostViewFragment$12;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->likeComment(Lcom/vkcoffee/android/NewsComment;)V
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

.field private final synthetic val$comm:Lcom/vkcoffee/android/NewsComment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/NewsComment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$12;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$12;->val$comm:Lcom/vkcoffee/android/NewsComment;

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 1374
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$12;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$12;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1377
    :cond_0
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V
    .locals 2
    .param p1, "res"    # Lcom/vkcoffee/android/api/wall/WallLike$Result;

    .prologue
    .line 1368
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$12;->val$comm:Lcom/vkcoffee/android/NewsComment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$12;->val$comm:Lcom/vkcoffee/android/NewsComment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/NewsComment;->isLiked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/vkcoffee/android/NewsComment;->isLiked:Z

    .line 1369
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$12;->val$comm:Lcom/vkcoffee/android/NewsComment;

    iget v1, p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;->likes:I

    iput v1, v0, Lcom/vkcoffee/android/NewsComment;->numLikes:I

    .line 1370
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$12;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    .line 1371
    return-void

    .line 1368
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$12;->success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V

    return-void
.end method
