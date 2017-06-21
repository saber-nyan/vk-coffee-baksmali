.class Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$3;
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
    .line 69
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "domain"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->access$000(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    const/16 v3, 0x67

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 77
    const/4 v1, 0x1

    return v1
.end method
