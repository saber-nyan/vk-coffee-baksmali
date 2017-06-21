.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;
.super Ljava/lang/Object;
.source "CoffeeBotFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_2

    .line 81
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "StatusSNL"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "warnOk"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435"

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 83
    const-string v3, "<b>\u0411\u044b\u043b\u0438 \u0444\u0430\u043a\u0442\u044b \u0437\u0430\u043c\u043e\u0440\u043e\u0437\u043a\u0438 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b \u0437\u0430 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u043d\u0438\u0435 \u0430\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441\u0430, \u043a\u043e\u0442\u043e\u0440\u044b\u0439 \u043f\u0440\u0435\u0434\u043e\u0441\u0442\u0430\u0432\u043b\u044f\u043b\u0438 \u0434\u0440\u0443\u0433\u0438\u0435 \u0441\u0435\u0440\u0432\u0438\u0441\u044b.<br>\u0412 \u0441\u0432\u043e\u044e \u043e\u0447\u0435\u0440\u0435\u0434\u044c \u0430\u0432\u0442\u043e\u0440 VK Coffee \u0441\u0434\u0435\u043b\u0430\u043b \u0442\u0430\u043a\u0443\u044e \u0440\u0435\u0430\u043b\u0438\u0437\u0430\u0446\u0438\u044e, \u0434\u0430\u0431\u044b \u0443 \u0430\u0434\u043c\u0438\u043d\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u0438 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 \u043d\u0435 \u0432\u043e\u0437\u043d\u0438\u043a\u043b\u043e \u043a \u0412\u0430\u043c \u0432\u043e\u043f\u0440\u043e\u0441\u043e\u0432:</b><br><br> <br>-\u0414\u0435\u043b\u0430\u0435\u0442\u0441\u044f \u043e\u0434\u0438\u043d \u0437\u0430\u043f\u0440\u043e\u0441 \u0437\u0430 \u043e\u0434\u043d\u0443 \u043c\u0438\u043d\u0443\u0442\u0443. \u0414\u0430\u0431\u044b \u043d\u0435 \u043d\u0430\u0433\u0440\u0443\u0436\u0430\u0442\u044c \u0441\u0435\u0440\u0432\u0435\u0440\u0430 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435;<br> <br>-\u0417\u0430\u043f\u0440\u043e\u0441 \u0434\u0435\u043b\u0430\u0435\u0442\u0441\u044f \u043d\u0435 \u0432 \u043d\u0430\u0447\u0430\u043b\u0435 \u043d\u043e\u0432\u043e\u0439 \u043c\u0438\u043d\u0443\u0442\u044b;<br> <br>-\u0417\u0430\u043f\u0440\u043e\u0441 \u043d\u0438\u0447\u0435\u043c \u043d\u0435 \u043f\u043e\u0434\u043e\u0437\u0440\u0438\u0442\u0435\u043b\u044c\u043d\u044b\u0439, \u0442\u0430\u043a \u043a\u0430\u043a \u0441\u043e\u0432\u0435\u0440\u0448\u0430\u0435\u0442\u0441\u044f \u043d\u0430\u0442\u0438\u0432\u043d\u043e \u0438 \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u043e, \u0442\u0430\u043a \u0436\u0435 \u043a\u0430\u043a \u0438 \u043e\u0441\u0442\u0430\u043b\u044c\u043d\u044b\u0435 \u0437\u0430\u043f\u0440\u043e\u0441\u044b \u043e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u043e\u0433\u043e \u043a\u043b\u0438\u0435\u043d\u0442\u0430.<br><br> <br> <b>\u041e\u0434\u043d\u0430\u043a\u043e \u0432 \u043b\u044e\u0431\u043e\u043c \u0441\u043b\u0443\u0447\u0430\u0435, \u0431\u0443\u0434\u044c\u0442\u0435 \u043e\u0441\u0442\u043e\u0440\u043e\u0436\u043d\u044b. \u0412\u044b \u043f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u044b.</b>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 84
    const-string v3, "\u041e\u041a"

    .line 85
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;)V

    .line 84
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 97
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 98
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;)V

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 126
    :goto_0
    return v6

    .line 108
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    if-nez v2, :cond_1

    .line 109
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/StatusSNL;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 110
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "other"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    .end local v1    # "i":Landroid/content/Intent;
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v3, "statusPref"

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 117
    .local v0, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 113
    .end local v0    # "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u041f\u0440\u043e\u0446\u0435\u0441\u0441 \u0430\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441\u0430 \u0443\u0436\u0435 \u0437\u0430\u043f\u0443\u0449\u0435\u043d"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v3, "statusPref"

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 122
    .restart local v0    # "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 123
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V

    goto :goto_0
.end method
