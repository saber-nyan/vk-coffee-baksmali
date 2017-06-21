.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$5;
.super Ljava/lang/Object;
.source "CoffeeAboutFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "oid"

    const v2, -0x4ad4ef2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v1, "pid"

    const v2, 0x3145df3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-class v1, Lcom/vkcoffee/android/fragments/WikiViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 105
    const/4 v1, 0x1

    return v1
.end method
