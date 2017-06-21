.class Lcom/vkcoffee/android/ui/MultiColumnListView$1;
.super Landroid/database/DataSetObserver;
.source "MultiColumnListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/MultiColumnListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$1;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$1;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$000(Lcom/vkcoffee/android/ui/MultiColumnListView;)V

    .line 33
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$1;->onChanged()V

    .line 37
    return-void
.end method
