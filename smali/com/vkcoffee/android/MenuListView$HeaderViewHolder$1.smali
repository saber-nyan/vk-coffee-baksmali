.class Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;-><init>(Lcom/vkcoffee/android/MenuListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$1;->this$1:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$1;->this$1:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$5(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/vkcoffee/android/MAC;->viewAccs(Landroid/app/Activity;)V

    .line 428
    return-void
.end method
