.class Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "NewsfeedBanlistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;)V
    .locals 2
    .param p1, "r"    # Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;->users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$002(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;->groups:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$102(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->rebuildSegmenter()V

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->updateList()V

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->dataLoaded()V

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->refreshDone()V

    .line 80
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;->success(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned$Result;)V

    return-void
.end method
