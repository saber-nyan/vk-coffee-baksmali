.class Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$4;
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
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/ChangePasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->startActivity(Landroid/content/Intent;)V

    .line 86
    const/4 v1, 0x1

    return v1
.end method
