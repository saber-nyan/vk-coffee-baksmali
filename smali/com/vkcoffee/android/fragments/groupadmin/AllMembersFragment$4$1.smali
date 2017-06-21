.class Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "AllMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->val$user:Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->val$user:Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v1, "contact_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->updateList()V

    .line 207
    return-void
.end method
