.class Lcom/vkcoffee/android/MenuListView$4;
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
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$4;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1081
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1082
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1083
    const-string v1, "offline"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1084
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1085
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$4;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 1086
    return-void
.end method
