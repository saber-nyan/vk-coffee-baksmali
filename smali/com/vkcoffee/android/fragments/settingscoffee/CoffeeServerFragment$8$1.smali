.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8$1;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "CoffeeServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;

    .line 198
    invoke-direct {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    move-result-object v1

    const-string v2, "publicTest"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 204
    .local v0, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 205
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    const-string v2, "0"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    move-result-object v2

    const-string v3, "publicTest"

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 210
    .local v1, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    const v3, -0x4ad4ef2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-class v2, Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 214
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u0412\u044b \u043d\u0435 \u043c\u043e\u0436\u0435\u0442\u0435 \u043f\u0440\u0438\u043d\u0438\u043c\u0430\u0442\u044c \u0443\u0447\u0430\u0441\u0442\u0438\u0435 \u0432 \u0442\u0435\u0441\u0442\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0438, \u0442\u0430\u043a \u043a\u0430\u043a \u043d\u0435 \u043f\u043e\u0434\u043f\u0438\u0441\u0430\u043d\u044b \u043d\u0430 \u043f\u0443\u0431\u043b\u0438\u0447\u043d\u0443\u044e \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443 \u043c\u043e\u0434\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u0438"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 222
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    :goto_0
    return-void

    .line 216
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "OTA"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 217
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 218
    const-string v3, "publicTest"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 219
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
