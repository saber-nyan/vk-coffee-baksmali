.class Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$1;
.super Ljava/lang/Object;
.source "SettingsAccountInnerFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/ValidationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->access$000(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->emailLink:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "return_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    return v3
.end method
