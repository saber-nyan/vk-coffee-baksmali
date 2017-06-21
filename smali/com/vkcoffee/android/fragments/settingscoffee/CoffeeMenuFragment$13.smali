.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$13;
.super Ljava/lang/Object;
.source "CoffeeMenuFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$13;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 202
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->setChangedPos()V

    .line 203
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    if-ne v0, v1, :cond_0

    .line 204
    const-string v0, "UNREAD"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MenuListData;->saveResult(Ljava/lang/String;I)V

    .line 208
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_0
    const-string v0, "UNREAD"

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListData;->returnPos(Ljava/lang/String;)V

    goto :goto_0
.end method
