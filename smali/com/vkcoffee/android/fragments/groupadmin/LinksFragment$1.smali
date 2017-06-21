.class Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$1;
.super Ljava/lang/Object;
.source "LinksFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->onItemButtonClick(Landroid/view/View;Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

.field final synthetic val$link:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$1;->val$link:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return v2

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$1;->val$link:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$000(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;Z)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$1;->val$link:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$100(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
