.class Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "FaveUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;->deleteBookmark(Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

.field final synthetic val$user:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;->access$000(Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 42
    .local v0, "idx":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;->access$100(Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;->access$200(Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemRemoved(I)V

    .line 46
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080178

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 48
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment$1;->success(Ljava/lang/Boolean;)V

    return-void
.end method
