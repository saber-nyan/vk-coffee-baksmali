.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CoffeeServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    sget-object v0, Lcom/vkcoffee/android/LoadData;->UPDATED_SERVER:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    return-void
.end method
