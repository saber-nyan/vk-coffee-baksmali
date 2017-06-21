.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$14;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$14;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    .line 245
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

    .line 247
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_0

    .line 248
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    const-string v1, "doubleTap"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$14;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    .line 259
    return v3

    .line 253
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    const-string v1, "doubleTap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
