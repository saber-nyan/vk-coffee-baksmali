.class Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->iconChoise()V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 173
    if-nez p2, :cond_1

    .line 174
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    const-string v1, "iconChoi"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    invoke-static {v0, v6}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;I)V

    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    if-ne p2, v2, :cond_2

    .line 183
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    const-string v1, "iconChoi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;I)V

    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 191
    :cond_2
    if-ne p2, v3, :cond_3

    .line 192
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    const-string v1, "iconChoi"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;I)V

    .line 199
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 200
    :cond_3
    if-ne p2, v4, :cond_4

    .line 201
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    const-string v1, "iconChoi"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    invoke-static {v0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;I)V

    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 208
    :cond_4
    if-ne p2, v5, :cond_0

    .line 209
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    const-string v1, "iconChoi"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    invoke-static {v0, v5}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;I)V

    .line 215
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto/16 :goto_0
.end method
