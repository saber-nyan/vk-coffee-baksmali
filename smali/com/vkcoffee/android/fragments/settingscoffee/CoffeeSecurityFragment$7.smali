.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;
.super Ljava/lang/Object;
.source "CoffeeSecurityFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->timeLock(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$numberPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;Landroid/widget/NumberPicker;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;->val$numberPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;->val$acts:Ljava/util/ArrayList;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 264
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;->val$numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    .line 265
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 267
    .local v1, "choice":I
    const-string v2, "2 \u0441\u0435\u043a\u0443\u043d\u0434\u044b"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 268
    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->STRONG:J

    invoke-static {v2, v3}, Lcom/vkcoffee/android/PinCodeData;->setTime(J)V

    .line 284
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    const-string v3, "timeLock"

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->access$3(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    return-void

    .line 269
    :cond_1
    const-string v2, "20 \u0441\u0435\u043a\u0443\u043d\u0434"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 270
    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->TWENTY_SECONDS:J

    invoke-static {v2, v3}, Lcom/vkcoffee/android/PinCodeData;->setTime(J)V

    goto :goto_0

    .line 271
    :cond_2
    const-string v2, "1 \u043c\u0438\u043d\u0443\u0442\u0430"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 272
    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->ONE_MINUTE:J

    invoke-static {v2, v3}, Lcom/vkcoffee/android/PinCodeData;->setTime(J)V

    goto :goto_0

    .line 273
    :cond_3
    const-string v2, "5 \u043c\u0438\u043d\u0443\u0442"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 274
    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->FIVE_MINUTES:J

    invoke-static {v2, v3}, Lcom/vkcoffee/android/PinCodeData;->setTime(J)V

    goto :goto_0

    .line 275
    :cond_4
    const-string v2, "\u041f\u043e\u043b\u0447\u0430\u0441\u0430"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 276
    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->HALF_HOUR:J

    invoke-static {v2, v3}, Lcom/vkcoffee/android/PinCodeData;->setTime(J)V

    goto :goto_0

    .line 277
    :cond_5
    const-string v2, "1 \u0447\u0430\u0441"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 278
    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->ONE_HOUR:J

    invoke-static {v2, v3}, Lcom/vkcoffee/android/PinCodeData;->setTime(J)V

    goto :goto_0

    .line 279
    :cond_6
    const-string v2, "6 \u0447\u0430\u0441\u043e\u0432"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 280
    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->SIX_HOURS:J

    invoke-static {v2, v3}, Lcom/vkcoffee/android/PinCodeData;->setTime(J)V

    goto :goto_0

    .line 281
    :cond_7
    const-string v2, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0432\u0440\u0443\u0447\u043d\u0443\u044e \u0438 \u043f\u0440\u0438 \u043d\u043e\u0432\u043e\u043c \u0437\u0430\u043f\u0443\u0441\u043a\u0435"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 282
    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->MANUAL:J

    invoke-static {v2, v3}, Lcom/vkcoffee/android/PinCodeData;->setTime(J)V

    goto :goto_0
.end method
