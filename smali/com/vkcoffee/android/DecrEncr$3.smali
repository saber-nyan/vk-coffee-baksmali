.class Lcom/vkcoffee/android/DecrEncr$3;
.super Ljava/lang/Object;
.source "DecrEncr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/DecrEncr;->pinCodeMessage(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$dialoglayout:Landroid/view/View;

.field private final synthetic val$peer:I

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/Activity;ILjava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$dialoglayout:Landroid/view/View;

    iput-object p2, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$peer:I

    iput-object p4, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$dialog:Landroid/app/Dialog;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$dialoglayout:Landroid/view/View;

    const v2, 0x7f10019d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "pinCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$activity:Landroid/app/Activity;

    const-string v2, "\u041f\u0443\u0441\u0442\u043e\u0439 \u043a\u043b\u044e\u0447 :("

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 274
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {v0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$activity:Landroid/app/Activity;

    const-string v2, "\u041a\u043b\u044e\u0447 \u0434\u043e\u043b\u0436\u0435\u043d \u0441\u043e\u0441\u0442\u043e\u044f\u0442\u044c \u0442\u043e\u043b\u044c\u043a\u043e \u0438\u0437 \u0446\u0438\u0444\u0440"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 252
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$activity:Landroid/app/Activity;

    const-string v2, "\u041a\u043b\u044e\u0447 \u0434\u043e\u0436\u0435\u043d \u0431\u044b\u0442\u044c \u043d\u0435 \u043c\u0435\u043d\u0435\u0435 4-\u0445 \u0437\u043d\u0430\u043a\u043e\u0432"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_3

    .line 255
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$activity:Landroid/app/Activity;

    const-string v2, "\u041a\u043b\u044e\u0447 \u0434\u043e\u0436\u0435\u043d \u0431\u044b\u0442\u044c \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 8-\u043c\u0438 \u0437\u043d\u0430\u043a\u043e\u0432"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 258
    :cond_3
    iget v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$peer:I

    invoke-static {v1, v0}, Lcom/vkcoffee/android/DecrEncr;->setKey(ILjava/lang/String;)V

    .line 259
    sget-object v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatFragmentInst:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    if-eqz v1, :cond_4

    .line 260
    sget-object v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatFragmentInst:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 261
    sget-object v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatFragmentInst:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    const/16 v2, -0x37

    invoke-virtual {v1, v2, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updSub(II)V

    .line 262
    sget-object v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatFragmentInst:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->invalidateOptionsMenu()V

    .line 265
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$text:Ljava/lang/String;

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 266
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$text:Ljava/lang/String;

    iget v3, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$peer:I

    invoke-static {v1, v2, v3, v4}, Lcom/vkcoffee/android/DecrEncr;->readMessage(Landroid/app/Activity;Ljava/lang/String;IZ)V

    .line 268
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$activity:Landroid/app/Activity;

    const-string v2, "\u0428\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u0435 \u0442\u0435\u043f\u0435\u0440\u044c \u0431\u0443\u0434\u0435\u0442 \u043e\u0441\u0443\u0449\u0435\u0441\u0442\u0432\u043b\u044f\u0442\u044c\u0441\u044f \u0441 \u044d\u0442\u0438\u043c \u043a\u043b\u044e\u0447\u0435\u043c :)"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 271
    iget-object v1, p0, Lcom/vkcoffee/android/DecrEncr$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method
