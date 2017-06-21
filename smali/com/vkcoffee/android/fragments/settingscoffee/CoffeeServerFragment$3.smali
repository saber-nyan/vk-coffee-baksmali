.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$3;
.super Ljava/lang/Object;
.source "CoffeeServerFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "var1"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;Ljava/lang/Object;)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method
