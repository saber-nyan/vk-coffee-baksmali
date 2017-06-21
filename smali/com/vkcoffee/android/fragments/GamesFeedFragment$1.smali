.class Lcom/vkcoffee/android/fragments/GamesFeedFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GamesFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/GamesFeedFragment;->doLoadData(II)V
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
        "Lcom/vkcoffee/android/data/GameFeedEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GamesFeedFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GamesFeedFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GamesFeedFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GamesFeedFragment;

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
            "Lcom/vkcoffee/android/data/GameFeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "feed":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/data/GameFeedEntry;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKFromList;->from()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKFromList;->from()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->access$000(Lcom/vkcoffee/android/fragments/GamesFeedFragment;Ljava/util/List;Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Lcom/vkcoffee/android/data/VKFromList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/GamesFeedFragment$1;->success(Lcom/vkcoffee/android/data/VKFromList;)V

    return-void
.end method
