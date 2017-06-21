.class Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;
.super Ljava/lang/Object;
.source "BoardCommentsLoader.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->loadTop(Landroid/content/Context;)V
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
        "Lcom/vkcoffee/android/api/board/BoardGetComments$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

.field final synthetic val$session:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    iput p2, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->val$session:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 268
    iget v0, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->val$session:I

    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    iget-object v1, v1, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->session:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$302(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;Z)Z

    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-static {v0}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$500(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;)Lcom/vkcoffee/android/api/board/BoardCommentsLoader$BoardCommentsLoaderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-static {v1}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$400(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$BoardCommentsLoaderListener;->onStartLoading(IZ)V

    .line 272
    :cond_0
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/board/BoardGetComments$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/vkcoffee/android/api/board/BoardGetComments$Result;

    .prologue
    const/4 v3, 0x1

    .line 255
    iget v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->val$session:I

    iget-object v2, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    iget-object v2, v2, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->session:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 256
    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-static {v1, p1, v3}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$000(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;Lcom/vkcoffee/android/api/board/BoardGetComments$Result;Z)I

    move-result v0

    .line 257
    .local v0, "countAdded":I
    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-static {v1, v3}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$102(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;Z)Z

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    iget-object v2, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-static {v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$200(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$202(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;I)I

    .line 261
    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$302(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;Z)Z

    .line 262
    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-static {v1}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$500(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;)Lcom/vkcoffee/android/api/board/BoardCommentsLoader$BoardCommentsLoaderListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->this$0:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-static {v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->access$400(Lcom/vkcoffee/android/api/board/BoardCommentsLoader;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$BoardCommentsLoaderListener;->onStartLoading(IZ)V

    .line 264
    .end local v0    # "countAdded":I
    :cond_1
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader$1;->success(Lcom/vkcoffee/android/api/board/BoardGetComments$Result;)V

    return-void
.end method
