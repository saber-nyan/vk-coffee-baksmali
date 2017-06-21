.class Lcom/vkcoffee/android/PhotoViewer$20;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->like(Z)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;

.field final synthetic val$curPhoto:Lcom/vkcoffee/android/Photo;

.field final synthetic val$liked:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Lcom/vkcoffee/android/Photo;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iput-object p2, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iput-boolean p3, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$liked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    const/4 v1, 0x0

    .line 1009
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$liked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/vkcoffee/android/Photo;->isLiked:Z

    .line 1010
    iget-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$liked:Z

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v0, Lcom/vkcoffee/android/Photo;->nLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkcoffee/android/Photo;->nLikes:I

    .line 1015
    :goto_1
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->access$2402(Lcom/vkcoffee/android/PhotoViewer;Z)Z

    .line 1016
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1200(Lcom/vkcoffee/android/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$20$3;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/PhotoViewer$20$3;-><init>(Lcom/vkcoffee/android/PhotoViewer$20;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1022
    return-void

    :cond_0
    move v0, v1

    .line 1009
    goto :goto_0

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v0, Lcom/vkcoffee/android/Photo;->nLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkcoffee/android/Photo;->nLikes:I

    goto :goto_1
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V
    .locals 2
    .param p1, "res"    # Lcom/vkcoffee/android/api/wall/WallLike$Result;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;->likes:I

    iput v1, v0, Lcom/vkcoffee/android/Photo;->nLikes:I

    .line 988
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iget v0, v0, Lcom/vkcoffee/android/Photo;->postID:I

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$2300(Lcom/vkcoffee/android/PhotoViewer;)V

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->access$2402(Lcom/vkcoffee/android/PhotoViewer;Z)Z

    .line 992
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v0, v0, Lcom/vkcoffee/android/Photo;->isLiked:Z

    iget-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer$20;->val$liked:Z

    if-eq v0, v1, :cond_1

    .line 993
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1200(Lcom/vkcoffee/android/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$20$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/PhotoViewer$20$1;-><init>(Lcom/vkcoffee/android/PhotoViewer$20;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1005
    :goto_0
    return-void

    .line 999
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1200(Lcom/vkcoffee/android/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$20$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/PhotoViewer$20$2;-><init>(Lcom/vkcoffee/android/PhotoViewer$20;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 983
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallLike$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/PhotoViewer$20;->success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V

    return-void
.end method
