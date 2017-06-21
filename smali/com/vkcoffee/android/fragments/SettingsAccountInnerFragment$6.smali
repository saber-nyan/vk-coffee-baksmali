.class Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$6;
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
    .line 107
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 109
    new-instance v0, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v1, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Activity;I)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method
