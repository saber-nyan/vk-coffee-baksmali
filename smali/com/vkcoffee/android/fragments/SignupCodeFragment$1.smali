.class Lcom/vkcoffee/android/fragments/SignupCodeFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SignupCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SignupCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SignupCodeFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string/jumbo v6, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "pdus"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, [Ljava/lang/Object;

    .line 46
    .local v3, "pdus":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    check-cast v6, [B

    check-cast v6, [B

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 47
    .local v5, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->access$000(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 48
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "msg":Ljava/lang/String;
    const-string/jumbo v6, ": ([0-9a-z]+).+(?:VK|\u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435)"

    const/16 v7, 0x28

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 50
    .local v4, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 51
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "code":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->access$100(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f1003b0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->access$200(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 55
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->access$200(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v6

    invoke-interface {v6}, Lcom/vkcoffee/android/functions/VoidF0;->f()V

    .line 60
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "pdus":[Ljava/lang/Object;
    .end local v4    # "ptn":Ljava/util/regex/Pattern;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    return-void
.end method
