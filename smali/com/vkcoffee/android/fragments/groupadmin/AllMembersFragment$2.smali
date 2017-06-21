.class Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;
.super Ljava/lang/Object;
.source "AllMembersFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->onItemButtonClick(Landroid/view/View;Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

.field final synthetic val$user:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$400(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$500(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$600(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0

    .line 112
    :pswitch_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$2;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$700(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
