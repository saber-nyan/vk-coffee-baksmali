.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;
.super Ljava/lang/Object;
.source "CoffeeBotFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->prefCrazy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_1

    .line 162
    sget-object v2, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 163
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/CrazyTypingSNL;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 164
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "other"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v3, "crazyPref"

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 171
    .local v0, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 180
    :goto_1
    return v6

    .line 167
    .end local v0    # "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u041f\u0440\u043e\u0446\u0435\u0441\u0441 Crazy Typing \u0443\u0436\u0435 \u0437\u0430\u043f\u0443\u0449\u0435\u043d"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v3, "crazyPref"

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 176
    .restart local v0    # "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 177
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V

    goto :goto_1
.end method
