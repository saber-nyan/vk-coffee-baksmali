.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;
.super Ljava/lang/Object;
.source "CoffeeDebugInfFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-static {}, Lcom/vkcoffee/android/C2DM;->stop()Z

    move-result v1

    .line 97
    .local v1, "stop":Z
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;

    .line 99
    .local v2, "this0":Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;
    if-eqz v1, :cond_0

    .line 100
    const-string v0, "\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f GCM \u043e\u0442\u043c\u0435\u043d\u0435\u043d\u0430"

    .line 105
    .local v0, "s":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 106
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "gcm"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;)V

    .line 113
    const-wide/16 v6, 0x3e8

    .line 107
    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    const/4 v3, 0x1

    return v3

    .line 103
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string v0, "GCM \u0438 \u0442\u0430\u043a \u043d\u0435 \u0437\u0430\u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u043e\u0432\u0430\u043d"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method
