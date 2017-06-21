.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$5;
.super Ljava/lang/Object;
.source "CoffeeBotFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->setStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

.field private final synthetic val$statusSet:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$5;->val$statusSet:Landroid/widget/EditText;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$5;->val$statusSet:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041a\u0430\u043a-\u0442\u043e \u043f\u0443\u0441\u0442\u043e..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    :goto_0
    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "StatusSNL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    const-string v1, "status"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$5;->val$statusSet:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->access$3(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V

    goto :goto_0
.end method
