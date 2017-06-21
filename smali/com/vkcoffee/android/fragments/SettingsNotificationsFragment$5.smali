.class Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$5;
.super Ljava/lang/Object;
.source "SettingsNotificationsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->access$100(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "dnd_end"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    const-string/jumbo v2, "cat_notify"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 168
    .local v0, "cat":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->access$200(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 169
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->access$300(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 170
    const/4 v1, 0x1

    return v1
.end method
