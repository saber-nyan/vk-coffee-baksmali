.class Lcom/vkcoffee/android/data/Groups$1$1;
.super Ljava/lang/Object;
.source "Groups.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Groups$1;->run()V
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/data/Groups$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/Groups$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/data/Groups$1;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkcoffee/android/data/Groups$1$1;->this$0:Lcom/vkcoffee/android/data/Groups$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 55
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/cache/GroupsCache;->get()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$100()Lcom/vkcoffee/android/SearchIndexer;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SearchIndexer;->bind(Ljava/util/List;)Lcom/vkcoffee/android/SearchIndexer;

    .line 58
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$100()Lcom/vkcoffee/android/SearchIndexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/SearchIndexer;->build()V

    .line 59
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Groups$1$1;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-static {p1}, Lcom/vkcoffee/android/cache/GroupsCache;->replace(Ljava/util/List;)V

    .line 49
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$100()Lcom/vkcoffee/android/SearchIndexer;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SearchIndexer;->bind(Ljava/util/List;)Lcom/vkcoffee/android/SearchIndexer;

    .line 50
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$100()Lcom/vkcoffee/android/SearchIndexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/SearchIndexer;->build()V

    .line 51
    return-void
.end method
