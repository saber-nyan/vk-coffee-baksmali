.class Lcom/vkcoffee/android/PhotoViewer$8;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->initView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$8;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$8;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/PhotoViewer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
