.class Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$5;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "InfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$302(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$700(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)V

    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->dataLoaded()V

    .line 271
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->invalidateOptionsMenu()V

    .line 272
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 265
    check-cast p1, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$5;->success(Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V

    return-void
.end method
