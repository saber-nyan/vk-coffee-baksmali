.class Lcom/vkcoffee/android/fragments/SettingsAccountFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SettingsAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsAccountFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsAccountFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountFragment;

    .line 51
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    .prologue
    .line 53
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;-><init>()V

    .line 54
    .local v1, "inner":Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "api_result"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f10002c

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 58
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->access$0(Lcom/vkcoffee/android/fragments/SettingsAccountFragment;)V

    .line 59
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment$1;->success(Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;)V

    return-void
.end method
