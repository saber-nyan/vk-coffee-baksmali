.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;
.super Ljava/lang/Object;
.source "CoffeeInternalDebugFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->ui()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;

.field private final synthetic val$DPI:Landroid/widget/EditText;

.field private final synthetic val$heigh:Landroid/widget/EditText;

.field private final synthetic val$screenLayout:Landroid/widget/EditText;

.field private final synthetic val$width:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$DPI:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$heigh:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$width:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$screenLayout:Landroid/widget/EditText;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$DPI:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "NewDeviceUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    const-string v1, "densityDpi"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$DPI:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$heigh:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "NewDeviceUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    const-string v1, "screenHeightDp"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$heigh:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$width:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "NewDeviceUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    const-string v1, "screenWidthDp"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$width:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$screenLayout:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "NewDeviceUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 237
    const-string v1, "screenLayout"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;->val$screenLayout:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    :cond_3
    return-void
.end method
