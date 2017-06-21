.class Lcom/vkcoffee/android/SearchIndexer$1;
.super Ljava/lang/Object;
.source "SearchIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/SearchIndexer;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/SearchIndexer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/SearchIndexer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/SearchIndexer;

    .prologue
    .line 49
    .local p0, "this":Lcom/vkcoffee/android/SearchIndexer$1;, "Lcom/vkcoffee/android/SearchIndexer$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/SearchIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    .local p0, "this":Lcom/vkcoffee/android/SearchIndexer$1;, "Lcom/vkcoffee/android/SearchIndexer$1;"
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/SearchIndexer;

    invoke-static {v2}, Lcom/vkcoffee/android/SearchIndexer;->access$000(Lcom/vkcoffee/android/SearchIndexer;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 53
    iget-object v2, p0, Lcom/vkcoffee/android/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/SearchIndexer;

    invoke-static {v2}, Lcom/vkcoffee/android/SearchIndexer;->access$100(Lcom/vkcoffee/android/SearchIndexer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 54
    iget-object v2, p0, Lcom/vkcoffee/android/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/SearchIndexer;

    invoke-static {v2}, Lcom/vkcoffee/android/SearchIndexer;->access$200(Lcom/vkcoffee/android/SearchIndexer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Indexable;

    .line 55
    .local v0, "obj":Lcom/vkcoffee/android/Indexable;, "TT;"
    iget-object v3, p0, Lcom/vkcoffee/android/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/SearchIndexer;

    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/SearchIndexer;->add(Lcom/vkcoffee/android/Indexable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "obj":Lcom/vkcoffee/android/Indexable;, "TT;"
    :catch_0
    move-exception v1

    .line 59
    .local v1, "x":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/vkcoffee/android/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/SearchIndexer;

    invoke-static {v2}, Lcom/vkcoffee/android/SearchIndexer;->access$100(Lcom/vkcoffee/android/SearchIndexer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 61
    .end local v1    # "x":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 57
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/vkcoffee/android/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/SearchIndexer;

    invoke-static {v2}, Lcom/vkcoffee/android/SearchIndexer;->access$000(Lcom/vkcoffee/android/SearchIndexer;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
