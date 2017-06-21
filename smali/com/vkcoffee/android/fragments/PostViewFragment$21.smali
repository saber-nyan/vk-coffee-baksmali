.class Lcom/vkcoffee/android/fragments/PostViewFragment$21;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->banUser(Lcom/vkcoffee/android/NewsComment;)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final synthetic val$comment:Lcom/vkcoffee/android/NewsComment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;Lcom/vkcoffee/android/NewsComment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->val$comment:Lcom/vkcoffee/android/NewsComment;

    .line 1906
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 1927
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_0

    .line 1928
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 1929
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->val$comment:Lcom/vkcoffee/android/NewsComment;

    iget v1, v1, Lcom/vkcoffee/android/NewsComment;->uid:I

    iput v1, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 1930
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->val$comment:Lcom/vkcoffee/android/NewsComment;

    iget-object v1, v1, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 1931
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->val$comment:Lcom/vkcoffee/android/NewsComment;

    iget-object v1, v1, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 1932
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 1933
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$46(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/UserProfile;)V

    .line 1937
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :goto_0
    return-void

    .line 1936
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

    .line 1908
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 1909
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->val$comment:Lcom/vkcoffee/android/NewsComment;

    iget v2, v2, Lcom/vkcoffee/android/NewsComment;->uid:I

    iput v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 1910
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->val$comment:Lcom/vkcoffee/android/NewsComment;

    iget-object v2, v2, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 1911
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->val$comment:Lcom/vkcoffee/android/NewsComment;

    iget-object v2, v2, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 1912
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 1913
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1914
    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 1915
    .local v1, "r":Lcom/vkcoffee/android/UserProfile;
    iget v2, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-nez v2, :cond_0

    .line 1916
    iget-object v2, v1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 1917
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$46(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/UserProfile;)V

    .line 1924
    .end local v1    # "r":Lcom/vkcoffee/android/UserProfile;
    :goto_0
    return-void

    .line 1920
    .restart local v1    # "r":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    invoke-static {v3, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$46(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0

    .line 1923
    .end local v1    # "r":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$46(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$21;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
