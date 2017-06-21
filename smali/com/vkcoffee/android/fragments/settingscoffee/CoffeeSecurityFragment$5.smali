.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$5;
.super Ljava/lang/Object;
.source "CoffeeSecurityFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_1

    .line 124
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->onFinger()V

    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041e\u0447\u0435\u043f\u044f\u0442\u043e\u043a \u0432\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->isEmptyPinCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->offFinger()V

    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041e\u0447\u0435\u043f\u044f\u0442\u043e\u043a \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
