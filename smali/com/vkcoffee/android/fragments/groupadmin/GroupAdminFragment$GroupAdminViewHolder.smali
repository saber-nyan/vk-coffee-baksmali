.class Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "GroupAdminFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupAdminViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)V
    .locals 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .line 254
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0300a7

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;I)V

    .line 255
    return-void
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;)V
    .locals 3
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 260
    .local v0, "v":Landroid/widget/TextView;
    iget-object v1, p1, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget v1, p1, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;->icon:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 262
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->onBind(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;)V

    return-void
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 266
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    iget-object v0, v1, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;->action:Ljava/lang/String;

    .line 267
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    const-class v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Ljava/lang/Class;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string/jumbo v1, "services"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$900(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const-class v1, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;

    :goto_1
    invoke-static {v2, v1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    const-class v1, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    goto :goto_1

    .line 271
    :cond_3
    const-string/jumbo v1, "users"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    const-class v2, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Ljava/lang/Class;)V

    goto :goto_0

    .line 273
    :cond_4
    const-string/jumbo v1, "admins"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    const-class v2, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Ljava/lang/Class;)V

    goto :goto_0

    .line 275
    :cond_5
    const-string/jumbo v1, "invites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 276
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    const-class v2, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Ljava/lang/Class;)V

    goto :goto_0

    .line 277
    :cond_6
    const-string/jumbo v1, "requests"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    const-class v2, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Ljava/lang/Class;)V

    goto :goto_0

    .line 279
    :cond_7
    const-string/jumbo v1, "blacklist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 280
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    const-class v2, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Ljava/lang/Class;)V

    goto :goto_0

    .line 281
    :cond_8
    const-string/jumbo v1, "links"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    const-class v2, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method
