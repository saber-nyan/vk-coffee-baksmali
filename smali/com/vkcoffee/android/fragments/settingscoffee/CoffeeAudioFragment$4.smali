.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;
.super Ljava/lang/Object;
.source "CoffeeAudioFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, -0x1

    .line 152
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, "alertDialog":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v3, "\u041f\u0430\u043f\u043a\u0430 \u0434\u043b\u044f \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u044f \u043a\u0435\u0448\u0430 \u0438 \u0444\u0430\u0439\u043b\u043e\u0432"

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 154
    new-instance v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, "input":Landroid/widget/EditText;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cacheDirCoffeeNew"

    const-string v5, "VKCoffee"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 162
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 163
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;)V

    .line 162
    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 169
    const-string v4, "\u0425\u043e\u0440\u043e\u0448\u043e"

    .line 170
    new-instance v5, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$2;

    invoke-direct {v5, p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;Landroid/widget/EditText;)V

    .line 169
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    const/4 v3, 0x1

    return v3
.end method
