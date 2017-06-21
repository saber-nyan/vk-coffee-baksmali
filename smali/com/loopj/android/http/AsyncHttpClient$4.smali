.class Lcom/loopj/android/http/AsyncHttpClient$4;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 714
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->access$100(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$context:Landroid/content/Context;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 715
    .local v2, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/loopj/android/http/RequestHandle;>;"
    if-eqz v2, :cond_1

    .line 716
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loopj/android/http/RequestHandle;

    .line 717
    .local v1, "requestHandle":Lcom/loopj/android/http/RequestHandle;
    iget-boolean v3, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    invoke-virtual {v1, v3}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_0

    .line 719
    .end local v1    # "requestHandle":Lcom/loopj/android/http/RequestHandle;
    :cond_0
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->access$100(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$context:Landroid/content/Context;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
