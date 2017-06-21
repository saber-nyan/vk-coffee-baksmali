.class Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$2;
.super Lcom/vkcoffee/android/api/SimpleListCallback;
.source "ManagersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleListCallback",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    .prologue
    .line 99
    .local p2, "fragment":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<Lcom/vkcoffee/android/UserProfile;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    return-void
.end method


# virtual methods
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
    .line 102
    .local p1, "users":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 103
    .local v0, "u":Lcom/vkcoffee/android/UserProfile;
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v3, "role"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 117
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v3, "role"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_0

    .line 103
    :sswitch_0
    const-string/jumbo v4, "creator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "administrator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "moderator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "editor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    const v3, 0x7f08023d

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    const v3, 0x7f08023c

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    const v3, 0x7f08023f

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    const v3, 0x7f08023e

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_0

    .line 121
    .end local v0    # "u":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleListCallback;->success(Lcom/vkcoffee/android/data/VKList;)V

    .line 122
    return-void

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        -0x777d5afb -> :sswitch_2
        -0x4df3de93 -> :sswitch_3
        -0x26e03d33 -> :sswitch_1
        0x3d4e802c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$2;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
