.class Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$5;
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
    .line 92
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "syncsettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    const/16 v2, 0x68

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    const/4 v1, 0x1

    return v1
.end method
