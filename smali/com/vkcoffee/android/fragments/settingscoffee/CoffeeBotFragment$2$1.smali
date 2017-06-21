.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2$1;
.super Ljava/lang/Object;
.source "CoffeeBotFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 87
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "StatusSNL"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "warnOk"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    sget-object v1, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/StatusSNL;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 90
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "other"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u041f\u0440\u043e\u0446\u0435\u0441\u0441 \u0430\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441\u0430 \u0443\u0436\u0435 \u0437\u0430\u043f\u0443\u0449\u0435\u043d"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
