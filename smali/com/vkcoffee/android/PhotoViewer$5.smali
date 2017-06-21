.class Lcom/vkcoffee/android/PhotoViewer$5;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 367
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$5;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$5;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/PhotoViewer;->onPrepareDismiss()V

    .line 371
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$5;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/PhotoViewer;->dismiss()V

    .line 372
    return-void
.end method
