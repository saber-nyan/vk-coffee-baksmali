.class Lcom/vkcoffee/android/PasswordCoffee$2;
.super Ljava/lang/Object;
.source "PasswordCoffee.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PasswordCoffee;->changePinCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PasswordCoffee;

.field private final synthetic val$confirmSetPinCode:Landroid/widget/EditText;

.field private final synthetic val$oldPinCode:Landroid/widget/EditText;

.field private final synthetic val$setPinCode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PasswordCoffee;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->this$0:Lcom/vkcoffee/android/PasswordCoffee;

    iput-object p2, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$oldPinCode:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$setPinCode:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$confirmSetPinCode:Landroid/widget/EditText;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$oldPinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$setPinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$confirmSetPinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 73
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/PasswordCoffee;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0435 \u043a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u0437\u043d\u0430\u043a\u043e\u0432"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->this$0:Lcom/vkcoffee/android/PasswordCoffee;

    invoke-static {v0}, Lcom/vkcoffee/android/PasswordCoffee;->access$1(Lcom/vkcoffee/android/PasswordCoffee;)V

    .line 85
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$oldPinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/PinCodeData;->checkNormalPinCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$setPinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$confirmSetPinCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$setPinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/PinCodeData;->setPinCode(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkcoffee.android.PIN_UPDATE_LABEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->val$oldPinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/PinCodeData;->checkNormalPinCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    invoke-static {}, Lcom/vkcoffee/android/PasswordCoffee;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u0421\u0442\u0430\u0440\u044b\u0439 pin-\u043a\u043e\u0434 \u043d\u0435 \u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u044b\u0439"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->this$0:Lcom/vkcoffee/android/PasswordCoffee;

    invoke-static {v0}, Lcom/vkcoffee/android/PasswordCoffee;->access$1(Lcom/vkcoffee/android/PasswordCoffee;)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/PasswordCoffee;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Pin-\u043a\u043e\u0434 \u043d\u0435 \u0441\u043e\u0432\u043f\u0430\u0434\u0430\u0435\u0442 \u0441 \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0436\u0434\u0435\u043d\u0438\u0435\u043c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    iget-object v0, p0, Lcom/vkcoffee/android/PasswordCoffee$2;->this$0:Lcom/vkcoffee/android/PasswordCoffee;

    invoke-static {v0}, Lcom/vkcoffee/android/PasswordCoffee;->access$1(Lcom/vkcoffee/android/PasswordCoffee;)V

    goto :goto_0
.end method
