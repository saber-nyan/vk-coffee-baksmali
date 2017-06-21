.class Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "BlacklistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;->onActionClick(Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;

.field final synthetic val$profile:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment$1;->val$profile:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;->access$000(Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment$1;->val$profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 37
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;->access$100(Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment$1;->val$profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;->access$200(Lcom/vkcoffee/android/fragments/userlist/BlacklistFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemRemoved(I)V

    .line 40
    return-void
.end method
