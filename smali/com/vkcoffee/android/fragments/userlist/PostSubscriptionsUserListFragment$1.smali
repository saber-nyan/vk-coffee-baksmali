.class Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PostSubscriptionsUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->onActionClick(Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;

.field final synthetic val$profile:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment$1;->val$profile:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->access$000(Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment$1;->val$profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;->updateList()V

    .line 44
    return-void
.end method
