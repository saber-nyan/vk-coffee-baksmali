.class Lcom/vkcoffee/android/fragments/PhotoNewsFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PhotoNewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKFromList",
        "<",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PhotoNewsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PhotoNewsFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PhotoNewsFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotoNewsFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKFromList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKFromList",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "news":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/NewsEntry;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotoNewsFragment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKFromList;->from()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->access$002(Lcom/vkcoffee/android/fragments/PhotoNewsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotoNewsFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotoNewsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->access$000(Lcom/vkcoffee/android/fragments/PhotoNewsFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PhotoNewsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->access$000(Lcom/vkcoffee/android/fragments/PhotoNewsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/vkcoffee/android/fragments/PhotoNewsFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 39
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/vkcoffee/android/data/VKFromList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PhotoNewsFragment$1;->success(Lcom/vkcoffee/android/data/VKFromList;)V

    return-void
.end method
