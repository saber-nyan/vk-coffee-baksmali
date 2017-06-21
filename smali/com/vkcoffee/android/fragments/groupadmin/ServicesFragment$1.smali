.class Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ServicesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->doLoadData()V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    .line 84
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->access$1(Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;)V

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->dataLoaded()V

    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment;->invalidateOptionsMenu()V

    .line 90
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/ServicesFragment$1;->success(Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V

    return-void
.end method
