.class Lcom/vkcoffee/android/MenuListView$5;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView;->setLogicOffline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$5;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1091
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1092
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1093
    const-string v1, "offline"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1094
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1095
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$5;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 1096
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/MenuListView$5$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/MenuListView$5$1;-><init>(Lcom/vkcoffee/android/MenuListView$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1102
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$5;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u0412\u044b \u0432 Online \u0440\u0435\u0436\u0438\u043c\u0435 :)"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1103
    return-void
.end method
