.class Lcom/vkcoffee/android/fragments/NewsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceive$493(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    const v1, 0x77359401

    const-string/jumbo v2, "id"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->remove(II)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 121
    :goto_1
    return-void

    .line 108
    :sswitch_0
    const-string/jumbo v5, "com.vkcoffee.android.USER_NOTIFICATIONS_ENABLE_TOP_NEWSFEED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "com.vkcoffee.android.USER_NOTIFICATIONS_HIDE_USER_NOTIFICATION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-static {p0, p2}, Lcom/vkcoffee/android/fragments/NewsFragment$1$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment$1;Landroid/content/Intent;)Ljava/lang/Runnable;

    move-result-object v0

    .line 114
    .local v0, "r":Ljava/lang/Runnable;
    const-string/jumbo v1, "isAccepted"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const-wide/16 v2, 0x190

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/ViewUtils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 117
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 108
    :sswitch_data_0
    .sparse-switch
        -0x222efeb2 -> :sswitch_1
        0x4073cd4b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
