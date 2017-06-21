.class Lcom/vkcoffee/android/MenuListView$14;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView;->update(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;

.field private final synthetic val$_friends:Ljava/util/List;

.field private final synthetic val$_groups:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    iput-object p2, p0, Lcom/vkcoffee/android/MenuListView$14;->val$_friends:Ljava/util/List;

    iput-object p3, p0, Lcom/vkcoffee/android/MenuListView$14;->val$_groups:Ljava/util/List;

    .line 1739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1741
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "username"

    const-string v3, "DELETED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MenuListView;->access$8(Lcom/vkcoffee/android/MenuListView;Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MenuListView;->access$6(Lcom/vkcoffee/android/MenuListView;Ljava/lang/String;)V

    .line 1743
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userstatus"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MenuListView;->access$28(Lcom/vkcoffee/android/MenuListView;Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1745
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$14;->val$_friends:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1746
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1747
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$14;->val$_groups:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1748
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$14;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$13(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->notifyDataSetChanged()V

    .line 1749
    return-void
.end method
