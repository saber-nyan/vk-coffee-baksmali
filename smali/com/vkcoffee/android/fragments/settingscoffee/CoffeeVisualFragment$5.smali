.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$5;
.super Ljava/lang/Object;
.source "CoffeeVisualFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$5;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->clearSett(Landroid/app/Activity;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
