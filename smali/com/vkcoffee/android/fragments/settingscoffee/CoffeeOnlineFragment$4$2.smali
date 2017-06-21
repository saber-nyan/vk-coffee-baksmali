.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$2;
.super Ljava/lang/Object;
.source "CoffeeOnlineFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 155
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    move-result-object v2

    const-string v3, "stayOnlinePref"

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 156
    .local v0, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 157
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    .line 160
    sget-object v2, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 161
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/OnlineSNL;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 162
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "online"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 167
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u041f\u0440\u043e\u0446\u0435\u0441\u0441 SNL \u0443\u0436\u0435 \u0437\u0430\u043f\u0443\u0449\u0435\u043d"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
