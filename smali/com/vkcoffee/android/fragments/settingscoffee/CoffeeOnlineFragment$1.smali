.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CoffeeOnlineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    sget-object v0, Lcom/vkcoffee/android/Platform;->CHANGE_PLATFORM:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    .line 51
    :cond_0
    return-void
.end method
