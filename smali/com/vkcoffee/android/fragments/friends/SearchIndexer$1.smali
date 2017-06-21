.class Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;
.super Ljava/lang/Thread;
.source "SearchIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    .prologue
    .line 41
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->access$000(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->access$100(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->access$200(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;->this$0:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->access$200(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->add(Ljava/lang/Object;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    monitor-exit v2

    .line 50
    return-void

    .line 49
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
