.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4$1;
.super Ljava/lang/Object;
.source "CoffeeDebugInfFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/vkcoffee/android/C2DM;->start()V

    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeDebugInfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f GCM \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0430."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    return-void
.end method
