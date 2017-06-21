.class Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AuthCheckFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AuthCheckFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceive$312(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 93
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string/jumbo v6, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "pdus"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, [Ljava/lang/Object;

    .line 76
    .local v3, "pdus":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    check-cast v6, [B

    check-cast v6, [B

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 77
    .local v5, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$000(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$100(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 78
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "msg":Ljava/lang/String;
    const-string/jumbo v6, "(?:VK|\u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435).*?([0-9]+).*"

    const/16 v7, 0x28

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 80
    .local v4, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 81
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "code":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$200(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/EditText;

    move-result-object v6

    if-nez v6, :cond_1

    .line 97
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "pdus":[Ljava/lang/Object;
    .end local v4    # "ptn":Ljava/util/regex/Pattern;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "pdus":[Ljava/lang/Object;
    .restart local v4    # "ptn":Ljava/util/regex/Pattern;
    .restart local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$200(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$200(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
