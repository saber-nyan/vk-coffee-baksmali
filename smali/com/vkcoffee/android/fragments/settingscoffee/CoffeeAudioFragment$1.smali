.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;
.super Ljava/lang/Object;
.source "CoffeeAudioFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    .line 65
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v2, "\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435!"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435, \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0439\u0442\u0435 \u044d\u0442\u0443 \u0444\u0443\u043d\u043a\u0446\u0438\u044e \u0442\u043e\u043b\u044c\u043a\u043e \u0432 \u0441\u043b\u0443\u0447\u0430\u0435 \u0435\u0441\u043b\u0438 \u0412\u0430\u0441 \u043d\u0435 \u0443\u0441\u0442\u0440\u0430\u0438\u0432\u0430\u0435\u0442 \u043c\u0435\u0441\u0442\u043e \u043d\u0430\u0445\u043e\u0436\u0434\u0435\u043d\u0438\u0435 \u043a\u044d\u0448\u0430 \u0430\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u0435\u0439.\n\n\u041c\u0443\u0437\u044b\u043a\u0430 \u0431\u0443\u0434\u0435\u0442 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u044c\u0441\u044f: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/DirSelect;->getParsedEXT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 69
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 70
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;)V

    .line 69
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 79
    const-string v3, "\u0425\u043e\u0440\u043e\u0448\u043e"

    .line 80
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;)V

    .line 79
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 89
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 94
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0411\u0443\u0434\u0435\u0442 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c\u0441\u044f: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 92
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->callRestart(Landroid/app/Activity;)V

    goto :goto_0
.end method
