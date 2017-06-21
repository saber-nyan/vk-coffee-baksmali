.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$12;
.super Ljava/lang/Object;
.source "CoffeeVisualFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$12;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 209
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_0

    .line 210
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    const-string v1, "normalSwipe"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$12;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->callRestart(Landroid/app/Activity;)V

    .line 222
    :goto_0
    return v3

    .line 216
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    const-string v1, "normalSwipe"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$12;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->callRestart(Landroid/app/Activity;)V

    goto :goto_0
.end method
