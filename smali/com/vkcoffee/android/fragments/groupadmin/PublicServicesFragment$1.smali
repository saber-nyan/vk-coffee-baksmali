.class Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PublicServicesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->doLoadData()V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;

    .line 75
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->access$1(Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;)V

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->dataLoaded()V

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment;->invalidateOptionsMenu()V

    .line 81
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/PublicServicesFragment$1;->success(Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)V

    return-void
.end method
