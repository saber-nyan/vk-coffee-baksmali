.class Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "NewsfeedBanlistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->onActionClick(Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

.field final synthetic val$profile:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->val$profile:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->val$profile:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-lez v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$000(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 102
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->val$profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v2, v3, :cond_0

    .line 103
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$000(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    const v2, 0x7f0802d5

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$200(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;I)V

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->rebuildSegmenter()V

    .line 118
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->updateList()V

    .line 119
    return-void

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$100(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 110
    .restart local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->val$profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v2, v3, :cond_3

    .line 111
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$100(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    const v2, 0x7f0802d4

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$200(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;I)V

    goto :goto_0
.end method
