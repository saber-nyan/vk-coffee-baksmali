.class Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$6;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "var1"    # Landroid/preference/Preference;

    .prologue
    .line 441
    const-class v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 442
    const/4 v0, 0x1

    return v0
.end method
