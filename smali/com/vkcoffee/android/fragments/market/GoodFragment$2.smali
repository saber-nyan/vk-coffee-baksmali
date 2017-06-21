.class Lcom/vkcoffee/android/fragments/market/GoodFragment$2;
.super Ljava/lang/Object;
.source "GoodFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/market/GoodFragment;->likeComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

.field final synthetic val$comm:Lcom/vkcoffee/android/api/board/BoardComment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;->val$comm:Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    :cond_0
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V
    .locals 2
    .param p1, "res"    # Lcom/vkcoffee/android/api/wall/WallLike$Result;

    .prologue
    .line 370
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;->val$comm:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;->val$comm:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/board/BoardComment;->isLiked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/vkcoffee/android/api/board/BoardComment;->isLiked:Z

    .line 371
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;->val$comm:Lcom/vkcoffee/android/api/board/BoardComment;

    iget v1, p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;->likes:I

    iput v1, v0, Lcom/vkcoffee/android/api/board/BoardComment;->likesCount:I

    .line 372
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->updateList()V

    .line 373
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 367
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;->success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V

    return-void
.end method
