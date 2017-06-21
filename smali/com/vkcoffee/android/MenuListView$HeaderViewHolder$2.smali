.class Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$2;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$2;->this$1:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 432
    invoke-static {p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->start(Landroid/view/View;)V

    .line 433
    const/4 v0, 0x1

    return v0
.end method
