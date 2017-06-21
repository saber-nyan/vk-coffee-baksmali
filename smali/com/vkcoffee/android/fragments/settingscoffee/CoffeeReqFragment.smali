.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeReqFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->copy(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->openChat(ILandroid/app/Activity;)V

    return-void
.end method

.method private canCopy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "<br><i>\u041f\u0440\u0438 \u043d\u0430\u0436\u0430\u0442\u0438\u0438 \u0440\u0435\u043a\u0432\u0438\u0437\u0438\u0442\u0430, \u043e\u043d \u043a\u043e\u043f\u0438\u0440\u0443\u0435\u0442\u0441\u044f \u0432 \u0431\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0435\u043d\u0430</i>"

    return-object v0
.end method

.method private card()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->p1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (MasterCard)<br><i>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->p2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</i>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copy(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    .line 172
    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const-string v0, "\u0420\u0435\u043a\u0432\u0438\u0437\u0438\u0442 \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d \u0432 \u0431\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0435\u043d\u0430"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    return-void
.end method

.method private date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "<i>\u0417\u0430\u044f\u0432\u043a\u0438 \u043c\u043e\u0433\u0443\u0442 \u043e\u0431\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u0442\u044c\u0441\u044f \u043e\u0442 1-\u0433\u043e \u0434\u043e 5-\u0442\u0438 \u0434\u043d\u0435\u0439. \u0412 \u0441\u0440\u0435\u0434\u043d\u0435\u043c \u0432\u0441\u0451 \u0433\u043e\u0442\u043e\u0432\u043e \u0432 \u0442\u0435\u0447\u0435\u043d\u0438\u0438 2-\u0445 \u0434\u043d\u0435\u0439.<br>\u0415\u0441\u043b\u0438 \u0412\u044b \u043d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u0438 \u0433\u0430\u043b\u043e\u0447\u043a\u0443 \u0432 \u0442\u0435\u0447\u0435\u043d\u0438\u0438 \u044d\u0442\u043e\u0433\u043e \u043f\u0440\u043e\u043c\u0435\u0436\u0443\u0442\u043a\u0430, \u043f\u043e\u0434\u0430\u0439\u0442\u0435 \u0437\u0430\u044f\u0432\u043a\u0443 \u0435\u0449\u0435 \u0440\u0430\u0437.</i>"

    return-object v0
.end method

.method private inf0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "<b>VK Coffee</b><i> - \u043f\u0440\u043e\u0435\u043a\u0442 \u043e\u0441\u043d\u043e\u0432\u0430\u043d \u043d\u0430 \u044d\u043d\u0442\u0443\u0437\u0438\u0430\u0437\u043c\u0435 \u0430\u0432\u0442\u043e\u0440\u0430. \u041e\u0434\u043d\u0430\u043a\u043e \u0430\u0432\u0442\u043e\u0440-\u0441\u0442\u0443\u0434\u0435\u043d\u0442 \u0441\u0438\u043b\u044c\u043d\u043e \u043d\u0443\u0436\u0434\u0430\u0435\u0442\u0441\u044f \u0432 \u043c\u0430\u0442\u0435\u0440\u0438\u0430\u043b\u044c\u043d\u043e\u0439 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u043a\u0435. \u0418\u0431\u043e \u0434\u0430\u0436\u0435 \u0441\u043e\u0434\u0435\u0440\u0436\u0430\u043d\u0438\u0435 \u043c\u043e\u0434\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u0438 \u0442\u0440\u0435\u0431\u0443\u0435\u0442 \u043c\u0430\u0442\u0435\u0440\u0438\u0430\u043b\u044c\u043d\u044b\u0445 \u0432\u043b\u043e\u0436\u0435\u043d\u0438\u0439, \u0443\u0436\u0435 \u043d\u0435 \u0433\u043e\u0432\u043e\u0440\u044f \u043e \u0440\u0435\u0430\u043b\u0438\u044f\u0445 \u0431\u044b\u0442\u0438\u044f.</i>"

    return-object v0
.end method

.method private inf1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "<b>VK Coffee \u043d\u0435 \u043a\u043e\u043c\u043c\u0435\u0440\u0447\u0435\u0441\u043a\u0438\u0439 \u043f\u0440\u043e\u0435\u043a\u0442 \u0438 \u0440\u0430\u0441\u043f\u043e\u0441\u0442\u0440\u0430\u043d\u044f\u0435\u0442\u0441\u044f \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u043e!</b><br><i>\u0415\u0441\u043b\u0438 \u0412\u0430\u043c \u043f\u0440\u043e\u0434\u0430\u044e\u0442 APK \u0444\u0430\u0439\u043b \u043c\u043e\u0434\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u0438: \u0441\u043e\u043e\u0431\u0449\u0438\u0442\u0435 \u0430\u0432\u0442\u043e\u0440\u0443 \u043c\u043e\u0434\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u0438 \u0438 \u0437\u043d\u0430\u0439\u0442\u0435, \u044d\u0442\u043e \u043c\u043e\u0448\u0435\u043d\u043d\u0438\u043a\u0438.</i>"

    return-object v0
.end method

.method private inf2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "<i>\u0421\u043d\u044f\u0442\u0438\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0439 \u0441\u043e \u0432\u0441\u0435\u0445 \u0444\u0443\u043d\u043a\u0446\u0438\u0439 \u043f\u0440\u043e\u0438\u0441\u0445\u043e\u0434\u0438\u0442 \u043f\u0440\u0438 \u043e\u043a\u0430\u0437\u0430\u043d\u0438\u0438 \u043c\u0430\u0442\u0435\u0440\u0438\u0430\u043b\u044c\u043d\u043e\u0439 \u043f\u043e\u043c\u043e\u0449\u0438 \u0441\u0443\u043c\u043c\u043e\u0439 <b>\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u0438 3</b> \u0438 \u043f\u043e\u0434\u0430\u0447\u0438 \u0437\u0430\u044f\u0432\u043a\u0438.</i>"

    return-object v0
.end method

.method private inf3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "<b>\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f 3</b><br><i>\u041a\u0430\u0436\u0434\u044b\u0439, \u043a\u0442\u043e \u043f\u043e\u0436\u0435\u0440\u0442\u0432\u043e\u0432\u0430\u043b \u0432 \u0441\u0443\u043c\u043c\u0435 \u0431\u043e\u043b\u044c\u0448\u0435 50 \u0433\u0440\u0438\u0432\u0435\u043d / 120 \u0440\u0443\u0431\u043b\u0435\u0439, \u043f\u043e\u043b\u0443\u0447\u0430\u0435\u0442 \u0432\u0435\u0440\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u043e\u043d\u043d\u0443\u044e \u0433\u0430\u043b\u043e\u0447\u043a\u0443 \u0432 VK Coffee.</i>"

    return-object v0
.end method

.method private inf4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "<b>\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f 2</b><br><i>\u0423 \u043a\u043e\u0433\u043e \u0432 \u0441\u0443\u043c\u043c\u0435 70 \u0433\u0440\u0438\u0432\u0435\u043d / 170 \u0440\u0443\u0431\u043b\u0435\u0439 - \u0431\u0443\u0434\u0435\u0442 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d \u0432 \u0441\u043f\u0438\u0441\u043e\u043a \u043c\u0435\u0446\u0435\u043d\u0430\u0442\u043e\u0432 \u043f\u0440\u043e\u0435\u043a\u0442\u0430, \u043a\u043e\u0442\u043e\u0440\u044b\u0439 \u0440\u0430\u0441\u043f\u043e\u043b\u043e\u0436\u0435\u043d \u0432 \u0440\u0430\u0437\u0434\u0435\u043b\u0435 \"\u041e \u043f\u0440\u043e\u0435\u043a\u0442\u0435 VK Coffee\" .</i>"

    return-object v0
.end method

.method private inf5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "<b>\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f 1</b><br><i>\u041f\u0440\u0438 \u043f\u043e\u0436\u0435\u0440\u0442\u0432\u043e\u0432\u0430\u043d\u0438\u0438 \u0432 \u0441\u0443\u043c\u043c\u0435 \u0431\u043e\u043b\u0435\u0435 200 \u0433\u0440\u0438\u0432\u0435\u043d / 500 \u0440\u0443\u0431\u043b\u0435\u0439 - \u043f\u0440\u0438\u0441\u0432\u0430\u0438\u0432\u0430\u0435\u0442\u0441\u044f \u0437\u043d\u0430\u0447\u043e\u043a \u043a\u043e\u0444\u0435.</i>"

    return-object v0
.end method

.method private infQIWI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "<b>\u041d\u0430 \u044d\u0442\u0438 \u0441\u0447\u0435\u0442\u0430 \u043b\u0443\u0447\u0448\u0435 \u0432\u0441\u0435\u0433\u043e \u0434\u0435\u043b\u0430\u0442\u044c \u043f\u0435\u0440\u0435\u0432\u043e\u0434\u044b \u0433\u0440\u0430\u0436\u0434\u0430\u043d\u0430\u043c \u0420\u0424, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u044e\u0442 \u0421\u0431\u0435\u0440\u0411\u0430\u043d\u043a, \u042f\u043d\u0434\u0435\u043a\u0441.\u0414\u0435\u043d\u044c\u0433\u0438 \u0438 \u0442.\u043f.</b>"

    return-object v0
.end method

.method private infWebMoney()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "<b>\u041d\u0430 \u044d\u0442\u0438 \u0441\u0447\u0435\u0442\u0430 \u043b\u0443\u0447\u0448\u0435 \u0432\u0441\u0435\u0433\u043e \u0434\u0435\u043b\u0430\u0442\u044c \u043f\u0435\u0440\u0435\u0432\u043e\u0434\u044b \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044f\u043c WebMoney \u0438\u043b\u0438 \u0436\u0435 \u0447\u0435\u0440\u0435\u0437 \u0441\u0435\u0440\u0432\u0438\u0441\u044b/\u0442\u0435\u0440\u043c\u0438\u043d\u0430\u043b\u044b \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u044e\u0442 WebMoney</b>"

    return-object v0
.end method

.method private openChat(ILandroid/app/Activity;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    const v3, 0x77359400

    .line 176
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, "progress":Landroid/app/ProgressDialog;
    const v2, 0x7f080293

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 179
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 180
    if-ge p1, v3, :cond_0

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;

    invoke-direct {v2, p0, p2, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    invoke-static {v0, v2}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 214
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 202
    :cond_0
    sub-int v2, p1, v3

    new-instance v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;Landroid/app/Activity;Landroid/app/ProgressDialog;I)V

    invoke-static {v2, v3}, Lcom/vkcoffee/android/data/Messages;->getChatUsers(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_0
.end method

.method private priv24()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "<b>\u041d\u0430 \u044d\u0442\u043e\u0442 \u0441\u0447\u0435\u0442 \u043b\u0443\u0447\u0448\u0435 \u0432\u0441\u0435\u0433\u043e \u0434\u0435\u043b\u0430\u0442\u044c \u043f\u0435\u0440\u0435\u0432\u043e\u0434 \u0433\u0440\u0430\u0436\u0434\u0430\u043d\u0430\u043c \u0423\u043a\u0440\u0430\u0438\u043d\u044b \u0447\u0435\u0440\u0435\u0437 \u0443\u043a\u0440\u0430\u0438\u043d\u0441\u043a\u0438\u0435 \u0431\u0430\u043d\u043a\u0438 \u0438 \u041f\u0440\u0438\u0432\u0430\u0442\u0411\u0430\u043d\u043a</b>"

    return-object v0
.end method

.method private req1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->q1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private req2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->q2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (VISA)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reqInf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "<b>\u0415\u0441\u043b\u0438 \u0412\u044b \u0432\u043d\u0435\u0441\u043b\u0438 \u0441\u0443\u043c\u043c\u0443, \u043a\u043e\u0442\u043e\u0440\u0430\u044f \u043f\u043e\u043f\u0430\u0434\u0430\u0435\u0442 \u0432 \u043e\u0434\u043d\u0443 \u0438\u0437 \u043a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u0439, \u043e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u043e \u043f\u043e\u0434\u0430\u0439\u0442\u0435 \u0437\u0430\u044f\u0432\u043a\u0443. \u0412 \u0437\u0430\u044f\u0432\u043a\u0435 \u0434\u043e\u043b\u0436\u0435\u043d \u0431\u044b\u0442\u044c \u0441\u043a\u0440\u0438\u043d\u0448\u043e\u0442/\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u043f\u043b\u0430\u0442\u0435\u0436\u0430.</b>"

    return-object v0
.end method

.method private wmr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->w2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wmu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->w3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wmz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->w1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->addPreferencesFromResource(I)V

    .line 29
    const-string v0, "inf0"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->inf0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 30
    const-string v0, "inf1"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->inf1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    const-string v0, "inf2"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->inf2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 33
    const-string v0, "infQIWI"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->infQIWI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->canCopy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 34
    const-string v0, "req1"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->req1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 35
    const-string v0, "req1"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 41
    const-string v0, "req2"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->req2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 42
    const-string v0, "req2"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 49
    const-string v0, "infWebMoney"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->infWebMoney()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->canCopy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    const-string v0, "wmz"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->wmz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 51
    const-string v0, "wmz"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    const-string v0, "wmr"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->wmr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    const-string v0, "wmr"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 65
    const-string v0, "wmu"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->wmu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    const-string v0, "wmu"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$5;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    const-string v0, "priv24"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->priv24()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->canCopy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    const-string v0, "card"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->card()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    const-string v0, "card"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$6;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$6;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    const-string v0, "inf3"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->inf3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    const-string v0, "inf4"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->inf4()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    const-string v0, "inf5"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->inf5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    const-string v0, "reqInf"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->reqInf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    const-string v0, "goReq"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "<b>\u041f\u043e\u0434\u0430\u0442\u044c \u0437\u0430\u044f\u0432\u043a\u0443</b>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    const-string v0, "goReq"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$7;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$7;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 96
    const-string v0, "infAdd"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->date()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method
