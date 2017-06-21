.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$3;
.super Ljava/lang/Object;
.source "CoffeeOnlineFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$3;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOffline()V

    .line 123
    return-void
.end method
