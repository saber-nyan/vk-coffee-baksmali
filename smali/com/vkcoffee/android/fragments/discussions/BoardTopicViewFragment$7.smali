.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "BoardTopicViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->banUser(Lcom/vkcoffee/android/api/board/BoardComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

.field private final synthetic val$comment:Lcom/vkcoffee/android/api/board/BoardComment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    .line 911
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 932
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_0

    .line 933
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 934
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget v1, v1, Lcom/vkcoffee/android/api/board/BoardComment;->uid:I

    iput v1, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 935
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v1, v1, Lcom/vkcoffee/android/api/board/BoardComment;->userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 936
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v1, v1, Lcom/vkcoffee/android/api/board/BoardComment;->userPhoto:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 937
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 938
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$6(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$10(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/UserProfile;I)V

    .line 942
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :goto_0
    return-void

    .line 941
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_0
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v4, 0x0

    .line 913
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 914
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget v2, v2, Lcom/vkcoffee/android/api/board/BoardComment;->uid:I

    iput v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 915
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v2, v2, Lcom/vkcoffee/android/api/board/BoardComment;->userName:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 916
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v2, v2, Lcom/vkcoffee/android/api/board/BoardComment;->userPhoto:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 917
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 918
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 919
    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 920
    .local v1, "r":Lcom/vkcoffee/android/UserProfile;
    iget v2, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-nez v2, :cond_0

    .line 921
    iget-object v2, v1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 922
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$6(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$10(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/UserProfile;I)V

    .line 929
    .end local v1    # "r":Lcom/vkcoffee/android/UserProfile;
    :goto_0
    return-void

    .line 925
    .restart local v1    # "r":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$6(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$10(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/UserProfile;I)V

    goto :goto_0

    .line 928
    .end local v1    # "r":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$6(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$10(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/UserProfile;I)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
