.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$1;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "onPreferenceClick"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$1;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method
