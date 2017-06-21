.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    if-ne v3, v4, :cond_0

    .line 144
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v3, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 146
    const-string v4, "\u0412\u044b \u0442\u043e\u0447\u043d\u043e \u0445\u043e\u0442\u0438\u0442\u0435 \u0431\u044b\u0442\u044c Online?"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 148
    const-string v4, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 149
    new-instance v5, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;)V

    .line 148
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 158
    const-string v4, "\u0422\u043e\u0447\u043d\u0435\u0435 \u043d\u0435 \u0431\u044b\u0432\u0430\u0435\u0442"

    .line 159
    new-instance v5, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5$2;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;)V

    .line 158
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 176
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 184
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    const-string v4, "stayOnlinePref"

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 179
    .local v2, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v2, v5}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 180
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->access$3(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    .line 181
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    goto :goto_0
.end method
