.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;
.super Ljava/lang/Object;
.source "CoffeeOnlineFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    if-ne v2, v3, :cond_0

    .line 90
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v2, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 92
    const-string v3, "\u0412\u044b \u0442\u043e\u0447\u043d\u043e \u0445\u043e\u0442\u0438\u0442\u0435 \u0431\u044b\u0442\u044c Online?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 94
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 95
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;)V

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 102
    const-string v3, "\u0422\u043e\u0447\u043d\u0435\u0435 \u043d\u0435 \u0431\u044b\u0432\u0430\u0435\u0442"

    .line 103
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;)V

    .line 102
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 117
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u0427\u0435\u0440\u0435\u0437 45 \u0441\u0435\u043a\u0443\u043d\u0434 \u0412\u044b \u0432 offline"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 129
    const/4 v2, 0x1

    return v2

    .line 119
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
