.class Lcom/vkcoffee/android/ui/WriteBar$5;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/WriteBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/WriteBar;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$5;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$5;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$5;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$5;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 277
    const/4 v0, 0x1

    return v0
.end method
