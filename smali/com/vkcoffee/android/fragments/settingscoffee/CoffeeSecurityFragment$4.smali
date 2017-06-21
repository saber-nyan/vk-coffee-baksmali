.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$4;
.super Ljava/lang/Object;
.source "CoffeeSecurityFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    if-ne v1, v2, :cond_0

    .line 99
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->offPinCode()V

    .line 100
    const-string v1, "PIN"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListData;->saveResult(Ljava/lang/String;I)V

    .line 101
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PIN"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Pin-\u043a\u043e\u0434 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 118
    :goto_0
    return v4

    .line 105
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->isEmptyPinCode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->onPinCode()V

    .line 107
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PIN"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    const-string v1, "PIN"

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListData;->returnPos(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Pin-\u043a\u043e\u0434 \u0432\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    const-string v2, "goSetPinN"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 113
    .local v0, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 114
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u0414\u043b\u044f \u043d\u0430\u0447\u0430\u043b\u0430 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0435 pin-\u043a\u043e\u0434"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
