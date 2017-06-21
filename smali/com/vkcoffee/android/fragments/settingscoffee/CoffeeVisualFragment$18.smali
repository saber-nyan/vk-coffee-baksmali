.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;
.super Ljava/lang/Object;
.source "CoffeeVisualFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->selectLang(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$numberPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/widget/NumberPicker;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;->val$numberPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;->val$acts:Ljava/util/ArrayList;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 451
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;->val$numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    .line 452
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 454
    .local v1, "choice":I
    const-string v2, "English"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 455
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 456
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 457
    const-string v3, "langApp"

    const-string v4, "en"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 458
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->selectAlertLang()V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const-string v2, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 461
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 462
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 463
    const-string v3, "langApp"

    const-string v4, "ru"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 464
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->doRestart()V

    goto :goto_0

    .line 466
    :cond_2
    const-string v2, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 467
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 468
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 469
    const-string v3, "langApp"

    const-string v4, "uk"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 470
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->selectAlertLang()V

    goto :goto_0
.end method
