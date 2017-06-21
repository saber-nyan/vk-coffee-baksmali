.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$2;
.super Ljava/lang/Object;
.source "CoffeeOnlineFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$2$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$2$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u0412\u044b \u0432 Online \u0440\u0435\u0436\u0438\u043c\u0435 :)"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    return-void
.end method
