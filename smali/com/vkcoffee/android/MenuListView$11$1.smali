.class Lcom/vkcoffee/android/MenuListView$11$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView$11;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/MenuListView$11;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$11$1;->this$1:Lcom/vkcoffee/android/MenuListView$11;

    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1543
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChildViewAdded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$11$1;->this$1:Lcom/vkcoffee/android/MenuListView$11;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView$11;->access$0(Lcom/vkcoffee/android/MenuListView$11;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->prepare()V

    .line 1545
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1548
    return-void
.end method
