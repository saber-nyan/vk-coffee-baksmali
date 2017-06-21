.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;
.super Ljava/lang/Object;
.source "CoffeeInternalDebugFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getEditorString()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;

.field private final synthetic val$key:Landroid/widget/EditText;

.field private final synthetic val$preference:Landroid/widget/EditText;

.field private final synthetic val$value:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->val$preference:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->val$key:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->val$value:Landroid/widget/EditText;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->val$preference:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->val$key:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->val$value:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ":("

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 495
    :goto_0
    return-void

    .line 489
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->val$preference:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 490
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->val$key:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;->val$value:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
