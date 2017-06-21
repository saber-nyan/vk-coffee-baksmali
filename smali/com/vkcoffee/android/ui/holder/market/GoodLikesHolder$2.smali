.class Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;
.super Ljava/lang/Object;
.source "GoodLikesHolder.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

.field final synthetic val$isAdd:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->val$isAdd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->val$isAdd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Lcom/vkcoffee/android/data/Good;->user_likes:I

    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->bind(Lcom/vkcoffee/android/data/Good;)V

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/vkcoffee/android/api/wall/WallLike$Result;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->val$isAdd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/vkcoffee/android/data/Good;->user_likes:I

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget v1, p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;->likes:I

    iput v1, v0, Lcom/vkcoffee/android/data/Good;->likes_count:I

    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->bind(Lcom/vkcoffee/android/data/Good;)V

    .line 116
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;->success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V

    return-void
.end method
