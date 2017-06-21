.class public Lcom/vkcoffee/android/PasswordCoffee;
.super Ljava/lang/Object;
.source "PasswordCoffee.java"


# static fields
.field private static final MAX_INPUT:I = 0x4

.field private static activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "param"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sput-object p1, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    .line 26
    if-nez p2, :cond_1

    .line 27
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->pinCode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->entered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/PinCodeViewCoffee;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 33
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->isEmptyPinCode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/vkcoffee/android/PasswordCoffee;->setPinCode()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/PasswordCoffee;->changePinCode()V

    goto :goto_0

    .line 35
    :cond_3
    const-string v1, "\u0412\u0445\u043e\u0434\u044f\u0449\u0438\u0439 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440 \u0432 \u043a\u043e\u043d\u0441\u0442\u0440\u0443\u043a\u0442\u043e\u0440 \u043d\u0435\u0432\u0435\u0440\u043d\u044b\u0439"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/PasswordCoffee;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vkcoffee/android/PasswordCoffee;->changePinCode()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/PasswordCoffee;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/vkcoffee/android/PasswordCoffee;->setPinCode()V

    return-void
.end method

.method private changePinCode()V
    .locals 8

    .prologue
    const/16 v6, 0x3012

    .line 40
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    sget-object v5, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "alertDialog":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v5, "\u0418\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0435 pin-\u043a\u043e\u0434\u0430"

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 42
    const-string v5, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435! Pin-\u043a\u043e\u0434 \u0434\u043e\u043b\u0436\u0435\u043d \u0438\u043c\u0435\u0442\u044c \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 \u0438 \u043d\u0435 \u043c\u0435\u043d\u0435\u0435 4 \u0437\u043d\u0430\u043a\u043e\u0432"

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    new-instance v3, Landroid/widget/EditText;

    sget-object v5, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    .local v3, "oldPinCode":Landroid/widget/EditText;
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 46
    new-instance v4, Landroid/widget/EditText;

    sget-object v5, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 47
    .local v4, "setPinCode":Landroid/widget/EditText;
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 48
    new-instance v1, Landroid/widget/EditText;

    sget-object v5, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    invoke-direct {v1, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, "confirmSetPinCode":Landroid/widget/EditText;
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 51
    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 52
    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    .line 53
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 55
    new-instance v2, Landroid/widget/LinearLayout;

    sget-object v5, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v2, "ll":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    const-string v5, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u0441\u0442\u0430\u0440\u044b\u0439 pin-\u043a\u043e\u0434"

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 62
    const-string v5, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u043d\u043e\u0432\u044b\u0439 pin-\u043a\u043e\u0434"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 63
    const-string v5, "\u041f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u0435 \u043d\u043e\u0432\u044b\u0439 pin-\u043a\u043e\u0434"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 65
    const-string v6, "\u041e\u0442\u043c\u0435\u043d\u0430"

    new-instance v7, Lcom/vkcoffee/android/PasswordCoffee$1;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/PasswordCoffee$1;-><init>(Lcom/vkcoffee/android/PasswordCoffee;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 70
    const-string v6, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c"

    new-instance v7, Lcom/vkcoffee/android/PasswordCoffee$2;

    invoke-direct {v7, p0, v3, v4, v1}, Lcom/vkcoffee/android/PasswordCoffee$2;-><init>(Lcom/vkcoffee/android/PasswordCoffee;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 87
    return-void
.end method

.method private setPinCode()V
    .locals 7

    .prologue
    const/16 v5, 0x3012

    .line 90
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    sget-object v4, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "alertDialog":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v4, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0430 pin-\u043a\u043e\u0434\u0430"

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    const-string v4, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435! Pin-\u043a\u043e\u0434 \u0434\u043e\u043b\u0436\u0435\u043d \u0438\u043c\u0435\u0442\u044c \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 \u0438 \u043d\u0435 \u043c\u0435\u043d\u0435\u0435 4 \u0437\u043d\u0430\u043a\u043e\u0432"

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v3, Landroid/widget/EditText;

    sget-object v4, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 95
    .local v3, "setPinCode":Landroid/widget/EditText;
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 96
    new-instance v1, Landroid/widget/EditText;

    sget-object v4, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, "confirmSetPinCode":Landroid/widget/EditText;
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 99
    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 100
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 102
    new-instance v2, Landroid/widget/LinearLayout;

    sget-object v4, Lcom/vkcoffee/android/PasswordCoffee;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 103
    .local v2, "ll":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    const-string v4, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435 pin-\u043a\u043e\u0434"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 107
    const-string v4, "\u041f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u0435 pin-\u043a\u043e\u0434"

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 109
    const-string v5, "\u041e\u0442\u043c\u0435\u043d\u0430"

    new-instance v6, Lcom/vkcoffee/android/PasswordCoffee$3;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/PasswordCoffee$3;-><init>(Lcom/vkcoffee/android/PasswordCoffee;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 114
    const-string v5, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c"

    new-instance v6, Lcom/vkcoffee/android/PasswordCoffee$4;

    invoke-direct {v6, p0, v3, v1}, Lcom/vkcoffee/android/PasswordCoffee$4;-><init>(Lcom/vkcoffee/android/PasswordCoffee;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    return-void
.end method
